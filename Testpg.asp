<!--#Include File = "Sfa/include.asp"-->
<%

 Dim oPostLib
 Set oPostLib = New PostLib
 Dim oCI, oMPI, oMerchant, oBTA, oSTA

 Set oCI = New CardInfo
 Set oMPI = New MPIData
 Set oMerchant = New Merchant
 Set oBTA = New BillToAddress
 Set oSTA = New ShipToAddress


 oMerchant.setMerchantDetails "00003177","00003177","00003177","76.74.159.193",CLng(DateDiff("s", "01/01/1970 00:00:00", Now)),"Ord123","http://payment.printo.in/response.asp","POST","INR","INV123","req.Preauthorization","1","GMT+05:30","Ext1","true","Ext3","Ext4","Ext5"

' oMerchant.setMerchantDetails "00001002","00001002","00001002","192.200.8.89",CLng(DateDiff("s", "01/01/1970 00:00:00", Now)),"Ord123","http://10.0.25.242/response.asp","POST","INR","INV123","req.Preauthorization","2","GMT+05:30","Ext1","true","Ext3","Ext4","Ext5"

Dim oPGResp
Set oPGResp=oPostLib.postSSL (oMPI,oMerchant,oBTA,oSTA)
If oPGResp.getRedirectionUrl() <> "" Then
	strResponseURL=oPGResp.getRedirectionUrl()
	Response.Redirect strResponseURL
else
	Response.Write "Response code:" & oPgResp.getRespCode() & "<br>"
	Response.Write "Response message:" & oPgResp.getRespMessage() & "<br>"

End If

%>


</BODY>
</HTML>




