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
        header("location: index.php?sn={$sn}");
        exit;

    case 'list_photo':
        show_classify($sn);
        list_photo($sn);
        break;

    case 'upload': //上傳照片的表單
        require "loginheader.php";
        $op = 'upload';
        list_classify(); //列出下拉選單show分類
        break;

    default:
        if ($sn) {
            show_photo($sn);
            $op = 'show_photo';

        } else {
            $op = 'home';
            list_classify();
        }
        break;
}

require_once '_footer.php';

/******************* ↓ 函式區 ↓ **********************/

//新增資料
function data_insert()
{
    global $db;
    $title = $db->real_escape_string($_POST['title']);
    $description = $db->real_escape_string($_POST['description']);
    $username = $db->real_escape_string($_POST['username']);

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

    $sql = "SELECT * FROM `classify` ORDER BY `sort` DESC";
    $result = $db->query($sql) or die($db->error);
    $all = array();
    $i = 0;
    while ($data = $result->fetch_assoc()) {
        $all[$i] = $data;
        // $all[$i]['summary'] = mb_substr(strip_tags($data['content']), 0, 90);
        $i++;
    }
    // die(var_export($all));
    $smarty->assign('all', $all);
}

//讀出某則分類裡的所有照片
function list_photo($sn)
{
    global $db, $smarty;

    $sql    = "SELECT * FROM `photo` WHERE `classify_sn`='$sn' ORDER BY `create_time` DESC limit 0,9";
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

//讀出一則照片資料
function show_photo($sn)
{
    global $db, $smarty;

    // require_once 'HTMLPurifier/HTMLPurifier.auto.php';
    // $config   = HTMLPurifier_Config::createDefault();
    // $purifier = new HTMLPurifier($config);

    $sql = "SELECT * FROM `photo` WHERE `sn`='$sn'";
    $result = $db->query($sql) or die($db->error);
    $data = $result->fetch_assoc();
    // $data['content'] = $purifier->purify($data['content']);
    $data['description_n2br'] = str_replace("\n", '<br />', $data['description']);
    $data['summary']          = mb_substr(strip_tags($data['description']), 0, 90);
    $data['display_time']     = date("d M Y", strtotime($data['update_time']));
    $smarty->assign('photo', $data);
}

//上傳作品照片
function upload_pic($sn)
{

    if (isset($_FILES)) {
        require_once 'class.upload.php';
        $foo = new Upload($_FILES['uploadpic']);
        if ($foo->uploaded) {
            // save uploaded image with a new name
            $foo->file_new_name_body = 'cover_' . $sn;
            $foo->image_resize = true;
            $foo->image_convert = jpg;
            $foo->image_x = 1920;
            $foo->image_ratio_y = true;
            $foo->Process('uploads/');
            if ($foo->processed) {
                $foo->file_new_name_body = 'thumb_' . $sn;
                $foo->image_resize = true;
                $foo->image_convert = jpg;
                $foo->image_x = 480;
                $foo->image_ratio_y = true;
                $foo->Process('uploads/');
            }
        }
    }
}

//取得JPG檔EXIF資訊
function exif_display($sn)
{
    $exif = exif_read_data("'uploads/cover_'.$sn'.jpg'", 0, true);
}
