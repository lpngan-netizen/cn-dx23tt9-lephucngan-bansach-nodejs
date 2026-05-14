<?php
include_once($_SERVER['DOCUMENT_ROOT'].'/inc/inc.php');
$response = ['status'=>'fail'];
$id = get_param('id');
$quantity = get_param('quantity');

if ($id > 0 and $quantity > 0) {
    $cart = get_session('CART');
    if ($cart == '') $cart = [];
    $found = false;

    foreach ($cart as $key => $item) {
        if ($item['id'] == $id) {
            $found = $key;
            break;
        }
    }
    
    if ($found === false) {
        $result = get_data('select name, price from book where id="'.$id.'"', 'data');
        
        if ($result) {
            $data = $result[0];
            $cart[] = ['id' => $id, 'quantity' => +$quantity, 'price' => $data['price'], 'total' => $quantity * $data['price'], 'name' => $data['name']];
        }
    }
    else {
        $cart[$found]['quantity'] += +$quantity;
        $cart[$found]['total'] = $cart[$found]['price'] * $cart[$found]['quantity'];
    }
    
    set_session('CART', $cart);
    $response = ['status'=>'ok', 'number' => count($cart)];
}

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
echo json_encode($response);
?>