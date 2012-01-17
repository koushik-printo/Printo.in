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
        {include file="left_nav.tpl"}
      </div>
      <div class="content-box-r" >
        <div class="inner-wrapper" > 
          <!--design start-->
          <div class="products box-style-light-gray" >
          <form action="" method="post" name="form1">
            <h2 style="padding-left:0;">Confirm <span>Order</span></h2>
            
           {if $cartDetails.cartid ne ''}
            <div class="listing_row">
            <table width="100%" border="0" cellspacing="1" cellpadding="5" class="common_text" align="center">
  <tr bgcolor="ebebeb" style="font-size:13px; font-weight:bold; color:#FFF;" >

    <td bgcolor="#229ed8"><strong>Product Preview</strong></td>
    <td bgcolor="#229ed8"><strong>Product Name</strong></td>
    <td bgcolor="#229ed8"><strong>Quantity</strong></td>
    <td bgcolor="#229ed8"><strong>Total Price</strong></td>
    </tr>
   {section name=nr loop=$cartitemsList}
   {assign var=tot_price value=$cartitemsList[nr].price}
   {assign var=prod_total value=$prod_total+$tot_price}
  <tr align="center" bgcolor="{cycle values="#ebebeb,#f4f4f4"}">
    <td>{if $cartitemsList[nr].templateid eq 0 && $cartitemsList[nr].formfields != "" && $cartitemsList[nr].productid != '18'}
    <img src="phpthumbaikya/phpThumb.php?src=../uploads/cart_img/{$cartitemsList[nr].cartitemid}.png&amp;w=150&amp;h=120" border="0" />
     {else if $cartitemsList[nr].templateid != 0 && $cartitemsList[nr].form_fields == "" && $cartitemsList[nr].productid != '18' && $cartitemsList[nr].productid != '17'}
    <img src="phpthumbaikya/phpThumb.php?src=../uploads/cart_img/{$cartitemsList[nr].cartitemid}.jpg&amp;w=150&amp;h=120" border="0" />
     {else if $cartitemsList[nr].templateid eq 0 && $cartitemsList[nr].formfields != ""   && $cartitemsList[nr].productid == '18'}
    <img src="images/calendarpips.png" width="150" height="100" border="0" />
     {else if $cartitemsList[nr].templateid != 0 && $cartitemsList[nr].form_fields == "" && $cartitemsList[nr].productid == '17'}
      <img src="images/calender/A5_500.png" width="150" height="100" border="0" />
    {else}
     <img src="images/NO-PREVIEW-AVAILABLE.jpg" width="150" height="100"/>
    {/if}</td>
    <td align="center">{$cartitemsList[nr].productname}</td>
    <td align="center">{$cartitemsList[nr].quantity}</td>
    <td align="center"><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> {$cartitemsList[nr].price}</td>
    </tr>
   {/section}
    {if $cartDetails.couponid ne '0'}

   <tr>
     <td colspan="2">&nbsp;</td>
     <td align="center" bgcolor="#CCCCCC">Coupon Discounts</td>
     <td align="center" bgcolor="#CCCCCC"><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> {$cartDetails.couponamount}
       <input type="hidden" name="coupon_amount" id="coupon_amount" value="{$cartDetails.couponamount}" />
       <input type="hidden" name="coupon_code" id="coupon_code" value="{$coupon_code}" />
       <input type="hidden" name="coupon_id" id="coupon_id" value="{$cartDetails.couponid}" />       </td>
     <td></td>
   </tr>
   {/if}
   <tr>
    <td colspan="2">&nbsp;</td>
    <td align="center" bgcolor="#CCCCCC"><strong>Shipping</strong></td>
    <td align="center" bgcolor="#CCCCCC"><span class="WebRupee" style="padding:0; margin:0;"><strong>Rs.</strong></span> <strong>{$cartDetails.shippingcharge}</strong></td>
    </tr>
    

   <tr>
    <td colspan="2" align="right">(Karnataka 5% and Other State 14%)</td>
    <td align="center" bgcolor="#CCCCCC"><strong>Taxes</strong></td>
    <td align="center" bgcolor="#CCCCCC"><span class="WebRupee" style="padding:0; margin:0;"><strong>Rs.</strong></span> <strong><!--{$cartDetails.shippingcharge}-->{$taxAmount}</strong></td>
    </tr>
  
  <tr>
    <td colspan="2">&nbsp;</td>
    <td colspan align="center" bgcolor="#CCCCCC"><strong>Total</strong></td>
    <td align="center" bgcolor="#CCCCCC"><span class="WebRupee" style="padding:0; margin:0;"><strong>Rs. </strong></span><strong>{$sub_total}</strong>
            <input type="hidden" name="sub_total" id="sub_total" value="{$sub_total}" />
            <input type="hidden" name="cart_id" id="cart_id" value="{$cartDetails.cartid}" />
            <input type="hidden" name="total_weight" id="total_weight" value="{$total_weight}" />
            <input type="hidden" name="prod_total" id="prod_total" value="{$prod_total}" />    
     </td>
    </tr>
