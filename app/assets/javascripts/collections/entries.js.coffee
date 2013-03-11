class BackbonePlay.Collections.Entries extends Backbone.Collection
  url: '/api/entries'

  model: BackbonePlay.Models.Entry

  drawWinner: ->
    winner = @shuffle()[0]
    winner.win() if winner
