(function(angular) {
    "use strict";

    angular.module('blog')
        .controller('guestBookGridController', ['$scope', 'BlogService', '$modal', 'Upload',function ($scope, BlogService, $modal, Upload) {

            var vm = this;

            vm.columnDefs = [
                {headerName: "Image", field: 'image', suppressMovable: true, suppressSorting: true, width: 150,
                    cellRenderer: function (params) {
                        let src = 'default_image.png';
                        if (params.data.file) {
                            src = params.data.file.src;
                        };
                        return '<a href="#"><img width="64px" height="64px" type="image" src="images/'+src+'" style="margin-left: auto; margin-right: auto; display: block;"/></a>';
                    }
                },
                {headerName: "Date", field: "updated_at", unSortIcon: true, suppressMovable: true, sort: 'desc', width: 140},
                {headerName: "Message", field: "message", suppressMovable: true, cellStyle: {'white-space': 'normal'}, suppressSorting: true, autoHeight: true, width: 450},
                {headerName: "Username", field: "username", suppressMovable: true, unSortIcon: true},
                {headerName: "Website", field: "website", suppressMovable: true, suppressSorting: true},
                {headerName: "Email", field: "email", suppressMovable: true, suppressSorting: true},

            ];

            vm.gridOptions = {
                columnDefs: vm.columnDefs,
                rowData: [],
                pagination: true,
                paginationPageSize: 10,
                enableSorting: true,
                rowSelection: 'single',
                rowHeight: 75,
                sortingOrder: ['desc','asc',null],
                onGridReady: function(params) {
                    params.api.sizeColumnsToFit();

                    window.addEventListener('resize', function () {
                        setTimeout(function () {
                            params.api.sizeColumnsToFit();
                        })
                    });
                },
            };

            vm.initController = function () {
                vm.getAllRecords();
            };

            vm.getAllRecords = function () {
                BlogService.query(function(response) {
                    vm.gridOptions.api.setRowData(response);
                });
            }

            vm.createRecord = function () {
                var modalInstance = $modal.open({
                    animation: true,
                    templateUrl: 'guest_book_create_modal.html',
                    controller: 'guestBookCreateController as cntrlr',
                    size: 'md'
                }).result.then(function() {
                        vm.getAllRecords();
                    }, function () {}
                );

            }


        }]);

})(window.angular);






