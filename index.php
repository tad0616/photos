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

    case 'insert':
        $sn = data_insert();
        header("location: photo.php?sn={$sn}");
        exit;

    case 'upload':
        $op = 'upload';
        list_classify();
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

//新增資料
function data_insert()
{
    global $db;
    $title       = $db->real_escape_string($_POST['title']);
    $description = $db->real_escape_string($_POST['description']);
    $username    = $db->real_escape_string($_POST['username']);

    $sql = "INSERT INTO `photo` (`title`, `description`, `username`, `create_time`, `update_time`) VALUES ('{$title}', '{$description}', '{$username}', NOW(), NOW())";
    $db->query($sql) or die($db->error);
    $sn = $db->insert_id;

    upload_pic($sn);

    return $sn;
}

//讀出所有分類
function list_classify()
{
    global $db, $smarty;

    $sql    = "SELECT * FROM `classify` ORDER BY `sn` DESC LIMIT 0,9";
    $result = $db->query($sql) or die($db->error);
    $all    = array();
    $i      = 0;
    while ($data = $result->fetch_assoc()) {
        $all[$i] = $data;
        // $all[$i]['summary'] = mb_substr(strip_tags($data['content']), 0, 90);
        $i++;
    }
    // die(var_export($all));
    $smarty->assign('all', $all);
}

//上傳團片
function upload_pic($sn)
{

    if (isset($_FILES)) {
        require_once 'class.upload.php';
        $foo = new Upload($_FILES['uploadpic']);
        if ($foo->uploaded) {
            // save uploaded image with a new name
            $foo->file_new_name_body = 'cover_' . $sn;
            $foo->image_resize       = true;
            $foo->image_convert      = jpg;
            $foo->image_x            = 1920;
            $foo->image_ratio_y      = true;
            $foo->Process('uploads/');
            if ($foo->processed) {
                $foo->file_new_name_body = 'thumb_' . $sn;
                $foo->image_resize       = true;
                $foo->image_convert      = jpg;
                $foo->image_x            = 480;
                $foo->image_ratio_y      = true;
                $foo->Process('uploads/');
            }
        }
    }
}
