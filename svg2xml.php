<?php
$BackgroundTrackArray = array();
$LogoTrackArray = array();
$siteurl=$_SERVER['HTTP_REFERER'];
$siteurl=str_replace(basename($_SERVER['HTTP_REFERER']),"",$siteurl);
/* 	echo '<pre>';
 	
 	print_r($_REQUEST);
 	
 	echo '</pre>';
	
	die();  */
	
//===============================to count no of draggables and data from request=========================

$cr=count($_REQUEST['draggable_textt']);

$working_area=explode(",",$_REQUEST['workingarea']);

$inserid=$_REQUEST['editid'];

$foldername='';
$folderThumbname='';


$earvar='<?xml version="1.0" encoding="utf-8"?>';
	$earvar.='<Backgroundsection type="background" width="'.$_REQUEST['backwidth'].'" height="'.$_REQUEST['backheight'].'"';

	$earvar.=' />';
	for($k=0;$k<count($_REQUEST['draggable_textt']);$k++)
	{
		$path_parts = pathinfo($_REQUEST['draggable_textt'][$k]);

		isset($path_parts['extension']) ? $extension=$path_parts['extension'] : $extension='';
		/*
				$earvar.='<Text ';
				$htm=htmlentities($_REQUEST['draggable_textt'][$k], ENT_QUOTES);
				$earvar.=' id="draggable'.$k.'" ';
				$earvar.=' value="'.$htm.'" ';
				$earvar.=' fontsizevalue="'.$_REQUEST['fontsize_value'][$k].'" ';
				$earvar.=' XY="'.$_REQUEST['XY_value'][$k].'" ';
				$earvar.=' x="'.$_REQUEST['left_value'][$k].'" ';
				$earvar.=' y="'.$_REQUEST['top_value'][$k].'" ';
				$earvar.=' xorig="'.$_REQUEST['leftorig_value'][$k].'" ';
				$earvar.=' yorig="'.$_REQUEST['toporig_value'][$k].'" ';
				$earvar.=' width="'.$_REQUEST['width_value'][$k].'" ';
				$earvar.=' height="'.$_REQUEST['height_value'][$k].'" ';
				$earvar.=' color="'.$_REQUEST['color_value'][$k].'" ';
				$earvar.=' oldClass="'.(($_REQUEST['oldClass'][$k]) ? $_REQUEST['oldClass'][$k] : 'Arial').'" ';
				$earvar.=' linespace="'.$_REQUEST['line_space'][$k].'" ';
				$earvar.=' leftAlign="'.$_REQUEST['leftAlign'][$k].'" ';
				$earvar.=' rightAlign="'.$_REQUEST['rightAlign'][$k].'" ';
				$earvar.=' centerAlign="'.$_REQUEST['centerAlign'][$k].'" ';
				$earvar.=' justifyAlign="'.$_REQUEST['justifyAlign'][$k].'" ';
				$earvar.=' bordervalue="'. $_REQUEST['border_value'][$k] .'" ';
				$earvar.=' tintvalue="'.$_REQUEST['tint_value'][$k].'" ';
				$earvar.=' brightnessvalue="'.$_REQUEST['brightness_value'][$k].'" ';
				$earvar.=' saturationvalue="'.$_REQUEST['saturation_value'][$k].'" ';
				$earvar.=' contrastvalue="'.$_REQUEST['contrast_value'][$k].'" ';
				$earvar.=' />';
				
		*/
		
	}
		//$earvar.='</carml>';




$rand=time();
$xmlname= $rand.".xml";

/*$queryup="Insert into `userdetails` set
`bizxml`='".addslashes($earvar)."',`bizid`='".$_REQUEST['editid']."',`bizxmlname`='".$rand."'";
mysql_query($queryup);*/

//echo $queryup;die();


/*$filename = '../../cardfiles/admin'.$xmlname;


	$contents=$earvar;
	$handle1 = fopen($filename, "w");
	fwrite($handle1, $contents);
	fclose($handle1);*/



		
?>