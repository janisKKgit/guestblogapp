(function(angular) {
    "use strict";

    angular.module('blog')
        .controller('guestBookCreateController', ['$modalInstance', 'Upload', 'BlogService', function ($modalInstance, Upload, BlogService) {

            var vm = this;

            vm.model = {
                file_data: []
            };

            vm.errors = {};

            vm.ok = function () {

                $scope.loading = true;

                vm.errors = {};

                vm.model.captcha= grecaptcha.getResponse();
                (function(angular) {
                    "use strict";

                    angular.module('blog')
                        .controller('guestBookCreateController', ['$scope','$modalInstance', 'Upload', 'BlogService', function ($scope, $modalInstance, Upload, BlogService) {

                            var vm = this;

                            vm.model = {
                                file_data: []
                            };

                            vm.errors = {};

                            vm.ok = function () {

                                vm.errors = {};

                                vm.model.captcha= grecaptcha.getResponse();

                                if (vm.model.file) {
                                    vm.model.file_data.name = vm.model.file.$ngfName;
                                    vm.model.file_data.size = vm.model.file.size;
                                    vm.model.file_data.type = vm.model.file.type;
                                }

                                Upload.upload({
                                    url: 'api/internal/upload',
                                    data: {
                                        file: vm.model.file,
                                        file_info: vm.model.file_data
                                    }
                                }).then(function (response) {
                                    vm.model['src'] = response.data;
                                    BlogService.save(vm.model, function (response) {
                                        if (response.errors) {
                                            vm.errors = response.errors;
                                            grecaptcha.reset();
                                        } else {
                                            $modalInstance.close();
                                        }
                                    });
                                });


                            };

                            vm.cancel = function() {
                                $modalInstance.close();
                            };

                            angular.element(function () {
                                grecaptcha.render('reCaptcha', {'sitekey': '6Lc4VXQUAAAAAEN77oeVYKQv9X--RAG0MJOa9_xM'});
                            });

                        }]);



                })(window.angular);






                if (vm.model.file) {
                    vm.model.file_data.name = vm.model.file.$ngfName;
                    vm.model.file_data.size = vm.model.file.size;
                    vm.model.file_data.type = vm.model.file.type;
                }

                Upload.upload({
                    url: 'api/internal/upload',
                    data: {
                        file: vm.model.file,
                        file_info: vm.model.file_data
                    }
                }).then(function (response) {
                    vm.model['src'] = response.data;
                    BlogService.save(vm.model, function (response) {
                        if (response.errors) {
                            vm.errors = response.errors;
                            grecaptcha.reset();
                        } else {
                            $modalInstance.close();
                        }

                    });
                });


            };

            vm.cancel = function() {
                $modalInstance.close();
            };

            angular.element(function () {
                grecaptcha.render('reCaptcha', {'sitekey': '6Lc4VXQUAAAAAEN77oeVYKQv9X--RAG0MJOa9_xM'});
            });

        }]);



})(window.angular);





