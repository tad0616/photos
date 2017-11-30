<div class="container">
    <div class="header-empty-space"></div>

    <div class="row">
        <div class="col-md-6 col-xs-text-center col-md-text-left">
            <div class="h2 small"><b>{$classify.title}</b></div>
        </div>
        <div class="empty-space col-xs-b30 col-md-b0"></div>
        <div class="col-md-6 col-xs-text-center col-md-text-right">
            <!-- <div class="sorting-menu style-2 text-left">
                <div class="responsive-filtration-title"><span class="text">All</span></div>
                <ul class="responsive-filtration-toggle">
                    <li><a class="mouseover-simple active" data-filter="*">All</a></li>
                    <li><a class="mouseover-simple" data-filter=".filter-2">Design</a></li>
                    <li><a class="mouseover-simple" data-filter=".filter-3">Branding</a></li>
                    <li><a class="mouseover-simple" data-filter=".filter-4">Advertising</a></li>
                    <li><a class="mouseover-simple" data-filter=".filter-5">Logo</a></li>
                    <li><a class="mouseover-simple" data-filter=".filter-6">Development</a></li>
                </ul>
            </div> -->
        </div>
    </div>

    <div class="empty-space col-xs-b30 col-sm-b60"></div>

            <div class="sorting-container portfolio-6">
                <div class="grid-sizer"></div>

                
                {foreach $all as $photo}
                <div class="sorting-item filter-1">
                    <div class="portfolio-landing-entry-1 style-1">
                        <a class="mouseover poster-3d lightbox" data-offset="5" href="index.php?sn={$photo.sn}" style="background-image: url(uploads/thumb_{$photo.sn}.jpg);">
                            <span class="layer-1 full-size" data-offset="10">
                                <span class="mouseover-helper-frame"></span>
                            </span>
                            <span class="layer-1 full-size" data-offset="20">
                                <span class="mouseover-helper-icon"></span>
                            </span>
                        </a>
                        <div class="text-content">
                            <div class="row">
                                <div class="col-md-6 col-xs-text-center col-md-text-left">
                                    <div class="h5"><b><a href="index.php?sn={$photo.sn}" class="size-1">{$photo.title}</a></b></div>
                                </div>
                                <div class="col-md-6 col-xs-text-center col-md-text-right">
                                    <div class="simple-article grey small">{$photo.username}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                {/foreach}
                


            </div>
    <div class="empty-space col-xs-b55 col-sm-b110"></div>