<?php
$cart = get_session('CART');
$cart_count = (is_array($cart) and count($cart) > 0)? '('.count($cart).')': '';
$html = file_get_contents($ABSPATH.'/template/com-header.html');
$html = str_replace('[cartcount]', $cart_count, $html);
echo $html;
?>