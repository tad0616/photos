<?php
require 'loginheader.php';
require_once '_header.php';
$page_title = '分類管理';
$op         = '';

// die(var_dump($_SESSION));/*檢查有沒有session*/

$op = isset($_REQUEST['op']) ? filter_var($_REQUEST['op']) : '';
$sn = isset($_REQUEST['sn']) ? (int) $_REQUEST['sn'] : 0;

/***************** ↓ 流程控制區 ↓ ********************/
switch ($op) {

    case 'insert':
        $sn = data_insert();
        header("location: index.php");
        exit;

    case 'modify':
        data_modify($sn);
        header("location: index.php");
        exit;

    default:
        if ($sn) {
            $op = 'classify_modify';
            show_classify($sn);
        } /*else {
        $op = 'home';
        }*/
        break;
}

require_once '_footer.php';

/******************* ↓ 函式區 ↓ **********************/

//新增資料
function data_insert()
{
    global $db;
    $title       = $db->real_escape_string($_POST['title']);
    $description = $db->real_escape_string($_POST['description']);
    $username    = $db->real_escape_string($_POST['username']);
    $sort        = $db->real_escape_string($_POST['sort']);

    $sql = "INSERT INTO `classify` (`title`, `description`, `sort`) VALUES ('{$title}', '{$description}', '{$sort}')";
    $db->query($sql) or die($db->error);
    $sn = $db->insert_id;

    upload_pic($sn);

    return $sn;
}

//修改資料
function data_modify($sn)
{
    global $db;
    $title       = $db->real_escape_string($_REQUEST['title']);
    $sort        = $db->real_escape_string($_REQUEST['sort']);
    $description = $db->real_escape_string($_REQUEST['description']);

    $sql = "UPDATE `classify` SET `title`='{$title}', `description`='{$description}', `sort`= '{$sort}' WHERE `sn`='{$sn}'";
    $db->query($sql) or die($db->error);

    upload_pic($sn);

    return $sn;
}

//讀出一則分類資料
function show_classify($sn)
{
    global $db, $smarty;

    $sql             = "SELECT * FROM `classify` WHERE `sn`='$sn'";
    $result          = $db->query($sql) or die($db->error);
    $data            = $result->fetch_assoc();
    $data['summary'] = mb_substr(strip_tags($data['description']), 0, 30);
    $smarty->assign('classify', $data);
}

//上傳分類照片
function upload_pic($sn)
{
    if (file_exists("uploads/classify_{$sn}.jpg")) {
        unlink("uploads/classify_{$sn}.jpg");
    }

    if (isset($_FILES)) {
        require_once 'class.upload.php';
        $foo = new Upload($_FILES['uploadpic']);
        if ($foo->uploaded) {
            // save uploaded image with a new name
            $foo->file_new_name_body = 'classify_' . $sn;
            $foo->image_resize       = true;
            $foo->image_convert      = jpg;
            $foo->image_y            = 1080;
            $foo->image_ratio_x      = true;
            $foo->Process('uploads/');
        }
    }
}
