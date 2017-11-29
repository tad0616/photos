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
                <form class="form-signup" id="usersignup" name="usersignup" method="post" action="createuser.php">
                    <h2 class="form-signin-heading"><b>{$page_title}</b></h2>
                    <input name="newuser" id="newuser" type="text" class="form-control" placeholder="輸入帳號" autofocus>
                    <input name="email" id="email" type="text" class="form-control" placeholder="輸入Email" value="">
                    <br>
                    <input name="password1" id="password1" type="password" class="form-control" placeholder="請輸入密碼">
                    <input name="password2" id="password2" type="password" class="form-control" placeholder="請再次輸入相同密碼">

                    <button name="Submit" id="submit" class="btn btn-lg btn-primary btn-block" type="submit">註冊</button>

                    <div id="message"></div>
                </form>
            </div>

        </div><!-- end .wide-container -->



{include file="_footer.tpl"}
<script src="js/signup.js"></script>
</body>

</html>