</table>
            </div>
            
            {if $cartDetails.couponid eq '0'}
            <div class="listing_row" style="padding-top:5px;">
             <span style="float:left; line-height:29px; padding-right:5px;">Coupon :</span>
             <span style="float:left; padding-right:5px;"><input type="text" name="coupon_code" id="coupon_code" /></span>
             <span style="float:left; margin-top:-10px;"><input name="ApplyCoupon" type="image" src="images/btn_apply.jpg" style="background:none; border:none; padding:0; " /></span>
             <div style="clear:both"></div>
             
            {if $err_msg ne ''}
             <div class="listing_row" style="float:left; padding-left:55px; color:#F00;">
             {$err_msg}
             </div>
             {/if}
             <div style="clear:both"></div>
       </div>
             {/if}
             
            {else}
           
            <div class="listing_row">
<strong>            Sorry, there are no items in your cart. : -( </strong>
            </div>
            {/if}
            
            
          </form>
          
           <div class="listing_row">
            <div class="listing_column1">&nbsp;</div>
            <div class="listing_column2">&nbsp;</div>
            <div class="listing_column3" style="padding:0; float:right; width:auto;">
  	<form  method="post" action="https://secure.ebs.in/pg/ma/sale/pay/" name="frmTransaction" id="frmTransaction">

        <input name="account_id" type="hidden" value="{$cur_account_id}">
        
        <input name="return_url" type="hidden" size="60" value="{$cur_return_url}" />
        
        <input name="mode" type="hidden" size="60" value="{$cur_mode}" />
        
        <input name="reference_no" type="hidden" value="{$cur_reference_no}" />
        
        <input name="amount" type="hidden" value="{$cur_amount}" />
        
        <input name="description" type="hidden" value="{$cur_description}" />
        
        <input name="name" type="hidden" value="{$cur_name}" />
        
        <input name="address" type="hidden" value="{$cur_address}" />
        
        <input name="city" type="hidden" value="{$cur_city}" />
        
        <input name="state" type="hidden" value="{$cur_state}" />
        
        <input name="postal_code" type="hidden" value="{$cur_postal_code}" />
        
        <input name="country" type="hidden" value="{$cur_country}" />
        
        <input name="email" type="hidden" value="{$cur_email}" />
        
        <input name="phone" type="hidden" value="{$cur_phone}" />
        
        <input name="ship_name" type="hidden" value="{$cur_ship_name}" />
        
        <input name="ship_address" type="hidden" value="{$cur_ship_address}" />
        
        <input name="ship_city"  type="hidden" value="{$cur_ship_city}" />
        
        <input name="ship_state"  type="hidden" value="{$cur_ship_state}" />
        
        <input name="ship_postal_code" type="hidden" value="{$cur_ship_postal_code}" />
        
        <input name="ship_country" type="hidden" value="{$cur_ship_country}" />
        
        <input name="ship_phone" type="hidden" value="{$cur_ship_phone}" />
	
	<!--<input name="submitted" value="EBS Payment" type="submit" />-->
     <input name="submitted" type="image" src="images/btn_proceed-2-pay.jpg" style="background:none; border:none; padding:0; " />
</form>
           </div>
            </div>
            
          </div>
          <!--design end--> 
         
        </div>
      </div>
    </div>
  </div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}
