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

        <div class="wide-container">
            <div class="header-empty-space"></div>


            <div class="container">
                <form class="form-signup" id="usersignup" name="usersignup" method="post" action="createuser.php">
                    <h2 class="form-signin-heading"><b>{$page_title}</b></h2>
                    <div class="alert alert-danger" role="alert" style="margin:20px auto;line-height:1.6em;font-size:15px;">註冊流程需要攝影班教師經由郵件完成審核方能通過，若您並非攝影班學員，請勿嘗試申請會員。</div>
                    <input name="newuser" id="newuser" type="text" class="form-control" placeholder="輸入帳號" autofocus>
                    <input name="email" id="email" type="text" class="form-control" placeholder="輸入Email" value="">
                    <br>
                    <input name="password1" id="password1" type="password" class="form-control" placeholder="請輸入密碼">
                    <input name="password2" id="password2" type="password" class="form-control" placeholder="請再次輸入相同密碼">

                    <button name="Submit" id="submit" class="btn btn-lg btn-primary btn-block" type="submit">註冊</button>
                    <div style="margin:20px auto;text-align:right;">已經有帳號？<a href="main_login.php" style="font-size:15px;text-decoration:underline;">按此登入</a></div>

                    
                    <div id="message"></div>
                </form>
        <div class="empty-space col-xs-b55 col-sm-b110"></div>
            </div>

        </div><!-- end .wide-container -->



{include file="_footer.tpl"}
<script src="js/signup.js"></script>
</body>

</html>