<!--#Include File = "Sfa/include.asp"-->

<%

    Dim oPostLib
    Set oPostLib = New PostLib
    Dim oCI, oMPI, oMerchant, oBTA, oSTA

    Set oCI = New CardInfo
    Set oMPI = New MPIData

    Set oBTA = New BillToAddress
    Set oSTA = New ShipToAddress

    ' get parameters passed from iWay
    dim MerchantID, RerurnURL, TransactionID, ResponseMethod, CurrencyCode, MessageType, TotalAmount 
    MerchantID = Request.Form("PAYSEAL_ID")
    RerurnURL = Request.Form("RETURN_URL")
    TransactionID = Request.Form("TRANSACTION_ID")
    ResponseMethod = Request.Form("RESPONSE_METHOD")
    CurrencyCode = Request.Form("CURRENCY")
    MessageType = Request.Form("MSG_TYPE")
    TotalAmount = Request.Form("AMOUNT")

    ' create the Merchant 
    Set oMerchant = New Merchant
    oMerchant.setMerchantDetails MerchantID,MerchantID,MerchantID,"",TransactionID,"","http://pg.printo.in/iWayResponse.asp",ResponseMethod,CurrencyCode,"",MessageType,TotalAmount,"GMT+05:30",RerurnURL,"true","Ext3","Ext4","Ext5"



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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Test</title>
</head>
<body>
</body>
</html>




