<?php

require_once( ABSPATH . 'includes/class-parsedata.php' );

$tpl['data']['type'] = 'change_promised_amount';
$tpl['data']['type_id'] = ParseData::findType($tpl['data']['type']);
$tpl['data']['time'] = time();
$tpl['data']['user_id'] = $user_id;

require_once( ABSPATH . 'templates/change_promised_amount.tpl' );

?>