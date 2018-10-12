(function(angular) {
    'use strict';

    angular.module('blog')
        .service('BlogService', ['$resource', BlogService]);

    function BlogService($resource) {
        return $resource(
            'api/internal/blogs',
            {},
            {
                query: {
                    method: 'GET',
                    isArray: true
                },
                save: {
                    method: 'POST'
                }
            }
        );
    }
})(window.angular);