<?
require('includes/inc.php');
require('includes/utility/db_helper.php'); 

$itemid=$_GET['itemid'];
$name=$_GET['name'];

				$dbhelper_obj=new DbHelperAdapter(); // Create object for users utility
	 			$insert_sql="update cart_items set pips_name='$name'";
				$req_id=$dbhelper_obj->executeInsertQuery($insert_sql);

?>