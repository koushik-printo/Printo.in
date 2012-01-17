
function myformchange()
{
	if(document.form1.ship.checked)
	{
		
		if(document.getElementById('billing_country_2').checked)
		$('#shipping_country_2').click();
		else if(document.getElementById('billing_country_1').checked)
		$('#shipping_country_1').click();
		document.form1.shipping_fname.value=document.form1.billing_fname.value;
		document.form1.shipping_lname.value=document.form1.billing_lname.value;
		document.form1.shipping_address1.value=document.form1.billing_address1.value;
		document.form1.shipping_address2.value=document.form1.billing_address2.value;
		
		if(document.form1.billing_statetext.value=='' && document.getElementById('billing_state').value!=0){
		document.getElementById('shipping_statetext').value=document.getElementById('billing_state').value;
		document.getElementById('shipping_state_').value=document.getElementById('billing_state').value;
		document.getElementById('shipping_state').value=document.getElementById('billing_state').value;}
		else{
		document.getElementById('shipping_statetext').value=document.getElementById('billing_statetext').value;
		document.getElementById('shipping_state_').value=document.getElementById('billing_state').value;
		document.getElementById('shipping_state').value=document.getElementById('billing_statetext').value;}
		
		
		
		document.form1.shipping_pincode.value=document.form1.billing_pincode.value;
		document.form1.shipping_city.value=document.form1.billing_city.value;
		document.form1.shipping_phone.value=document.form1.billing_phone.value;
		document.form1.countryVal1.value=document.form1.countryVal.value;
		if(document.form1.countryVal.value!='' && document.form1.countryVal.style.display=='block'){
		document.getElementById('shipping_country_2').checked=true;
		document.getElementById('shipping_country_2').value=document.getElementById('billing_country_2').value;
		$('.countryTr1').show();
		$('#shipping_state_').attr('disabled','disabled').css('display','none');
		$('#shipping_statetext').removeAttr('disabled').css('display','block');
		document.getElementById('shipping_statetext').value=document.getElementById('billing_statetext').value;
		}
		
		document.getElementById('req_servedAt').options[0].selected=true;
		
		$('#shipping_fname').removeAttr('readonly');
		$('#shipping_lname').removeAttr('readonly');
		$('#shipping_address1').removeAttr('readonly');
		$('#shipping_address2').removeAttr('readonly');
		$('#shipping_pincode').removeAttr('readonly');
		$('#shipping_city').removeAttr('readonly');
		$('#shipping_state_').removeAttr('disabled');
		$('#shipping_phone').removeAttr('readonly');
	}
	else
	{
		document.form1.shipping_fname.value="";
		document.form1.shipping_lname.value="";
		document.form1.shipping_address1.value="";
		document.form1.shipping_address2.value="";
		document.form1.shipping_state_.value="";
		document.form1.shipping_state.value="";
		document.form1.shipping_pincode.value="";
		document.form1.shipping_city.value="";
		document.form1.shipping_phone.value="";
		document.form1.shipping_country.value="";
		
		$('#shipping_fname').removeAttr('readonly');
		$('#shipping_lname').removeAttr('readonly');
		$('#shipping_address1').removeAttr('readonly');
		$('#shipping_address2').removeAttr('readonly');
		$('#shipping_pincode').removeAttr('readonly');
		$('#shipping_city').removeAttr('readonly');
		$('#shipping_state_').removeAttr('disabled');
		$('#shipping_phone').removeAttr('readonly');
	}
}


