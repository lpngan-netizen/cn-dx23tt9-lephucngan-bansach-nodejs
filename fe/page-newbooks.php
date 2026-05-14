<?php
if (count($route) == 1) {
    $data = get_data('select * from book where new = 1', 'data');
    $list = [];

    if($data) {
        foreach ($data as $book) {
            $list[] = "<div class='book'>
                <a class='book-wrapper' href='/books/$book[url]'>
                    <div class='image'><img src='$book[img]'></div>
                    <h4 class='title'>$book[name]</h4>
                </a>
            </div>";
        }

        $WEB_CONTENT .= '<div class="page-body container">
            <div class="book-container">' . implode('', $list) . '</div>
        </div>';
    }
}
elseif (count($route) > 1) {
    $url = $route[1];
    $data = get_data("select * from book where url = '$url'", 'data');

    if ($data) {
        $book = $data[0];
        $book_detail = "<div id='book-detail'>
            <div id='img'><img src='$book[img]'></div>
            <div id='detail'>
                <h4 id='title'>$book[name]</h4>
                <div id='description'>$book[description]</div>
                <div id='price'>".format_number($book['price'])."</div>
                <div id='buy' itemid='$book[id]'>Mua ngay</div>
            </div>
        </div>";

        $WEB_CONTENT .= '<div class="container">
            '.$book_detail.'
        </div>';
    }
}

$WEB_CONTENT .= file_get_contents($ABSPATH.'/template/page-books.html');
include_once($ABSPATH.'/fe/template.php')
?>