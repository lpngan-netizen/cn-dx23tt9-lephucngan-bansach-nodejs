<?php
include_once($_SERVER['DOCUMENT_ROOT'].'/inc/inc.php');

if (is_login()) {
    $data = get_data('select day(order_date) day, month(order_date) month, year(order_date) year, total
    from orders
    order by year, month, day', 'data');

    if ($data) {
        $result = ['status'=>'ok', 'data'=>$data];
    }
    else {
        $result = ['status'=>'fail', 'error'=>'no_data', 'message'=>'Không thể thực hiện'];
    }
}
else {
    $result = ['status'=>'fail', 'error'=>'no_authenticated', 'message'=>'Không có quyền thực hiện chức năng'];
}

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
echo json_encode($result);
?>