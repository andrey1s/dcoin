<?php
if (!defined('DC')) die("!defined('DC')");

require_once( ABSPATH . 'includes/class-parsedata.php' );

$tpl['data']['type'] = 'del_promised_amount';
$tpl['data']['type_id'] = ParseData::findType($tpl['data']['type']);
$tpl['data']['time'] = time();
$tpl['data']['user_id'] = $user_id;

$tpl['del_id'] = $_REQUEST['parameters']['del_id'];

require_once( ABSPATH . 'templates/promised_amount_delete.tpl' );

?>