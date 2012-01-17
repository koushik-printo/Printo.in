<?php 
/*
Filename : cart_templates.php
Author : Printo - Koushik
Table Name : product table and template tables
Functionality : Selecting template based on product id
*/


require('includes/inc.php');
require('libs/SmartyPaginate.class.php');

//print_r($_SESSION);



/* Query string values */
$current_sess_id=$_SESSION[sess_uid];
$_SESSION[ses_tcid]="";




if($_GET[pid]!="")
{
$current_product_id=$_GET[pid];
SmartyPaginate::disconnect();
SmartyPaginate::reset();
$_SESSION[ses_pid]=$_GET[pid];
} else {
$current_product_id=$_SESSION[ses_pid];
}



if($_GET[tcid]!="")
{
$current_tempalte_category_id=$_GET[tcid];
$_SESSION[ses_tcid]=$_GET[tcid];
} elseif($_GET[tcid_ex]=="") {
$current_tempalte_category_id=$_SESSION[ses_tcid];
}
/*else
{
	$_SESSION[ses_tcid]="";
}
*/
if($_GET[itemid]!="")
{
$current_item_id=$_GET[itemid];
$_SESSION[ses_itemid]=$_GET[itemid];
} else {
$current_item_id="";
$_SESSION[ses_itemid]="";
}

if($_GET[tempid]!="")
{
$current_template_id=$_GET[tempid];
$_SESSION[ses_tempid]=$_GET[tempid];
} else {
$current_template_id=$_SESSION[ses_tempid];
}


$smarty->assign("current_template_id",$current_template_id);
$smarty->assign("tempid",$tempid);
$smarty->assign("current_item_id",$current_item_id);

/* extract templates */
require('includes/classes/templates_class.php');
$template_obj=new TemplatesAdapter();
if($current_tempalte_category_id=="")
$query="select * from templates where product_id='$current_product_id' and (user_id='' or user_id='0' or user_id='$current_sess_id') and template_enable='yes' and template_status='Published' order by priority";

else
$query="select * from templates as t1 left join template_category_template as t2 on (t1.template_id=t2.template_id) where t1.product_id='$current_product_id' and t2.template_category_id='$current_tempalte_category_id' and (t1.user_id='' or t1.user_id='0' or t1.user_id='$current_sess_id') and t1.template_enable='yes' and t1.template_status='Published' order by t1.priority";

$tempaltesList=$template_obj->getMultipleRecords($query);

/* Templates pagination */
	SmartyPaginate::connect();// required connect
	SmartyPaginate::setLimit(9);// set items per page

	SmartyPaginate::setTotal(count($tempaltesList));
	$tempaltesList=array_slice($tempaltesList, SmartyPaginate::getCurrentIndex(),SmartyPaginate::getLimit()); 
	$smarty->assign('tempaltesList',$tempaltesList);
	SmartyPaginate::assign($smarty);
/* End Templates pagination */

$smarty->assign("tempalteFolder","uploads/template_images/");
$smarty->assign("cur_product_id",$current_product_id);
$smarty->assign("cur_tempalte_category_id",$current_tempalte_category_id);

require('includes/classes/templatecategory_class.php');
$templatecategory_obj=new TemplateCategoryAdapter();
$query="select * from template_category where product_id='$current_product_id' ORDER BY  `template_category`.`template_name` ASC";
$templatecategoryList=$templatecategory_obj->getMultipleRecords($query);
$smarty->assign("templatecategoryList",$templatecategoryList);

require('includes/utility/form_validation.php');
require('validations/cart_templates_validation.php');


/* extract template categories */
require('includes/classes/products_class.php');
$products_obj=new ProductsAdapter();
 $query="select * from products where product_id='$current_product_id'";
 $productsList=$products_obj->getSingleRecord($query);
//print_r($productsList);
$product_name_array=explode(" ",$productsList['productname']);
//print_r($product_name_array);
$smarty->assign("Name1",$product_name_array[0]);
$smarty->assign("Name2",$product_name_array[1]);
$smarty->display('biz_cart_templates.tpl');

?>
