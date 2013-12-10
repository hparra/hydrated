/*global hydrated, Backbone, JST*/

hydrated.Views = hydrated.Views || {};

(function () {
    'use strict';

    hydrated.Views.ApplicationView = Backbone.View.extend({

        template: JST['app/scripts/templates/application.ejs']

    });

})();
