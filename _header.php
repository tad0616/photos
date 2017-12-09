<?php
if (!isset($_SESSION)) {
    session_start();
}
error_reporting(E_ALL);

//error_reporting(0);


require_once '_setup.php';
require_once '_function.php';
require_once 'smarty/libs/Smarty.class.php';
$smarty = new Smarty;

$db = link_db();
$data_tilt_options = '{ "movement": { "perspective" : 700, "translateX" : -15, "translateY" : -15, "translateZ" : 10, "rotateX" : 2, "rotateY" : 10 } }';

//自動抓樣板檔，把值塞給常數 _PAGE_TPL
//在_footer.php 加入 $smarty->display(_PAGE_TPL); 即會自動載入與.php檔名相同的.tpl
define('_PAGE_TPL', str_replace('.php', '.tpl', basename($_SERVER['PHP_SELF'])));
