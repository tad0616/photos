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

    <div class="row">
        <div class="container">
            <div class="col-md-10 col-md-offset-1">
                <form action="index.php?op=modify&sn={$photo.sn}" method="post" enctype="multipart/form-data" id="myform">
                    <h2 class="form-signin-heading"><b>修改作品</b></h2>
                    <hr>
                    <div class="form-group">
                        <label for="classify">選擇作品分類：</label>
                        <select class="form-control" name="classify_sn" id="classify">
                            <option disabled="disabled" selected="true">--請選擇--</option>
                            {foreach $list_classify as $classify}
                            <option value="{$classify.sn}" {if {$classify.sn}=="{$photo.classify_sn}"} selected="selected"{/if}>{$classify.title}</option>
                            {/foreach}
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="title" class="col-form-label">作品標題</label>
                        <input type="text" class="form-control validate[required]" name="title" id="title" placeholder="請輸入作品標題" value="{$photo.title}">
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-form-label">作品介紹</label>
                        <textarea name="description" id="description" rows="12" class="form-control" placeholder="請輸入作品介紹">{$photo.description}</textarea>
                    </div>
                    <div class="text-center">
                        <input type="hidden" name="op" value="modify">
                        <input type="hidden" name="username" value="{$smarty.session.username}">
                        <button type="submit" class="btn btn-lg btn-success">
                            <i class="fa fa-cloud-upload" aria-hidden="true"></i>&nbsp;&nbsp;確 認 修 改
                        </button>&nbsp;&nbsp;
                        <a href="index.php?op=upload_delete&sn={$photo.sn}" class="btn btn-lg btn-danger">
                            <i class="fa fa-trash" aria-hidden="true"></i>&nbsp;&nbsp;刪除
                        </a>
                    </div>
                </form>
                <div class="empty-space col-xs-b55 col-sm-b110"></div>
            </div>
        </div>
    </div>

</div>
<!-- end .wide-container -->

<style>
    footer {
        display: none;
    }
</style>