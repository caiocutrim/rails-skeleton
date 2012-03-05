;(function(module){
  var ua = navigator.userAgent;

  module.addTest("opera",       !!ua.match(/opera/i));
  module.addTest("firefox",     !!ua.match(/firefox/i));
  module.addTest("webkit",      !!ua.match(/safari|chrome|iphone|ipad|ipod/i));
  module.addTest("chrome",      !!ua.match(/chrome/i));

  if (module.webkit) {
    module.addTest("iphone",    !!ua.match(/iphone/i));
    module.addTest("ipad",      !!ua.match(/ipad/i));
    module.addTest("ipod",      !!ua.match(/ipod/i));
  }

  module.addTest("ie",          !!ua.match(/msie/i));

  if (module.ie) {
    module.addTest("ie6",       !!ua.match(/msie 6/i));
    module.addTest("ie7",       !!ua.match(/msie 7/i));
    module.addTest("ie8",       !!ua.match(/msie 8/i));
    module.addTest("ie9",       !!ua.match(/msie 9/i));
    module.addTest("ie10",      !!ua.match(/msie 10/i));
    module.addTest("lt-ie8",    !!ua.match(/msie [0-7]/i));
    module.addTest("lt-ie9",    !!ua.match(/msie [0-8]/i));
    module.addTest("lt-ie10",   !!ua.match(/msie [0-9]/i));
  }
})(Modernizr);
