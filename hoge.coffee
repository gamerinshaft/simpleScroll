class window.Hoge
  constructor: (options) ->
    @header         = options.$header
    @target         = options.$target
    @position       = options.position
    @type           = options.moveaction
    @targetThrough  = options.through
    @$window        = $(window)
    @existing       = false
    @animating      = false
    @lastPosition   = @$window.scrollTop()
    @latestPosition = @$window.scrollTop()
    @paramsCheck()
    $('.ss-header-none').css @hideParams
    $('.ss-header-exist').css @showParams

  paramsCheck: ->
    if @position == 'top'
      @showParams = 'top' : '0'
      @hideParams = 'top' : -@header.outerHeight()

    else if @position == 'bottom'
      @showParams = 'bottom' : '0'
      @hideParams = 'bottom' : -@header.outerHeight()

  isLowerThanTarget: ->
    return @$window.scrollTop() > @target.offset().top + @targetThrough

  isScrollDown: ->
    return @latestPosition - @lastPosition > -1

  hideHeader: ->
    console.log('hideheader')
    @animating = true
    @header.addClass 'ss-header-animating'
    duration = 400
    easing = 'swing'

    complete = ->
      @existing = false
      @animating = false
      @header.addClass 'ss-header-none'
      @header.removeClass 'ss-header-exist'
      @header.removeClass 'ss-animating'

    if @type == 'animate'
      $('.ss-header-exist').animate @hideParams, duration, easing, @complete

  showHeader: ->
    console.log('showheader')
    @animating = true
    @header.addClass 'ss-header-animating'
    duration = 400
    easing = 'swing'

    complete: ->
      @existing = true
      @animating = false
      @header.addClass 'ss-header-exist'
      @header.removeClass 'ss-header-none'
      @header.removeClass 'ss-header-animating'

    if @type == 'animate'
      $('.ss-header-none').animate @showParams, duration, easing, @complete

  onScroll: =>
    console.log('onscroll')
    @latestPosition = @$window.scrollTop()

    if @isLowerThanTarget()
      if @isScrollDown()
        if @existing && !@animating
          console.log('scrolluptodown')
          e = $.Event 'scrolluptodown'
          @$window.trigger e
      else
        if !@existing && !@animating
          console.log('scrolldowntoup')
          e = $.Event 'scrolldowntoup'
          @$window.trigger e
    else
      if @existing && !@animating
        console.log('beforetargetexisting')
        e = $.Event 'beforetargetexisting'
        @$window.trigger e
      else if !@existing && !@animating
        console.log('beforetargetnone')
        e = $.Event 'beforetargetnone'
        @$window.trigger e
    @lastPosition = @$window.scrollTop()



















