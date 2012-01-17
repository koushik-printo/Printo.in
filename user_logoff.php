<?php 
/*
Filename : user_logoff.php
Author : Printo - Koushik
Table Name : Nil
Functionality : clear session vbariables
*/

require('includes/inc.php');

/* Login Security */
	include_once "includes/security.php";
	$secure_obj=new SceurityAdapter();
	$secure_obj->clearSessions();

?>
