<?php
include_once($_SERVER['DOCUMENT_ROOT'].'/inc/inc.php');
$response = ['status'=>'fail'];

if (is_login()) {
    $id = get_param('id');
    $data = get_param_list(['name', 'description', 'img', 'price', 'category',"new"]);
    $result = false;

    if (isset($data['name'])) $data['url'] = remove_accent($data['name']);
    
    if ($id > 0) {
        $result = update_table('book', $data, "and id='$id'");
    }
    else {
        $result = insert_table('book', $data);
    }

    if ($result) {
        $response = ['status'=>'ok'];
        if (isset($result['insert_id'])) $response['insert_id'] = $result['insert_id'];
    }
}

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
echo json_encode($response);
?>