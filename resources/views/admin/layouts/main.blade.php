<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title_admin')</title>

    <!-- Global stylesheets -->
    <link href="{{ asset('assets/admin/assets/fonts/inter/inter.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('assets/admin/assets/icons/phosphor/styles.min.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('assets/admin/assets/css/ltr/all.min.css') }}" id="stylesheet" rel="stylesheet"
        type="text/css">


    @stack('style_admin')
    <!-- /global stylesheets -->

    <!-- Core JS files -->
    <script src="{{ asset('assets/admin/assets/js/bootstrap/bootstrap.bundle.min.js') }}"></script>
    <!-- /core JS files -->

    <script src="{{ asset('assets/admin/assets/js/app.js') }}"></script>
    <script src="{{ asset('assets/admin/assets/js/jquery/jquery.min.js') }}"></script>

    @stack('script_admin')


</head>

<body>

    @include('admin.components.navbar')

    <!-- Page content -->
    <div class="page-content">

        @include('admin.components.sidebar')

        <!-- Main content -->
        <div class="content-wrapper">

            <!-- Inner content -->
            <div class="content-inner">

                <!-- Page header -->
				<div class="page-header page-header-light shadow">
					<div class="page-header-content d-lg-flex">
						<div class="d-flex">
							<h4 class="page-title mb-0">
								@yield('title_admin')
							</h4>
						</div>
					</div>
				</div>
				<!-- /page header -->

                @yield('content_admin')

                @include('admin.components.footer')

            </div>
            <!-- /inner content -->

        </div>
        <!-- /main content -->

    </div>
    <!-- /page content -->


</body>

</html>
