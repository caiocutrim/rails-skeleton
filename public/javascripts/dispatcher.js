// Dispatcher.js - jQuery Dispatcher
// Copyright (c) 2008-2011 Nando Vieira (nandovieira.com.br)
// Dual licensed under the MIT (MIT-LICENSE.txt)
// and GPL (GPL-LICENSE.txt) license

if (!window.App) {
  var App = {};
}

var Dispatcher = {
  ALIASES: {
    "create": "new",
    "update": "edit",
    "destroy": "remove"
  },

  init: function() {
    Dispatcher.run();
  },

  run: function() {
    var meta = $("head meta[name=page]")
      , noMeta = 'No meta tag found. Use something like <meta name="page" content="controller#action" />'
    ;

    if (meta.length === 0) {
      throw(noMeta);
    }

    var page = meta.attr("content").toString().split("#")
      , controllerName = page[0]
      , actionName = page[1]
    ;

    actionName = Dispatcher.ALIASES[actionName] || actionName;

    // Executed before every controller action
    if (App.before) {
      App.before();
    }

    if (App[controllerName]) {
      // Executed before any action from the current controller
      if (App[controllerName].before) {
        App[controllerName].before();
      }

      // The current action per-se
      if (App[controllerName][actionName]) {
        App[controllerName][actionName]();
      }

      // The after callback for the current controller
      if (App[controllerName].after) {
        App[controllerName].after();
      }
    }

    if (App.after) {
      App.after();
    }
  }
};

(function($){
  $(document).ready(Dispatcher.init);
})(jQuery);
