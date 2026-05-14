<?php
include_once($_SERVER['DOCUMENT_ROOT'].'/inc/inc.php');
$response = ['status'=>'fail'];

if (is_login()) {
    $id = get_param('id');
    $data = get_param_list(['order_date', 'customer', 'phone', 'address', 'total']);
    $result = false;

    if ($id > 0) {
        $result = update_table('orders', $data, "and id='$id'");
    }
    else {
        $result = insert_table('orders', $data);
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