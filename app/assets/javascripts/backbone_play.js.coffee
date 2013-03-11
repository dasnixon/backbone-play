window.BackbonePlay =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new BackbonePlay.Routers.Entries()
    Backbone.history.start(pushState: true)

$(document).ready ->
  BackbonePlay.initialize()
