<!-- FOOTER -->
<footer class="type-2 transparent">
    <div class="wide-container-fluid">
        <div class="row">
            <div class="col-md-6 col-xs-text-center col-md-text-left col-sm-b10 col-md-b0">
                <div class="copyright">
                    <div class="simple-article small light transparent">
                        <!-- &copy; 2016 All rights reserved. -->
                        <div class="developed-by">&copy; 2017 {_SITE_TITLE}</div>
                    </div>
                </div>
                <div class="empty-space col-xs-b20 col-md-b0"></div>
            </div>
            <div class="col-md-6 col-xs-text-center col-md-text-right">
            </div>
        </div>
    </div>
</footer>
</div><!--end #content-block-->

<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/swiper.jquery.min.js"></script>
<script src="js/jquery.mousewheel.min.js"></script>
<script src="js/global.js"></script>

<script src="js/tiltfx.js"></script>

<script>
    $(document).ready(function () {
        // var images = ['pic1.jpg', 'pic2.jpg'];
        // $('.img-container').css({ 'background-image': 'url(images/' + images[Math.floor(Math.random() * images.length)] + ')' });

        // var txt = ['大家好', '歡迎光臨'];
        // $('title').text(  txt[Math.floor(Math.random() * txt.length)] );


        // $('.img-container').css('width', $(window).width());
        $('.img-container').css('height', $(window).height());
    });

    $(window).resize(function () {
        // $('.img-container').css('width', $(window).width());
        $('.img-container').css('height', $(window).height());
    });

</script>