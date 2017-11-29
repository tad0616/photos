        <div class="wide-container img-container">
            <div class="header-empty-space"></div>

            <div class="row">
                <div class="container">
                    <div class="col-md-10 col-md-offset-1">
                        <form action="index.php" method="post" enctype="multipart/form-data" id="myform">
                            <div class="form-group">
                                <label for="title" class="col-form-label sr-only">作品標題</label>
                                <input type="text" class="form-control validate[required]" name="title" id="title" placeholder="請輸入作品標題">
                            </div>
                            <div class="form-group">
                                <label for="description" class="col-form-label sr-only">作品介紹</label>
                                <textarea name="description" id="description" rows="12" class="form-control" placeholder="請輸入作品介紹"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="uploadpic" class="col-form-label" style="margin-bottom:10px;">上傳照片</label>
                                <div style="clear:both"></div>
                                <input type="file" class="form-control" name="uploadpic" id="uploadpic">
                            </div>
                            <div class="text-center">
                                <input type="hidden" name="op" value="insert">
                                <input type="hidden" name="username" value="{$smarty.session.username}">
                                <button type="submit" class="btn btn-success btn-xlarge">
                                    <i class="fa fa-cloud-upload" aria-hidden="true"></i>&nbsp;&nbsp;確 認 上 傳
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div><!-- end .wide-container -->

        