{include file="_head.tpl"}
</head>

<body class="fonts-1">
    <!-- LOADER -->
    <div id="loader-wrapper"></div>
    <div id="content-block">

{include file="_header.tpl"} 

        <div class="wide-container img-container">
            <div class="header-empty-space"></div>
            <div class="empty-space col-xs-b55 col-sm-b110"></div>


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

                    <div id="message"></div>
                </form>
            </div>

        </div><!-- end .wide-container -->



{include file="_footer.tpl"}
<script src="js/login.js"></script>
</body>

</html>