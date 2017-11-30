{if isset($smarty.session.username) and $smarty.session.username=='admin'}
<form action="admin_classify.php" method="post" enctype="multipart/form-data" id="myform">
    <h2 class="form-signin-heading"><b>新增作品分類</b></h2>
    <hr>
    <div class="form-group">
        <label for="title" class="col-form-label">分類標題</label>
        <input type="text" class="form-control validate[required]" name="title" id="title" placeholder="請輸入分類標題">
    </div>
    <div class="form-group">
        <label for="sort" class="col-form-label">顯示排序</label>
        <input type="number" class="form-control" name="sort" id="sort" placeholder="請輸入阿拉伯數字，數值愈大排名愈前">
    </div>
    <div class="form-group">
        <label for="description" class="col-form-label">分類介紹</label>
        <textarea name="description" id="description" rows="12" class="form-control" placeholder="請輸入分類介紹"></textarea>
    </div>
    <div class="form-group">
        <label for="uploadpic" class="col-form-label">上傳照片：</label>
        <div style="margin-bottom:10px;"><small>照片會出現在首頁，請留意照片的比例是否合適</small></div>
        <input type="file" class="form-control" name="uploadpic" id="uploadpic">
    </div>
    <div class="text-center">
        <input type="hidden" name="op" value="insert">
        <button type="submit" class="btn btn-success btn-xlarge">
                                    <i class="fa fa-cloud-upload" aria-hidden="true"></i>&nbsp;&nbsp;確 認 新 增
                                </button>
    </div>
    
</form>
{else}
<div>
    <div class="alert alert-danger role=" alert "">
        <i class="fa fa-exclamation-triangle" aria-hidden="true" style="font-size: 20px;"></i></i>&nbsp;&nbsp;<b style="font-size: 20px;">不要鬧！</b>這是大人的地方，快點給我滾出去！！
    </div>
</div>
{/if}
        <div class="empty-space col-xs-b55 col-sm-b110"></div>