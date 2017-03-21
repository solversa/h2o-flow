H2O.MergeFramesOutput = (_, _go, _mergeFramesResult) ->

  _frameKey = _mergeFramesResult.key

  _viewFrame = ->
    _.insertAndExecuteCell 'cs', "getFrameSummary #{stringify _frameKey}"

  defer _go

  frameKey: _frameKey
  viewFrame: _viewFrame
  template: 'flow-merge-frames-output'

