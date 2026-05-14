<?php
include_once($_SERVER['DOCUMENT_ROOT'].'/inc/inc.php');
$response = ['status'=>'fail'];

if (is_login()) {
    $id = get_param('id');

    if (!data_exist('book', 'and category = "'.$id.'"')) {
        if (delete_table('category', "and id='$id'")) {
            $response = ['status'=>'ok'];
        }
    }
}

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
echo json_encode($response);
?>