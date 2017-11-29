<?php
require_once '_header.php';
$page_title = '首頁';

$op = isset($_POST['op']) ? filter_var($_POST['op']) : '';

/***************** ↓ 流程控制區 ↓ ********************/
switch ($op) {
    case 'information':
        $op = 'information';
        break;

    default:
        /*if ($sn) {
        show_article($sn);
        $op = 'show_article';
        } else {
        $op = 'home';
        }*/
        $op = 'home';
        break;
}

require_once '_footer.php';

/******************* ↓ 函式區 ↓ **********************/
