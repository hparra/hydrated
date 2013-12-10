
# why didn't browsers standardize this?
# http://stackoverflow.com/a/5158301
getParameterByName = (name) ->
    match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search)
    match && decodeURIComponent(match[1].replace(/\+/g, ' '))

window.hydrated =
    Models: {}
    Collections: {}
    Views: {}
    Routers: {}
    init: (config) ->
        'use strict'

        config = config || '/apps.json'

        apps = new this.Collections.Apps

        appsView = new this.Views.Apps
            collection: apps

        apps.fetch
            cache: false
            url: config
            success: (collection, response, options) ->
                $el = appsView.render().$el
                $('#apps').html $el
                collection
            error: (collection, response, options) ->
                msg = "Error fetching config at #{config}"
                console.error msg
                alert msg

$(document).ready ->
    'use strict'

    # get config JSON url
    config = getParameterByName("config")

    # init backbone
    hydrated.init(config);
