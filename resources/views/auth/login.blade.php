<!DOCTYPE html>

<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 4 & Angular 7
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
Renew Support: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<html lang="en">

    <!-- begin::Head -->
    <head>
        <meta charset="utf-8" />
        <title>Metronic | Login Page v3</title>
        <meta name="description" content="Login page example">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!--begin::Fonts -->
        <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
        <script>
            WebFont.load({
                google: {"families":["Poppins:300,400,500,600,700","Roboto:300,400,500,600,700"]},
                active: function() {
                    sessionStorage.fonts = true;
                }
            });
        </script>

        <!--end::Fonts -->

        <!--begin::Page Custom Styles(used by this page) -->
        <link href="{{asset('backend')}}/assets/app/custom/login/login-v3.default.css" rel="stylesheet" type="text/css" />

        <!--end::Page Custom Styles -->

        <!--begin:: Global Mandatory Vendors -->
        <link href="{{asset('backend')}}/assets/vendors/general/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" type="text/css" />

        <!--end:: Global Mandatory Vendors -->

        <!--begin:: Global Optional Vendors -->
        <link href="{{asset('backend')}}/assets/vendors/general/tether/dist/css/tether.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/bootstrap-datepicker/dist/css/bootstrap-datepicker3.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/bootstrap-datetime-picker/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/bootstrap-timepicker/css/bootstrap-timepicker.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/select2/dist/css/select2.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/ion-rangeslider/css/ion.rangeSlider.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/nouislider/distribute/nouislider.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/owl.carousel/dist/assets/owl.carousel.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/owl.carousel/dist/assets/owl.theme.default.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/dropzone/dist/dropzone.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/summernote/dist/summernote.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/bootstrap-markdown/css/bootstrap-markdown.min.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/animate.css/animate.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/toastr/build/toastr.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/morris.js/morris.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/sweetalert2/dist/sweetalert2.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/general/socicon/css/socicon.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/custom/vendors/line-awesome/css/line-awesome.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/custom/vendors/flaticon/flaticon.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/custom/vendors/flaticon2/flaticon.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/vendors/custom/vendors/fontawesome5/css/all.min.css" rel="stylesheet" type="text/css" />

        <!--end:: Global Optional Vendors -->

        <!--begin::Global Theme Styles(used by all pages) -->
        <link href="{{asset('backend')}}/assets/demo/default/base/style.bundle.css" rel="stylesheet" type="text/css" />

        <!--end::Global Theme Styles -->

        <!--begin::Layout Skins(used by all pages) -->
        <link href="{{asset('backend')}}/assets/demo/default/skins/header/base/light.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/demo/default/skins/header/menu/light.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/demo/default/skins/brand/dark.css" rel="stylesheet" type="text/css" />
        <link href="{{asset('backend')}}/assets/demo/default/skins/aside/dark.css" rel="stylesheet" type="text/css" />

        <!--end::Layout Skins -->
        <link rel="shortcut icon" href="{{asset('backend')}}/assets/media/logos/favicon.ico" />
    </head>

    <!-- end::Head -->

    <!-- begin::Body -->
    <body class="kt-header--fixed kt-header-mobile--fixed kt-subheader--fixed kt-subheader--enabled kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading">

        <!-- begin:: Page -->
        <div class="kt-grid kt-grid--ver kt-grid--root">
            <div class="kt-grid kt-grid--hor kt-grid--root  kt-login kt-login--v3 kt-login--signin" id="kt_login">
                <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" style="background-image: url({{asset('backend')}}/assets/media//bg/bg-3.jpg);">
                    <div class="kt-grid__item kt-grid__item--fluid kt-login__wrapper">
                        <div class="kt-login__container">
                            <div class="kt-login__logo">
                                <a href="#">
                                    <img src="{{asset('backend')}}/assets/media/logos/logo-5.png">
                                </a>
                            </div>
                            <div class="kt-login__signin">
                                <div class="kt-login__head">
                                    <h3 class="kt-login__title">Sign In To Admin</h3>
                                </div>
                                {{-- id="kt_login_forgot_submit"--}}

                                <form class="kt-form" method="POST" action="{{ route('login') }}"  novalidate="novalidate">
                                     @csrf
                                     <div class="form-group">
                                         <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                      @error('email')
                                      <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                     @enderror
                                    </div>
                                    <div class="form-group">
                                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                    </div>

                                    <!--begin::Action-->
                                    <div class="kt-login__actions">


                                            @if (Route::has('password.request'))
                                    <a class="kt-link kt-login__link-forgot" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                    @endif
                                        <button class="btn btn-primary btn-elevate kt-login__btn-primary">{{ __('Login') }}</button>
                                    </div>

                                    <!--end::Action-->
                                </form>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- end:: Page -->

        <!-- begin::Global Config(global config for global JS sciprts) -->
        <script>
            var KTAppOptions = {
                "colors": {
                    "state": {
                        "brand": "#5d78ff",
                        "dark": "#282a3c",
                        "light": "#ffffff",
                        "primary": "#5867dd",
                        "success": "#34bfa3",
                        "info": "#36a3f7",
                        "warning": "#ffb822",
                        "danger": "#fd3995"
                    },
                    "base": {
                        "label": ["#c5cbe3", "#a1a8c3", "#3d4465", "#3e4466"],
                        "shape": ["#f0f3ff", "#d9dffa", "#afb4d4", "#646c9a"]
                    }
                }
            };
        </script>

        <!-- end::Global Config -->

        <!--begin:: Global Mandatory Vendors -->
        <script src="{{asset('backend')}}/assets/vendors/general/jquery/dist/jquery.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/popper.js/dist/umd/popper.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/js-cookie/src/js.cookie.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/moment/min/moment.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/tooltip.js/dist/umd/tooltip.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/perfect-scrollbar/dist/perfect-scrollbar.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/sticky-js/dist/sticky.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/wnumb/wNumb.js" type="text/javascript"></script>

        <!--end:: Global Mandatory Vendors -->

        <!--begin:: Global Optional Vendors -->
        <script src="{{asset('backend')}}/assets/vendors/general/jquery-form/dist/jquery.form.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/block-ui/jquery.blockUI.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/custom/components/vendors/bootstrap-datepicker/init.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/bootstrap-datetime-picker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/custom/components/vendors/bootstrap-timepicker/init.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/bootstrap-maxlength/src/bootstrap-maxlength.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/custom/vendors/bootstrap-multiselectsplitter/bootstrap-multiselectsplitter.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/bootstrap-select/dist/js/bootstrap-select.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/bootstrap-switch/dist/js/bootstrap-switch.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/custom/components/vendors/bootstrap-switch/init.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/select2/dist/js/select2.full.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/ion-rangeslider/js/ion.rangeSlider.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/typeahead.js/dist/typeahead.bundle.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/handlebars/dist/handlebars.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/inputmask/dist/jquery.inputmask.bundle.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/inputmask/dist/inputmask/inputmask.date.extensions.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/inputmask/dist/inputmask/inputmask.numeric.extensions.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/nouislider/distribute/nouislider.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/owl.carousel/dist/owl.carousel.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/autosize/dist/autosize.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/clipboard/dist/clipboard.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/dropzone/dist/dropzone.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/summernote/dist/summernote.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/markdown/lib/markdown.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/custom/components/vendors/bootstrap-markdown/init.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/bootstrap-notify/bootstrap-notify.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/custom/components/vendors/bootstrap-notify/init.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/jquery-validation/dist/jquery.validate.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/jquery-validation/dist/additional-methods.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/custom/components/vendors/jquery-validation/init.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/toastr/build/toastr.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/raphael/raphael.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/morris.js/morris.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/chart.js/dist/Chart.bundle.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/custom/vendors/bootstrap-session-timeout/dist/bootstrap-session-timeout.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/custom/vendors/jquery-idletimer/idle-timer.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/waypoints/lib/jquery.waypoints.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/counterup/jquery.counterup.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/es6-promise-polyfill/promise.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/sweetalert2/dist/sweetalert2.min.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/custom/components/vendors/sweetalert2/init.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/jquery.repeater/src/lib.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/jquery.repeater/src/jquery.input.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/jquery.repeater/src/repeater.js" type="text/javascript"></script>
        <script src="{{asset('backend')}}/assets/vendors/general/dompurify/dist/purify.js" type="text/javascript"></script>

        <!--end:: Global Optional Vendors -->

        <!--begin::Global Theme Bundle(used by all pages) -->
        <script src="{{asset('backend')}}/assets/demo/default/base/scripts.bundle.js" type="text/javascript"></script>

        <!--end::Global Theme Bundle -->

        <!--begin::Page Scripts(used by this page) -->
        <script src="{{asset('backend')}}/assets/app/custom/login/login-general.js" type="text/javascript"></script>

        <!--end::Page Scripts -->

        <!--begin::Global App Bundle(used by all pages) -->
        <script src="{{asset('backend')}}/assets/app/bundle/app.bundle.js" type="text/javascript"></script>

        <!--end::Global App Bundle -->
    </body>

    <!-- end::Body -->
</html>