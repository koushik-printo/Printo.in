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
            <h2 style="padding-left:0; float:left;">View <span>Cart</span></h2>
            {if $cartDetails.cartid ne ''}
            <div style="float:right; padding:0;  width:auto; margin-right:-7px;" class="listing_column3"><input type="image" style="background:none; border:none; padding:0; " src="images/btn_proceed-2-checkout.jpg" name="ProceedCheckout"></div>
            {/if}
            <div class="clear-both"></div>
            
            
            
            
           {if $cartDetails.cartid ne ''}
            <div class="listing_row">
            <table width="100%" border="0" cellspacing="1" cellpadding="5" class="common_text">
  <tr style="font-size:13px; font-weight:bold; color:#FFF;">
    <td width="32%" bgcolor="#229ed8"><strong>Template Image</strong></td>
    <td width="23%" bgcolor="#229ed8"><strong>Product Name</strong></td>
    <td width="20%" bgcolor="#229ed8"><strong>Quantity</strong></td>
    <td width="18%" bgcolor="#229ed8"><strong>Price</strong></td>
    <td width="7%" bgcolor="#229ed8"><strong>Remove</strong></td>
  </tr>
   {section name=nr loop=$cartitemsList}
   {assign var=tot_price value=$cartitemsList[nr].quantity*$cartitemsList[nr].price}
   {assign var=sub_total value=$sub_total+$cartitemsList[nr].price}
   
   {assign var=total_weight value=$total_weight+$cartitemsList[nr].weight}
   
  <tr bgcolor="{cycle values="#ebebeb,#f4f4f4"}">
    <td>
   
    {if $cartitemsList[nr].templateid eq 0 && $cartitemsList[nr].formfields != ""   && $cartitemsList[nr].productid != '18'}
    <img src="phpthumbaikya/phpThumb.php?src=../uploads/cart_img/{$cartitemsList[nr].cartitemid}.png&w=150&h=120" border="0" />
    {else if $cartitemsList[nr].templateid != 0 && $cartitemsList[nr].form_fields == "" && $cartitemsList[nr].productid != '18' && $cartitemsList[nr].productid != '17'}
    <img src="phpthumbaikya/phpThumb.php?src=../uploads/cart_img/{$cartitemsList[nr].cartitemid}.jpg&w=150&h=120" border="0" />
    {else if $cartitemsList[nr].templateid eq 0 && $cartitemsList[nr].formfields != ""   && $cartitemsList[nr].productid == '18'}
    <img src="images/calendarpips.png" width="150" height="100" border="0" />
     {else if $cartitemsList[nr].templateid != 0 && $cartitemsList[nr].form_fields == "" && $cartitemsList[nr].productid == '17'}
      <img src="images/calender/A5_500.png" width="150" height="100" border="0" />
    {else}
   		 <img src="images/NO-PREVIEW-AVAILABLE.jpg" width="150" height="100"/>
    {/if}  
     </td>
    <td >{$cartitemsList[nr].productname}</td>
    <td>
    {$cartitemsList[nr].quantity}
    {if $cartitemsList[nr].templateid ne 0 && $cartitemsList[nr].productid != '18'}
        <a href="cart_design_confirm.php?c=y&pid={$cartitemsList[nr].productid}&tid={$cartitemsList[nr].templateid}&itemid={$cartitemsList[nr].cartitemid}"><br /><font size="-2">change</font></a>{else if $cartitemsList[nr].templateid == 0 && $cartitemsList[nr].productid == '18'}
         <a href="corporate_calendarsbasic.php?c=t&pid=18&itemid={$cartitemsList[nr].cartitemid}"><br /><font size="-2">change</font></a>
         {else}
         <a href="cart_user_files_confirm.php?itemid={$cartitemsList[nr].cartitemid}"><br /><font size="-2">change</font></a>
        {/if}</td>
    <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> {$cartitemsList[nr].price}</td>
    <td><a href="viewcart.php?act=rm&itemid={$cartitemsList[nr].cartitemid}"><img src="images/remove.png" width="12" height="12" border="0" style="padding-left:18px;"/></a></td>
  </tr>
   {/section}
  
   <tr>
    <td colspan="2"></td>
    <td> Total</td>
    <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> {$sub_total}
      <input type="hidden" name="sub_total" id="sub_total" value="{$sub_total}" />
      <input type="hidden" name="cart_id" id="cart_id" value="{$cartDetails.cartid}" />
      <input type="hidden" name="total_weight" id="total_weight" value="{$total_weight}" /></td>
    <td></td>
  </tr>
</table>
            </div>
            
             <div class="listing_row">
             &nbsp;
             </div>
            
            <div class="listing_row">
            <div class="listing_column1" style="padding:0; width:auto;"><a href="index.php" ><img src="images/btn_cont-shopping.jpg" /></a></div>
            <!--<div class="listing_column2"><input name="UpdateQty" type="submit" value="Update Quantity" /></div> -->
            <div class="listing_column3" style="float:right; padding:0;  width:auto;"><input name="ProceedCheckout" type="image" src="images/btn_proceed-2-checkout.jpg" style="background:none; border:none; padding:0; " /></div>
            </div>
            {else}
           
            <div class="listing_row">
            No items in your cart
            </div>
            {/if}
            
            
            
          </form>
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