$(function(){ 

$('#req_servedAt').change(function(){
	var store_id=$('#req_servedAt').val();
	if(store_id!="NO")
			$.ajax({
			type: 'GET',
			url: 'storefetch.php',
			data: 'action=post&store_id='+store_id ,
			cache: false,
			async: false,
			success: function(result) {

				
				if(result)
				{ //alert(result)
				
					var newArr=result.split('::'),
					shipping_fname=newArr[1],
					shipping_lname=newArr[7],
					shipping_address1=newArr[2]+". "+newArr[3],
					shipping_address2=newArr[4],
					shipping_pincode=newArr[5],
					shipping_city=newArr[9],
					shipping_state=newArr[10],
					shipping_phone=newArr[11];
				
					
					$('#shipping_fname').val(shipping_fname).attr('readonly','true');
					$('#shipping_lname').val(shipping_lname).attr('readonly','true');
					$('#shipping_address1').val(shipping_address1).attr('readonly','true');
					$('#shipping_address2').val(shipping_address2).attr('readonly','true');
					$('#shipping_pincode').val(shipping_pincode).attr('readonly','true');
					$('#shipping_city').val(shipping_city).attr('readonly','true');
					
					
					if(shipping_state=='Karnataka'){
					$('#shipping_state_').val(17);
					$('#shipping_statetext').val(shipping_state);
					$('#shipping_state').val(17);
					}		
					$('#shipping_phone').val(shipping_phone).attr('readonly','true');
					$('#ship').attr('checked','');
					
					

				}
				else
				{



				}
			},
			error: function() {
			alert("Error");

			}
			
			});
	
});

$('.choise').click(function(){		//alert($(this).val());
	
	if($(this).val()=='1'){
		
		$('#delivDrop').css('display','block');
		$('#delivCheck').css('display','none');
		}
else{

		$('#delivDrop').css('display','none');
		$('#delivCheck').css('display','block');
		}
	
	
	});
$('#billing_state').change(function(){
	
	$(this).parent().find('span').html('');
	
	});
$('#billing_statetext').change(function(){
	

	$(this).parent().find('span').html('');
	
	});
	
$('#shipping_state_').change(function(){
	
	$('#shipping_state').val($('#shipping_state_').val());
	$(this).parent().find('span').html('');
	
	});
$('#shipping_statetext').change(function(){
	
	$('#shipping_state').val($('#shipping_statetext').val());
	$(this).parent().find('span').html('');
	
	});
	
$('#countryVal').keyup(function(){
	
	var elemVal=$(this).val();
	$('#billing_country_2').val(elemVal);
	
	}).bind('change',function(){
		
	var elemVal=$(this).val();
	$('#billing_country_2').val(elemVal);	
		
	});
	
	$('#countryVal1').keyup(function(){
	
	var elemVal=$(this).val();
	$('#shipping_country_2').val(elemVal);
	
	}).bind('change',function(){
		
	var elemVal=$(this).val();
	$('#shipping_country_2').val(elemVal);	
		
	});

}); 
function countryOther(Id,idVal){

if(idVal!='India'){
$('.countryTr').show();
$('#billing_state').css('display','none').attr('disabled','disabled').val(0);
$('#billing_statetext').removeAttr('disabled').css('display','block').css('position','absolute').val('');
$('#othBilCnt').html('');
}
else if(idVal!='International') {
$('.countryTr').hide();	
$('#billing_statetext').attr('disabled','disabled').css('display','none').val('');
$('#billing_state').removeAttr('disabled').css('display','block').css('position','absolute').val(0);
$('#othBilCnt').html('');

}
}
function countryOther1(Id,idVal){

if(idVal!='India'){
$('.countryTr1').show();
$('#shipping_state_').attr('disabled','disabled').css('display','none').val(0);
$('#shipping_state').val('');
$('#shipping_statetext').removeAttr('disabled').css('display','block').css('position','absolute').val('');
$('#othShpCnt').html('');
}
else if(idVal!='International') {
$('.countryTr1').hide();
$('#shipping_statetext').attr('disabled','disabled').css('display','none').val('');	
$('#shipping_state_').removeAttr('disabled').css('display','block').css('position','absolute').val(0);
$('#shipping_state').val('');
$('#othShpCnt').html('');

}
}

