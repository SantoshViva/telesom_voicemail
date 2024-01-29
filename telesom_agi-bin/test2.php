#!/usr/bin/env php
<?php
//      License for all code of this FreePBX module can be found in the license file inside the module directory
//        Copyright 2013 Schmooze Com Inc.
//    Copyright (C) 2003 Zac Sprackett <zsprackett-asterisk@sprackett.com>

/* --------WARNING---------
 *
 * This script is auto-copied from an included module and will get overwritten.
 * If you modify it, you must change it to write only, in the agi-bin directory,
 * to keep it from getting changed.
 */

require_once "phpagi.php";
require "api_functions.php";

$sample_response="BALANCE_QUERY_RES.sufficientBalance='K';";

$audiofile= array();
$sample_response = substr($sample_response,0,-1);

echo "$sample_response";
$fruits_ar = explode(';', $sample_response);
echo "****************";
echo "$fruits_ar[0]";
$as = json_encode($fruits_ar);
echo "$as";
$arr = json_decode($as, true);
echo "$arr";
$response= new stdClass();
foreach($arr as $key=>$value)
{
	$reponseParam = explode('=', $value);
	if(!strcmp($reponseParam[0],"BALANCE_QUERY_RES.sufficientBalance"))
	{
		echo "issue";
	}	
}	

?>

