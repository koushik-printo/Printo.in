<div class="content-box-r" >
        <div class="inner-wrapper" > 
        
          <!--products start-->
          <div class="products box-style-light-gray" >
            <h2 style="color:#F0F;">Order Items - <span>Order ID : {$current_order_id}</span></h2>
            
         
          
            <div class="listing_row">
            <table width="100%" border="0" cellspacing="1" cellpadding="1">
            <tr bgcolor="#CCCCCC">
    <td style="color:#03F;">Product Name</td>
    <td style="color:#03F;">Template Name</td>
    <td style="color:#03F;">Qty</td>
    <td style="color:#03F;">Price</td>
  </tr>
            {section name=nr loop=$orderItemsList}
  <tr bgcolor="{cycle values="#ebebeb,#f4f4f4"}">
    <td>{$orderItemsList[nr].productname}</td>
    <td>{if $orderItemsList[nr].templatebasename neq ''}  {$orderItemsList[nr].templatebasename}  {else} Personalized Order {/if}</td>
    <td>{$orderItemsList[nr].quantity}</td>
    <td>{$orderItemsList[nr].price}</td>
  </tr>
  {/section}
</table>
 </div>
          </div>
            
          <!--products end--> 
        </div>
      </div>