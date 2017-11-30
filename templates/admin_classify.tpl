{include file="_head.tpl"}
</head>

<body class="fonts-1">
    <!-- LOADER -->
    <div id="loader-wrapper"></div>
    <div id="content-block">

{include file="_header.tpl"} 

        <div class="wide-container">
            <div class="header-empty-space"></div>

            <div class="row">
                <div class="container">
                    <div class="col-md-10 col-md-offset-1">
{include file="op_$op.tpl"}                        
                    </div>
                </div>
            </div>

        </div>
        <!-- end .wide-container -->



{include file="_footer.tpl"}
<script src="js/login.js"></script>
<style>
    footer { display: none; }
</style>
</body>

</html>