function checkDataUserInfo()
{

var shipping_fname=document.form1.shipping_fname.value,
billing_fname=document.form1.billing_fname.value,
shipping_lname=document.form1.shipping_lname.value,
billing_lname=document.form1.billing_lname.value,
shipping_address1=document.form1.shipping_address1.value,
billing_address1=document.form1.billing_address1.value,
shipping_address2=document.form1.shipping_address2.value,
billing_address2=document.form1.billing_address2.value,
/*shipping_state_=document.form1.shipping_state_.value,
billing_state=document.form1.billing_state.value,*/
shipping_state=document.form1.shipping_state.value,
billing_state=document.form1.billing_state.value,
shipping_pincode=document.form1.shipping_pincode.value,
billing_pincode=document.form1.billing_pincode.value,
shipping_city=document.form1.shipping_city.value,
billing_city=document.form1.billing_city.value,
shipping_phone=document.form1.shipping_phone.value,
billing_phone=document.form1.billing_phone.value,
shipping_country=document.form1.shipping_country.value,
billing_country=document.form1.billing_country.value,
shipping_countryval=document.form1.countryVal1.value,
billing_countryval=document.form1.countryVal.value,
shipping_state_='',
billing_state='';

document.getElementById('shipping_state_').value==0 ? shipping_state_=document.getElementById('shipping_statetext').value : shipping_state_=document.getElementById('shipping_state_').value,
document.getElementById('billing_state').value==0 ? billing_state=document.getElementById('billing_statetext').value : billing_state=document.getElementById('billing_state').value;



var chk = true;


if (shipping_fname == "" || !shipping_fname.match(/\w/)) {
    $('#shipping_fname').next().next().html(' Enter Shipping First Name ');
    chk = false
}
else
{
	$('#shipping_fname').next().next().html('');
    
}
if (billing_fname == "" || !billing_fname.match(/\w/)) {
    $('#billing_fname').next().next().html(' Enter First Name ');
    chk = false
}
else
{
	$('#billing_fname').next().next().html('');
    
}
if (shipping_lname == "" || !shipping_lname.match(/\w/)) {
    $('#shipping_lname').next().next().html(' Enter Shipping Last Name ');
    chk = false
}
else
{
	$('#shipping_lname').next().next().html('');
    
}
if (billing_lname == "" || !billing_lname.match(/\w/)) {
    $('#billing_lname').next().next().html(' Enter Last Name ');
    chk = false
}
else
{
	$('#billing_lname').next().next().html('');
    
}
if (shipping_address1 == "" || !shipping_address1.match(/\w/)) {
    $('#shipping_address1').next().next().html(' Enter Shipping Address Line 1');
    chk = false
}
else
{
	$('#shipping_address1').next().next().html('');
    
}
if (billing_address1 == "" || !billing_address1.match(/\w/)) {
    $('#billing_address1').next().next().html(' Enter Address Line 1');
    chk = false
}
else
{
	$('#billing_address1').next().next().html('');
    
}
if (shipping_address2 == "" || !shipping_address2.match(/\w/)) {
    $('#shipping_address2').next().next().html(' Enter Shipping Address Line 2');
    chk = false
}
else
{
	$('#shipping_address2').next().next().html('');
    
}
if (billing_address2 == "" || !billing_address1.match(/\w/)) {
    $('#billing_address2').next().next().html(' Enter Address Line 2');
    chk = false
}
else
{
	$('#billing_address2').next().next().html('');
    
}
if (shipping_state_ == "" || shipping_state_==0 || !shipping_state_.match(/\w/)) {
    $('#shipping_state').next().next().html(' Enter Shipping State ');
    chk = false
}
else
{
	$('#shipping_state').next().next().html('');
    
}
if (billing_state == "" || billing_state==0 || !billing_state.match(/\w/)) {
    $('#billing_state').next().next().html(' Enter State ');
    chk = false
}
else
{
	$('#billing_state').next().next().html('');
    
}
if (shipping_pincode == "" || !shipping_pincode.match(/\w/) || IsNumeric(shipping_pincode) == false || shipping_pincode.length < 6) {
    $('#shipping_pincode').next().next().html(' Check Shipping Pincode / Zip');
    chk = false
}
else
{
	$('#shipping_pincode').next().next().html('');
    
}
if (billing_pincode == "" || !billing_pincode.match(/\w/) || IsNumeric(billing_pincode) == false || billing_pincode.length < 6) {
    $('#billing_pincode').next().next().html(' Check Pincode / Zip');
    chk = false
}
else
{
	$('#billing_pincode').next().next().html('');
    
}
if (shipping_city == "" || !shipping_city.match(/\w/)) {
    $('#shipping_city').next().next().html(' Enter Shipping Locality / City');
    chk = false
}
else
{
	$('#shipping_city').next().next().html('');
    
}
if (billing_city == "" || !billing_city.match(/\w/)) {
    $('#billing_city').next().next().html(' Enter Locality / City');
    chk = false
}
else
{
	$('#billing_city').next().next().html('');
    
}
if (shipping_phone == "" || !shipping_phone.match(/\w/) || IsNumeric(shipping_phone) == false || shipping_phone.length < 9) {
    $('#shipping_phone').next().next().html(' Check Phone Number ');
    chk = false
}
else
{
	$('#shipping_phone').next().next().html('');
    
}
if (billing_phone == "" || !billing_phone.match(/\w/) || IsNumeric(billing_phone) == false || billing_phone.length < 9) {
    $('#billing_phone').next().next().html(' Check Phone Number ');
    chk = false
}
else
{
	$('#billing_phone').next().next().html('');
    
}

if (document.getElementById('countryVal').style.display != "none" &&  billing_countryval=="Select Country") {
    $('#othBilCnt').html(' Enter Billing Country ');
    chk = false
}
else
{
	$('#othBilCnt').next().next().html('');
    
}

if (document.getElementById('countryVal1').style.display != "none" &&  shipping_countryval=="Select Country") {
    $('#othShpCnt').html(' Enter Shipping Country ');
    chk = false
}
else
{
	$('#othShpCnt').next().next().html('');
    
}
if (document.getElementById('countryVal').style.display == "none") {
    $('#othBilCnt').html('');
    
}
if (document.getElementById('countryVal1').style.display == "none") {
    $('#othShpCnt').html('');
    
}


return chk;



}
