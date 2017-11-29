{include file="_head.tpl"}
</head>
<body class="fonts-1">
    <!-- LOADER -->
    <div id="loader-wrapper"></div>


    <div id="content-block">

{include file="_header.tpl"} 
<!--start op_{$op}.tpl-->
{include file="op_{$op}.tpl"}
<!--end op_{$op}.tpl-->
{include file="_footer.tpl"}

</body>

</html>