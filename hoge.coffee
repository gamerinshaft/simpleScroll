class window.Hoge
  constructor: (options) ->
    @header         = options.$header
    @target         = options.$target
    @position       = options.position
    @type           = options.moveaction
    @targetThrough  = optinos.through
    @window         = $(window)
    @existing       = false
    @animating      = false
    @lastPosition   = @window.scrollTop()
    @latestPosition = @window.scrollTop()
    @paramsCheck

  paramsCheck: ->
    if @position == 'top'
      @showParams = 'top' : '0'
      @hideParams = 'top' : -header.outerHeight()

    else if @position == 'bottom'
      @showParams = 'bottom' : '0'
      @hideParams = 'bottom' : -header.outerHeight()