class BackbonePlay.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new BackbonePlay.Collections.Entries()
    @collection.reset($('#container').data('entries'))

  index: ->
    view = new BackbonePlay.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    view = new BackbonePlay.Views.ShowEntry(collection: @collection.get(id))
    $('#container').html(view.render().el)
