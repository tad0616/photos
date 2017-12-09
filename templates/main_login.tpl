{include file="_head.tpl"}
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
                <a class="logo" href="index.php"><img src="img/logo1.png" alt="{_SITE_TITLE}" /></a>
            </div>
            <div class="col-xs-6 col-sm-10 text-right">
                {include file="_nav.tpl"}
            </div>
        </div>
</header>
<style>
    nav li a {
        font-size: 16px!important;
        font-weight: bolder!important;
        font-family: 微軟正黑體!important;
        color: #fff!important;
        text-shadow: 1px 1px 0px rgba(0, 0, 0, 0.8);
        /* box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.5); */
    }
</style>

        <div class="wide-container img-container">
            <div class="header-empty-space"></div>


            <div class="container">
                <form class="form-signin" name="form1" method="post" action="checklogin.php">
                    <h2 class="form-signin-heading"><b>{$page_title}</b></h2>
                    <input name="myusername" id="myusername" type="text" class="form-control" placeholder="請輸入帳號" autofocus>
                    <input name="mypassword" id="mypassword" type="password" class="form-control" placeholder="請輸入密碼">
                    <!-- The checkbox remember me is not implemented yet...
                    <label class="checkbox">
                    <input type="checkbox" value="remember-me"> Remember me
                    </label>
                    -->
                    <button name="Submit" id="submit" class="btn btn-lg btn-primary btn-block" type="submit">登入</button>

                    <div style="margin:20px auto;text-align:right;">還不是會員？<a href="signup.php" style="font-size:15px;text-decoration:underline;">按此申請</a></div>

                    <div id="message"></div>
                </form>
        <div class="empty-space col-xs-b55 col-sm-b110"></div>
            </div>

        </div><!-- end .wide-container -->



{include file="_footer.tpl"}
<script src="js/login.js"></script>
</body>

</html>