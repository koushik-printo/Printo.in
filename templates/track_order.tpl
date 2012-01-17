{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" > 
    <!--<div class="breadcrumb" ></div>-->
    <div class="content-box-main" >
      <div class="content-box-l" >
        {include file="left_nav.tpl"}      </div>
      <div class="content-box-r" >
        <div class="inner-wrapper" > 
        
          <!--products start-->
          <div class="products box-style-light-gray" >
            <h3>Track Order </h3>
         
            <div class="listing_row">
			
			<form name="frm" action="" method="post">
			
            <table width="100%" border="0" cellspacing="1" cellpadding="1">
            <tr bgcolor="#CCCCCC">
            <td >Order Code</td>
            <td>Order Date</td>
            <td>Product</td>
            <td>Quantity</td>
            <td>Status</td>
  </tr>
            {section name=nr loop=$ordersList}
			
			{assign var=val value=$val+1}
  <tr bgcolor="{cycle values="#ebebeb,#f4f4f4"}">
    <td>{$ordersList[nr].cartid}</td>
    <td>{$ordersList[nr].orderdate}</td>
    <td>{$ordersList[nr].productname}</td>
    <td>{$ordersList[nr].quantity}</td>
    <td>{$ordersList[nr].orderstatus}</td>
  </tr>
   
  
  {/section}
  
  
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align="right">
    {if $sessuid eq ''}
    <a href="user_login.php?act=track">More details &gt;&gt;</a>
    {else}
    <a href="user_orders.php">More details &gt;&gt;</a>
    {/if}
    </td>
  </tr>
</table>
			</form>
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
