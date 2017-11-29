<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no, minimal-ui" />

    <!-- fonts collection 1 -->
    <link href='https://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway:300,400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400italic,700italic' rel='stylesheet' type='text/css'>

    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.extension.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/swiper.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
        <link rel="stylesheet" type="text/css" href="css/ie8-and-down.css" />
    <![endif]-->
    <!--[if IE 9]>
        <link href="css/ie9.css" rel="stylesheet" type="text/css" />
    <![endif]-->
    <title>{$site_title}</title>
</head>

<body class="fonts-1">

    <!-- LOADER -->
    <div id="loader-wrapper"></div>


    <div id="content-block">
        <!-- HEADER -->
        <header class="type-4 fixed light">
            <div class="wide-container-fluid">
                <div class="row">
                    <div class="col-xs-6 col-sm-2">
                        <a class="logo"><img src="img/logo1.png" alt="社大攝影班" /></a>
                    </div>
                    <div class="col-xs-6 col-sm-10 text-right">
                        <div class="navigation-wrapper">

                            <a class="logo responsive"><img src="img/logo.png" alt="" /></a>

                            <!--主選單，如果有的話-->
                            <!--<div class="navigation-overflow">
                                <nav class="text-left clearfix">
                                    <ul>
                                        <li>
                                            <a href="index.html">主選單</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>-->

                        </div>
                        <!--主選單收合按鈕，如果有的話-->
                        <!-- <div class="hamburger-icon open-navigation" data-rel="1">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div> -->
                        <div class="" style="float:right">
                            <a href="upload.php" class="btn btn-warning btn-lg"><i class="fa fa-camera" aria-hidden="true"></i>&nbsp;&nbsp;我要投稿</a>
                        </div>
                    </div>
                </div>
        </header>

        <div class="page-height">

            <div class="homepage-5-container">

                <div class="homepage-5-slider">

                    <!--data-slides-per-view：顯示數量-->
                    <div class="swiper-container" data-slides-per-view="5" data-breakpoints="1" data-xs-slides="1" data-sm-slides="2" data-md-slides="2"
                        data-mousewheel="1">
                        <div class="swiper-button-prev swiper-button hidden-xs style-2"></div>
                        <div class="swiper-button-next swiper-button hidden-xs style-2"></div>

                        <div class="swiper-wrapper">


                            <div class="swiper-slide">
                                <img src="img/background-19.jpg" alt="" class="tilt-effect" data-tilt-options='{$data_tilt_options}' />
                                <div class="entry full-size valign-middle">
                                    <div class="text-align">
                                        <div class="text">
                                            <div class="align">
                                                <div class="slide-title h3 light">人物</div>
                                                <div class="empty space col-xs-b15"></div>

                                                <div class="empty-space col-xs-b15"></div>
                                                <a class="button-link light" href="#">查看作品</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <img src="img/background-20.jpg" alt="" class="tilt-effect" data-tilt-options='{$data_tilt_options}' />
                                <div class="entry full-size valign-middle">
                                    <div class="text-align">
                                        <div class="text">
                                            <div class="align">
                                                <div class="slide-title h3 light">地方</div>
                                                <div class="empty space col-xs-b15"></div>

                                                <div class="empty-space col-xs-b15"></div>
                                                <a class="button-link light" href="#">查看作品</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <img src="img/background-21.jpg" alt="" class="tilt-effect" data-tilt-options='{$data_tilt_options}' />
                                <div class="entry full-size valign-middle">
                                    <div class="text-align">
                                        <div class="text">
                                            <div class="align">
                                                <div class="slide-title h3 light">自然</div>
                                                <div class="empty space col-xs-b15"></div>

                                                <div class="empty-space col-xs-b15"></div>
                                                <a class="button-link light" href="#">查看作品</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <img src="img/background-19_.jpg" alt="" class="tilt-effect" data-tilt-options='{$data_tilt_options}' />
                                <div class="entry full-size valign-middle">
                                    <div class="text-align">
                                        <div class="text">
                                            <div class="align">
                                                <div class="slide-title h3 light">圖片故事</div>
                                                <div class="empty space col-xs-b15"></div>

                                                <div class="empty-space col-xs-b15"></div>
                                                <a class="button-link light" href="#">查看作品</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <img src="img/background-20_.jpg" alt="" class="tilt-effect" data-tilt-options='{$data_tilt_options}' />
                                <div class="entry full-size valign-middle">
                                    <div class="text-align">
                                        <div class="text">
                                            <div class="align">
                                                <div class="slide-title h3 light">青少年</div>
                                                <div class="empty space col-xs-b15"></div>

                                                <div class="empty-space col-xs-b15"></div>
                                                <a class="button-link light" href="#">查看作品</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <img src="img/background-21_.jpg" alt="" class="tilt-effect" data-tilt-options='{$data_tilt_options}' />
                                <div class="entry full-size valign-middle">
                                    <div class="text-align">
                                        <div class="text">
                                            <div class="align">
                                                <div class="slide-title h3 light">手機組</div>
                                                <div class="empty space col-xs-b15"></div>

                                                <div class="empty-space col-xs-b15"></div>
                                                <a class="button-link light" href="#">查看作品</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="swiper-pagination swiper-pagination-white visible-xs"></div>
                    </div>

                </div>


            </div>
        </div>
        <!-- FOOTER -->
        <footer class="type-2 transparent">
            <div class="wide-container-fluid">
                <div class="row">
                    <div class="col-md-6 col-xs-text-center col-md-text-left col-sm-b10 col-md-b0">
                        <div class="copyright">
                            <div class="simple-article small light transparent">
                                <!-- &copy; 2016 All rights reserved. -->
                                <div class="developed-by">&copy; 2017 台南社大攝影班</div>
                            </div>
                        </div>
                        <div class="empty-space col-xs-b20 col-md-b0"></div>
                    </div>
                    <div class="col-md-6 col-xs-text-center col-md-text-right">
                    </div>
                </div>
            </div>
        </footer>
        </div>

        <script src="js/jquery-2.1.4.min.js"></script>
        <script src="js/swiper.jquery.min.js"></script>
        <script src="js/jquery.mousewheel.min.js"></script>
        <script src="js/global.js"></script>

        <script src="js/tiltfx.js"></script>

</body>

</html>