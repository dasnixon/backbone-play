class BackbonePlay.Views.ShowEntry extends Backbone.View
  template: HandlebarsTemplates['entries/show']

  events:
    'click .go_home': 'goHome'

  render: ->
    $(@el).html(@template(entry: @collection.attributes))
    this

  goHome: ->
    Backbone.history.navigate('', true)
