'use strict';

class hydrated.Views.App extends Backbone.View
    tagName: 'li'
    template: JST['app/scripts/templates/app.ejs']
    render: ->
        this.$el.html this.template this.model.toJSON()
        this
