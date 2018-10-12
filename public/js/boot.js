(function(angular) {
    "use strict";

    agGrid.initialiseAgGridWithAngular1(angular);

    angular.module("blog", [
        'ngResource',
        'agGrid',
        'ui.bootstrap',
        'ui.router',
        'ngFileUpload'
    ]);

})(window.angular);