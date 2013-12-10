'use strict';

class hydrated.Views.Apps extends Backbone.View
    tagName: 'ul'
    className: 'webapp-list'
    render: ->
        $ul = this.$el
         # render collection items and append to parent
        @appViews = this.collection.map (obj) ->
            li = new hydrated.Views.App
                model: obj
            $li = li.render().$el
            $ul.append $li
            li
        this
