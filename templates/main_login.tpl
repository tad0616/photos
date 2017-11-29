{include file="_head.tpl"}
</head>

<body class="fonts-1">
    <!-- LOADER -->
    <div id="loader-wrapper"></div>
    <div id="content-block">

{include file="_header.tpl"} 

        <div class="wide-container img-container">
            <div class="header-empty-space"></div>

            <div class="container">
                <div class="col-md-8 col-md-offset-2">
                    <form action="index.php" method="post" enctype="multipart/form-data" id="myform">
                        <h2 class="form-signin-heading"><b>上傳作品</b></h2>
                        <div class="form-group">
                            <label for="title" class="col-form-label sr-only">作品標題</label>
                            <input type="text" class="form-control validate[required]" name="title" id="title" placeholder="請輸入作品標題">
                        </div>
                        <div class="form-group">
                            <label for="content" class="col-form-label sr-only">作品介紹</label>
                            <textarea name="content" id="content" rows="12" class="form-control" placeholder="請輸入作品介紹"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="uploadpic" class="col-form-label">上傳照片</label>
                            <input type="file" class="form-control" name="uploadpic" id="uploadpic" placeholder="請上傳一張封面圖">
                        </div>
                        <div class="text-center">
                            <input type="hidden" name="op" value="insert">
                            <!-- <input type="hidden" name="username" value="{$smarty.session.username}"> -->
                            <button type="submit" class="btn btn-success btn-xlarge">
                                <i class="fa fa-cloud-upload" aria-hidden="true"></i>&nbsp;&nbsp;確 認 上 傳
                            </button>
                        </div>
                    </form>
                </div>
            </div>

        </div><!-- end .wide-container -->



{include file="_footer.tpl"}
<script src="js/login.js"></script>
</body>

</html>