<?php
require_once '_header.php';
$page_title = '首頁';

// die(var_dump($_SESSION));/*檢查有沒有session*/

$op = isset($_REQUEST['op']) ? filter_var($_REQUEST['op']) : '';
$sn = isset($_REQUEST['sn']) ? (int) $_REQUEST['sn'] : 0;

/***************** ↓ 流程控制區 ↓ ********************/
switch ($op) {
    case 'submission':
        $op = 'submission';
        break;

    case 'upload':
        $op = 'upload';
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
