<?php
$WEB_SCRIPT .= '
<script type="text/javascript" src="'.$HOST.'/js/chart.min.js"></script>
<script type="text/javascript" src="'.$HOST.'/js/chartjs-plugin-datalabels.min.js"></script>
';

$WEB_CONTENT .= file_get_contents($ABSPATH.'/template/page-admin.html');

include_once($ABSPATH.'/fe/template-admin.php')
?>