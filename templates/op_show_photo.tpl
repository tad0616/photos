{include file="_header.tpl"}
<div class="container">
    <div class="header-empty-space"></div>

    <div class="row">
        <div class="col-md-6 col-md-offset-3 text-center">
            <div class="h2 small"><b>{$photo.title}</b></div>
            <div class="empty-space col-xs-b15"></div>
            <div class="simple-article large grey">
                {$photo.summary} …
            </div>
        </div>
    </div>

    <div class="empty-space col-xs-b30 col-sm-b60"></div>

    <div class="row">
        <div class="col-sm-3 text-center">
            <div class="h5"><b>作品分類：</b></div>
            <div class="empty-space col-xs-b5"></div>
            <div class="simple-article large grey"><a href="index.php?op=list_photo&sn={$photo.classify_sn}">{$photo.classify_sn}</a></div>
            <div class="empty-space col-xs-b20 col-sm-b0"></div>
        </div>
        <div class="col-sm-3 text-center">
            <div class="h5"><b>作者：</b></div>
            <div class="empty-space col-xs-b5"></div>
            <div class="simple-article large grey">{$photo.username}</div>
            <div class="empty-space col-xs-b20 col-sm-b0"></div>
        </div>
        <div class="col-sm-3 text-center">
            <div class="h5"><b>刊登日期：</b></div>
            <div class="empty-space col-xs-b5"></div>
            <div class="simple-article large grey">{$photo.display_time}</div>
            <div class="empty-space col-xs-b20 col-sm-b0"></div>
        </div>
        <div class="col-sm-3 text-center">
            <div class="h5"><b>分享：</b></div>
            <div class="empty-space col-xs-b5"></div>
            <div class="simple-article large grey" style="text-align:center;">
                <!-- AddToAny BEGIN -->
                <div class="a2a_kit a2a_kit_size_32 a2a_default_style" style="width:108px;margin:0 auto;">
                    <!-- <a class="a2a_dd" href="https://www.addtoany.com/share"></a> -->
                    <a class="a2a_button_facebook"></a>
                    <a class="a2a_button_twitter"></a>
                    <a class="a2a_button_line"></a>
                </div>
                <script>
                    var a2a_config = a2a_config || {};
                    a2a_config.onclick = 1;
                    a2a_config.locale = "zh-TW";

                </script>
                <script async src="https://static.addtoany.com/menu/page.js"></script>
                <!-- AddToAny END -->
            </div>
            <div class="empty-space col-xs-b20 col-sm-b0"></div>
        </div>
    </div>

    <div class="empty-space col-xs-b30 col-sm-b60"></div>

</div>

<div class="container">
    <div class="portfolio-detail-entry">
        <img src="uploads/cover_{$photo.sn}.jpg" alt="" />
    </div>
</div>
<div class="container">
    <div class="empty-space col-xs-b35"></div>
    <div class="row">
        <div class="col-md-7 text-center">
            <div class="h5"><b>- 作品說明 -</b></div>
            <div class="empty-space col-xs-b30"></div>
            <div class="simple-article large grey text-left">
                {$photo.description_n2br}
            </div>
        </div>
        <div class="col-md-4 col-md-offset-1 text-center">
            <div class="h5"><b>- EXIF資訊 -</b></div>
            <div class="empty-space col-xs-b30"></div>
            <div class="simple-article large grey text-left">
                 &nbsp;
            </div>
        </div>
    </div>
    <div class="empty-space col-xs-b60"></div>
</div>
{if isset($smarty.session.username) and $smarty.session.username=={$photo.username}}
<div class="container">
    <div class="empty-space col-xs-b35"></div>
    <div class="row">
        <div class="col-md-12">
            <div class="alert alert-info text-right" roll="alert">
                <a href="index.php?op=upload_modify&sn={$photo.sn}" class="btn btn-lg btn-success"><i class="fa fa-pencil"></i>&nbsp;編輯</a>&nbsp;&nbsp;
                <a href="index.php?op=upload_delete&sn={$photo.sn}" class="btn btn-lg btn-danger"><i class="fa fa-trash"></i>&nbsp;刪除</a>
            </div>
        </div>
    </div>
    <div class="empty-space col-xs-b60"></div>
</div>
{/if}


<div class="empty-space col-sm-b50"></div>

{if isset($prev.sn) or isset($next.sn)}
<div class="row nopadding">
    <div class="col-xs-4">
        {if $prev.sn}
        <a class="portfolio-detail-related-entry" href="index.php?sn={$prev.sn}">
            <span class="background full-size" style="background-image: url(uploads/thumb_{$prev.sn}.jpg);"></span>
            <span class="text hidden-xs">
                <span class="wide-container align-left" style="background:none;">
                    <span class="tag"><span class="inline-indent"></span>{$prev.classify_sn}</span>
                    <span class="h4 light"><b>{$prev.title}</b></span>
                </span>
            </span>
        </a>
        {else}
        <a class="portfolio-detail-related-entry" href="javascript:;">
            <span class="background full-size" style="background-image: url(http://fakeimg.pl/640x640/aaaaaa/EAE0D0/?text=noitem);"></span>
        </a>
        {/if}
    </div>
    <div class="col-xs-4">
        <div class="portfolio-detail-related-entry">
            <a class="square-hamburger-icon" href="index.php?op=list_allphoto" title="返回列表">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </a>
        </div>
    </div>
    <div class="col-xs-4">        
        {if $next.sn}
        <a class="portfolio-detail-related-entry" href="index.php?sn={$next.sn}">
            <span class="background full-size" style="background-image: url(uploads/thumb_{$next.sn}.jpg););"></span>
            <span class="text hidden-xs">
                <span class="wide-container align-right" style="background:none;">
                    <span class="tag"><span class="inline-indent"></span>{$next.classify_sn}</span>
                    <span class="h4 light"><b>{$next.title}</b></span>
                </span>
            </span>
        </a>
        {else}
        <a class="portfolio-detail-related-entry" href="javascript:;">
            <span class="background full-size" style="background-image: url(http://fakeimg.pl/640x640/aaaaaa/EAE0D0/?text=noitem);"></span>
        </a>
        {/if}
    </div>
</div>
{/if}
<style>
        footer {
            display: none;
        }
    </style>