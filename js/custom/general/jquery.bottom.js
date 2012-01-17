   
function newsletter_submit()
{
	var validate=false;
	var email = document.getElementById('newsletter_email');
	if(emailValidator(email, "Please enter a valid Email address")){
	validate= true;
	}
return validate;

}


function ns_change()
{
document.newsfrm.newsletter_email.value="";
}
