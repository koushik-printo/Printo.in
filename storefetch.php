<?php 

require('includes/inc.php'); 
$store_alias=$_REQUEST['store_id'];

$sql="select * from printo_outlet where DropDownValue='$store_alias'";
$data=mysql_fetch_assoc(mysql_query($sql));
//print_r($data);
$str="";
foreach($data as $a)
{
	$str .= $a."::";	
}
echo $str;

?>