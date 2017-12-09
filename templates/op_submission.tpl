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
<div class="fixed-background" style="background-image: url(images/pic1.jpg);">
    <div class="page-height">
        <div class="full-size-banner-entry full-size valign-middle">
            <div class="valign-text-wrapper text-center">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="h2 light">投稿須知</div>
                        <div class="empty-space col-xs-b15"></div>
                        <div class="banner-max-width">
                            <div class="simple-article large light transparent" style="font-size:16px;">本站為社大攝影班專屬網站，提供攝影班學員上傳攝影作品，學員使用本站功能請尊守以下規定：</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="scroll-button style-3 light hidden-xs"></div>
    </div>
</div>

<div class="container">
    <div class="empty-space col-xs-b55 col-sm-b110"></div>


    <div class="row col-xs-text-center col-sm-text-right">
        <div class="col-sm-3 col-sm-offset-1">
            <div class="h3"><b>成為會員</b></div>
            <div class="empty-space col-xs-b10 col-sm-b0"></div>
        </div>
        <div class="col-sm-7">
            <div class="simple-article grey text-left">
                <p>欲使用本站投稿功能，需先成為網站會員，若您還不是網站會員，請 <a href="signup.php" style="color:#ff0000">按此申請</a>，申請會員需經過攝影班老師驗證申請人確實是攝影班學員，方能成為本站會員</p>
            </div>
        </div>
    </div>

    <div class="empty-space col-xs-b25 col-sm-b50"></div>

    <div class="row col-xs-text-center col-sm-text-right">
        <div class="col-sm-3 col-sm-offset-1">
            <div class="h3"><b>攝影作品投稿</b></div>
            <div class="empty-space col-xs-b10 col-sm-b0"></div>
        </div>
        <div class="col-sm-7">
            <div class="simple-article grey text-left">
                <p>每位學員每週可以上傳一張攝作品</p>
            </div>
        </div>
    </div>

    <div class="empty-space col-xs-b25 col-sm-b50"></div>

    <div class="row col-xs-text-center col-sm-text-right">
        <div class="col-sm-3 col-sm-offset-1">
            <div class="h3"><b>其它</b></div>
            <div class="empty-space col-xs-b10 col-sm-b0"></div>
        </div>
        <div class="col-sm-7">
            <div class="simple-article grey text-left">
                <p>照片上傳後便無法再重新上傳，但是學員可以隨時修改照片的文字敘述。</p>
            </div>
        </div>
    </div>

    <div class="empty-space col-xs-b25 col-sm-b50"></div>>
    <div class="row col-xs-text-center col-sm-text-center">
        <div class="col-sm-12">
            <hr>
            <!-- <div class="h3"><b>開始上傳</b></div> -->
            <div class="empty-space col-xs-b15"></div>
            <div class="banner-max-width">
                <div class="simple-article large transparent" style="font-size:16px;">
                    如果您已明白投稿須知，接下來就請大膽地上傳自己的攝影作品吧。
                </div>
            </div>
            <hr>
            <div class="empty-space col-xs-b15"></div>
            <div class="empty-space col-xs-b15"></div>
    
            {if {$lastPic.create_time} > {$date.begin}}
            <a href="javascripts:;" class="btn btn-lg btn-success btn-xlarge disabled">
                <i class="fa fa-camera" aria-hidden="true"></i>&nbsp;&nbsp;本週已上傳
            </a>
            {elseif {$_SESSION['username']} == admin}
            <a href="index.php?op=upload" class="btn btn-lg btn-success btn-xlarge">
                <i class="fa fa-camera" aria-hidden="true"></i>&nbsp;&nbsp;上 傳 作 品
            </a>
            {else}
            <a href="index.php?op=upload" class="btn btn-lg btn-success btn-xlarge">
                <i class="fa fa-camera" aria-hidden="true"></i>&nbsp;&nbsp;上 傳 作 品
            </a>
            {/if}
            
        </div>
    </div>
    <div class="empty-space col-xs-b55 col-sm-b110"></div>
    <div class="empty-space col-xs-b55 col-sm-b110"></div>

</div>
<style>
    footer {
        display: none;
    }
</style>