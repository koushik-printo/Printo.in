<?php
/*
Filename : test.php
Author : Printo - Indra
Table Name : Nil
Functionality : Display Queries and Responses
*/

require('includes/inc.php');
require('includes/classes/tblenquiry_class.php');
require('includes/classes/responsedata_class.php');

$tblenquiry_obj=new tblenquiryAdapter();

$query="select * from tblenquiry where tblenquiry.deleteflag='N' and tblenquiry.uId=1";


$responsedata_obj=new responsedataAdapter();

$queryres="select * from responsedata where responsedata.deleteflag='N' and responsedata.uId=1";




$tblenquiryList=$tblenquiry_obj->getMultipleRecords($query);
$responsedataList=$responsedata_obj->getMultipleRecords($queryres);

$smarty->assign('tblenquiryList',$tblenquiryList);
$smarty->assign('responsedataList',$responsedataList);

$smarty->display('test.tpl');
?>
