<?php
$list = [
    ['text' => 'Dashboard', 'url' => '/admin'],
    ['text' => 'Sách', 'url' => '/admin/book'],
    ['text' => 'Thể loại', 'url' => '/admin/category'],
    ['text' => 'Đơn hàng', 'url' => '/admin/order'],
];

$sidebar_list = [];
$active_url = (count($route) == 1)? '/'.$route[0]: '/'.$route[0].'/'.$route[1];

foreach ($list as $item) {
    $active = ($item['url'] == $active_url)? 'class="active"': '';
    $sidebar_list[] = "<li $active><a href='$item[url]'>$item[text]</a></li>";
}

$sidebar = '<ul>'.implode('', $sidebar_list).'</ul>';
?>