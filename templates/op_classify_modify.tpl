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
                        {if isset($smarty.session.username) and $smarty.session.username=='admin'}
                        <form action="admin_classify.php?op=modify&sn={$classify.sn}" method="post" enctype="multipart/form-data" id="myform">
                            <h2 class="form-signin-heading"><b>修改作品分類</b></h2>
                            <hr>
                            <div class="form-group">
                                <label for="title" class="col-form-label">分類標題</label>
                                <input type="text" class="form-control validate[required]" name="title" id="title" placeholder="請輸入分類標題" value="{$classify.title}">
                            </div>
                            <div class="form-group">
                                <label for="sort" class="col-form-label">顯示排序</label>
                                <input type="number" class="form-control" name="sort" id="sort" placeholder="請輸入阿拉伯數字，數值愈大排名愈前" value="{$classify.sort}">
                            </div>
                            <div class="form-group">
                                <label for="description" class="col-form-label">分類介紹</label>
                                <textarea name="description" id="description" rows="12" class="form-control" placeholder="請輸入分類介紹" value="">{$classify.description}</textarea>
                            </div>
                            <div class="form-group">
                                <div style="margin-bottom:10px;"><small>目前使用的照片，上傳新照片將會替換掉目前照片</small></div>
                                {assign var="cover" value="uploads/classify_{$classify.sn}.jpg"}
                                <!-- 指派和上傳圖檔相同的路徑給$cover -->
                                {if file_exists($cover)}
                                <!-- 如果$cover有得到值 -->
                                <img src="{$cover}" style="width:200px;"> 
                                {else}
                                <img src="http://fakeimg.pl/200x120/aaaaaa/EAE0D0/?text=REPORTER">
                                {/if}                                         
                                <br><br>
                                <label for="uploadpic" class="col-form-label">上傳新照片：</label>
                                <input type="file" class="form-control" name="uploadpic" id="uploadpic">
                            </div>
                            <div class="text-center">
                                <input type="hidden" name="op" value="modify">
                                <button type="submit" class="btn btn-success btn-lg">
                                    <i class="fa fa-cloud-upload" aria-hidden="true"></i>&nbsp;&nbsp;確 認 修 改
                                </button>
                                 &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="admin_classify.php?op=delete&sn={$classify.sn}" class="btn btn-danger btn-lg">
                                    <i class="fa fa-trash" aria-hidden="true"></i>&nbsp;&nbsp;刪 除
                                </a>
                            </div>
                        </form>
                        {else}
                            <div>
                                <div class="alert alert-danger role="alert"">
                                    <i class="fa fa-exclamation-triangle" aria-hidden="true" style="font-size: 20px;"></i></i>&nbsp;&nbsp;<b style="font-size: 20px;">不要鬧！</b>這是大人的地方，快點給我滾出去！！
                                </div>
                            </div>
                        {/if}
        <div class="empty-space col-xs-b55 col-sm-b110"></div>
<style>
    footer {
        display: none;
    }
</style>