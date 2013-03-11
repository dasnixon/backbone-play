class BackbonePlay.Views.Entry extends Backbone.View
  tagName: 'tr'
  template: HandlebarsTemplates['entries/entry']

  events:
    'click': 'showEntry'

  initialize: ->
    @model.on('change', @render, this) #when a model saves
    @model.on('highlight', @highlightWinner, this)

  showEntry: ->
    Backbone.history.navigate("entries/#{@model.get('id')}", true)

  highlightWinner: ->
    $('.winner').removeClass('highlight')
    @$('.winner').addClass('highlight')

  render: ->
    $(@el).html(@template(entry: @model))
    this
