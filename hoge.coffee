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
    @showParams
    @hideParams