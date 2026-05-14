<?php
$cart = get_session('CART');
if (!is_array($cart)) $cart = [];
$order_total = 0;
$book_list = [];

foreach ($cart as $item) {
    $order_total += $item['total'];

    $book_list[] = "<tr>
        <td>".$item['name']."</td><td align='right'>".format_number($item['price'])."</td>
        <td align='center' ><input type='number' name='quantity' value='$item[quantity]' min='1' data-id='$item[id]' data-quantity='$item[quantity]' data-price='$item[price]' data-total='$item[total]'></td>
        <td align='right' name='total'>".format_number($item['total'])."</td>
        <td class='cmd' align='right'>
        <a href='#' class='delete' item_id='$item[id]' item_name='$item[name]'>Xóa</a>
        </td>
    </tr>";
}

$detail_list = count($book_list) == 0? 'Không có đơn hàng': implode('', $book_list);

$WEB_CONTENT .= '<div class="container"><div id="ordering">
    <div id="order-info">
        <div class="datarow">
            <label>Họ tên</label>
            <input type="text" name="name">
        </div>
        <div class="datarow">
            <label>Điện thoại</label>
            <input type="text" name="phone">
        </div>
        <div class="datarow">
            <label>Địa chỉ</label>
            <input type="text" name="address">
        </div>
        <div id="order-button">Đặt hàng</div>
    </div>
    <div id="book-list">
        <table><tbody>'.$detail_list.'</tbody></table>
        <div id="summary" style="display:none;">
            <div id="total">Tổng đơn hàng: <span>'.format_number($order_total).'</span></div>
        </div>
    </div>
</div></div>';

$WEB_CONTENT .= file_get_contents($ABSPATH.'/template/page-cart.html');
include_once($ABSPATH.'/fe/template.php')
?>