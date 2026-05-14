<?php
include_once($_SERVER['DOCUMENT_ROOT'].'/inc/inc.php');
$response = ['status'=>'fail'];
$id = get_param('id');

if ($id > 0) {
    $cart = get_session('CART');
    if ($cart == '') $cart = [];
    $maxlen = count($cart);
    $found = false;

    for ($i = 0; $i < $maxlen; $i++) {
        if ($cart[$i]['id'] == $id) {
            $found = $i;
            break;
        }
    }
    
    if ($found !== false) {
        array_splice($cart, $found, 1);
    }
    
    set_session('CART', $cart);
    $response = ['status'=>'ok'];
}

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
echo json_encode($response);
?>