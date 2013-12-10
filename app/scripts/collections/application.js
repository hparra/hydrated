/*global hydrated, Backbone*/

hydrated.Collections = hydrated.Collections || {};

(function () {
    'use strict';

    hydrated.Collections.ApplicationCollection = Backbone.Collection.extend({

        model: hydrated.Models.ApplicationModel

    });

})();
