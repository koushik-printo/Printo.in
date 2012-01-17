{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
{literal}
	<script>
		!window.jQuery && document.write('<script src="js/fancybox/jquery-1.4.3.min.js"><\/script>');
	</script>
    {/literal}
	<!--<script type="text/javascript" src="js/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
	<script type="text/javascript" src="js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
	<link rel="stylesheet" type="text/css" href="js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
 	<link rel="stylesheet" href="js/fancybox/style.css" /> -->
    {literal}
	<script type="text/javascript">
		$(document).ready(function() {

			/*
			*   Examples - various
			*/

			$("#various1").fancybox({
				'titlePosition'		: 'inside',
				'transitionIn'		: 'none',
				'transitionOut'		: 'none'
			});

			$("#various2").fancybox();

			$(".various3").fancybox({
				'width'				: '60%',
				'height'			: '40%',
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'type'				: 'iframe'
			});

			$("#various4").fancybox({
				'padding'			: 0,
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none'
			});
		});
	</script>
    
           <script type="text/javascript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
        </script>
        
    {/literal}
<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" > 
    <!--<div class="breadcrumb" ></div>-->
    <div class="content-box-main" >
      <div class="content-box-l" >
        {include file="user_left.tpl"}
      </div>
      <div class="content-box-r" >
        <div class="inner-wrapper" > 
        
          <!--products start-->
          <div class="products box-style-light-gray" >
            <h2 style="padding-left:0;">My <span>Orders</span></h2>
            
         
          
            <div class="listing_row">
            <table width="100%" border="0" cellspacing="1" cellpadding="5">
             <tr style="font-size:13px; font-weight:bold; color:#FFF;">
               <td width="16%" bgcolor="#229ed8">Order Date</td>
    <td width="16%" bgcolor="#229ed8">  Order No</td>
    <td width="24%" bgcolor="#229ed8">Final Price</td>
    <td width="20%" bgcolor="#229ed8">Order Status</td>
    <td width="24%" bgcolor="#229ed8">Tracking No / Service</td>
    </tr>
            {section name=nr loop=$ordersList}
  <tr bgcolor="{cycle values="#ebebeb,#f4f4f4"}">
    <td>{$ordersList[nr].orderdate}</td>
    <td><!--<a href="user_order_items.php?order_id={$ordersList[nr].orderid}" class="various3">{$ordersList[nr].orderdate} / {$ordersList[nr].orderid}</a> -->
    <a href="#" onclick="MM_openBrWindow('user_order_items.php?order_id={$ordersList[nr].orderid}&cart_id={$ordersList[nr].cartid}','','width=550,height=220')">{$ordersList[nr].cartid}</a>    </td>
    <td>{$ordersList[nr].finalprice}</td>
    <td>{$ordersList[nr].orderstatus}</td>
    <td>{if $ordersList[nr].trackingno ne ''} {$ordersList[nr].trackingno} / {$ordersList[nr].shippingpartner} {else} NA{/if}</td>
    </tr>
  {/section}
</table>
 </div>
            </div>
            
          <!--products end--> 
        </div>
      </div>
    </div>
  </div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}
