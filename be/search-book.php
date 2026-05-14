<?php
include_once($_SERVER['DOCUMENT_ROOT'].'/inc/inc.php');
$response = ['status'=>'fail'];

$search = get_param('search', 'GET');
if ($search != '') {
    $result = get_data('select name, img, url from book where name like "%'.$search.'%" or description like "%'.$search.'%"');

    if ($result) {
        $response = ['status'=>'ok', 'data' => $result['data']];
    }
}

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
echo json_encode($response);
?>