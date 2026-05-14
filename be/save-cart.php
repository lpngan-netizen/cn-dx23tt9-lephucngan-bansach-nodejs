<?php
include_once($_SERVER['DOCUMENT_ROOT'].'/inc/inc.php');
$response = ['status'=>'fail'];
$cart = get_session('CART');

if ($cart != '') {
    $order_total = 0;

    foreach ($cart as $item) {
        $order_total += $item['total'];
    }
    //----------------------------------

    $data = get_param_list(['customer', 'phone', 'address']);
    $data['order_date'] = date('Y-m-d H:i:s');
    $data['total'] = $order_total;
    $result_order = insert_table('orders', $data);

    if ($result_order) {
        foreach ($cart as $item) {
            $item['order_id'] = $result_order['insert_id'];
            $item['book_id'] = $item['id'];
            unset($item['id']);
            unset($item['name']);
            insert_table('order_detail', $item);
        }

        unset_session('CART');
        $response = ['status'=>'ok', 'orderid' => $result_order['insert_id']];
    }
}

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
echo json_encode($response);
?>