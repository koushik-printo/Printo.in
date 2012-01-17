<?php
/*
Filename : request_quote.php
Author : Printo - Koushik
Table Name : Nil
Functionality : Request a Quote - Dynamic form  
*/

require('includes/inc.php');
require('includes/utility/form_validation.php');
require('includes/utility/db_helper.php'); 
require('includes/classes/userprofiles_class.php');
require('includes/classes/userfiles_class.php');
require('includes/utility/triggers_utility.php'); 
// Query String Values //
$cur_user=$_GET[uid];
$cur_file_id=$_GET[fid];

require('validations/request_quote_validation.php');

//$smarty->display('request_quote.tpl');
$smarty->display('request_quote_new.tpl');
?>
