<html ng-app="blog">
<head>
    @include('fragments.scripts')
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div ng-controller = "guestBookGridController as cntrlr">
    <div class="header">
        <div class="header-left">
            <a class="logo" href="#about-us">Guest Book</a>
        </div>
        <div class="header-right">
            <button class="btn btn-primary btn-lg" ng-click="cntrlr.createRecord()">New entry</button>
        </div>
    </div>
    <div>
        @include('pages.messages.guest_book_grid')
    </div>
</div>

</body>
</html>

<!-- Templates -->
<script type="text/ng-template" id="guest_book_create_modal.html">
        @include("pages.messages.partials.guest_book_create_modal")
</script>




