window.hydrated =
    Models: {}
    Collections: {}
    Views: {}
    Routers: {}
    init: ->
        'use strict'

        apps = new this.Collections.Apps

        appsView = new this.Views.Apps
            collection: apps

        apps.fetch
            cache: false
            url: '/apps.json'
            success: (collection, response, options) ->
                $el = appsView.render().$el
                $('#apps').html $el
                collection
            error: (collection, response, options) ->
                console.error "Error in fectching apps.json"
                alert "There was an error retrieving apps data"

$(document).ready ->
    'use strict'
    hydrated.init();
