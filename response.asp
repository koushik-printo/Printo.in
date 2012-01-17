<!doctype html public "-//w3c/dtd HTML 4.0//en">
<!--#Include File = "sfa/PGResponse.asp"-->
<html>
<head>
    <title>SFA - Response from ePG Web Server</title>
</head>
<body>

<%
	Dim oPGResponse
	Dim respcd,respmsg,TxnID,ePGTxnID,AuthIdCode
	Dim astrResponseData,astrClearData
	Dim strMerchantId,astrFileName
	Dim strKey

	strMerchantId="00003177"
	astrFileName="C:\epg\icici\00003177.key"

	' this is the path of the merchants key file..please use appropriate path as used on your Server where SFA is installed..


	if Request.ServerVariables("HTTP_METHOD")="POST" then
		astrResponseData= Request.Form("DATA")
		astrClearData= validateEncryptedData(astrResponseData,astrFileName,strMerchantId)
		Set oPGResponse = New PGResponse
		oPGResponse.getResponse(astrClearData)
		respcd=oPGResponse.getRespCode()
		respmsg=oPGResponse.getRespMessage()
		TxnID=oPGResponse.getTxnId()
		ePGTxnID=oPGResponse.getEpgTxnId()
		AuthIdCode=oPGResponse.getAuthIdCode()
	end if
%>
	<h3>Response code is 	: <%=respcd%></h3>
	<h3>Response Message is 	: <%=respmsg%></h3>
	<h3>ePG Transaction ID : <%=ePGTxnID%></h3>
	<h3>Merchant Transaction ID : <%=TxnID%></h3>
	<h3>Auth ID		: <%=AuthIdCode%></h3>
<%
	Function validateEncryptedData(astrResponseData,astrFileName,strMerchantId)
		Set fs = CreateObject("Scripting.FileSystemObject")
		Set wfile = fs.OpenTextFile(astrFileName)
		strModulus = wfile.ReadLine
		strModulus=decryptMerchantKey(strModulus,strMerchantId)
		strExponent = wfile.ReadLine
		strExponent=decryptMerchantKey(strExponent,strMerchantId)
		wfile.close
		Set wfile=nothing
		Set fs=nothing
		Dim oEPGMerchantEncryptionLib
		Set oEPGMerchantEncryptionLib= GetObject("java:com.opus.epg.sfa.java.EPGMerchantEncryptionLib")
		validateEncryptedData=oEPGMerchantEncryptionLib.decryptDataWithPrivateKeyContents(astrResponseData,strModulus,strExponent)
	End Function

	Function decryptMerchantKey(strData, strMerchantId)
		strMerchantId=strMerchantId&strMerchantId
		strKey=Mid(strMerchantId,1,16)
		decryptMerchantKey=decryptData(strData,strKey)
	End Function

	Function decryptData(strData,strKey)
	   	Dim oEPGCryptLib
		Set oEPGCryptLib=GetObject("java:com.opus.epg.sfa.java.EPGCryptLib")
		decryptData=oEPGCryptLib.Decrypt(strKey, strData)
	End Function
%>
</body>
</html>