<!--#Include File = "sfa/PGResponse.asp"-->


<%
	Dim oPGResponse
	Dim respcd,respmsg,TxnID,ePGTxnID,AuthIdCode,ReturnToURL
	Dim astrResponseData,astrClearData
	Dim strMerchantId,astrFileName
	Dim strKey
	dim ResponseCode

	strMerchantId="00003177"
	astrFileName="C:\epg\icici\00003177.key"

	' this is the path of the merchants key file..please use appropriate path as used on your Server where SFA is installed..


	if Request.ServerVariables("HTTP_METHOD")="POST" then
		astrResponseData= Request.Form("DATA")
		astrClearData= validateEncryptedData(astrResponseData,astrFileName,strMerchantId)
		Set oPGResponse = New PGResponse
		oPGResponse.getResponse(astrClearData)
		respcd=CStr(oPGResponse.getRespCode())
		'if (respcd = 0) then
		'	ResponseCode = "0"
		'elseif (respcd = 1) then
		'	ResponseCode = "1"
		'else
		'	ResponseCode = "2"
		'end if 			
		ReturnToURL="http://print.iway.printo.in/newsway/Versions/250/Site/IWay/App/Payment/PaySeal/status.asp"
		'oPGResponse.getExt1()
		respmsg=oPGResponse.getRespMessage()
		TxnID=oPGResponse.getTxnId()
		ePGTxnID=oPGResponse.getEpgTxnId()
		AuthIdCode=oPGResponse.getAuthIdCode()
	end if

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
<html xmlns = "http://www.w3.org/1999/xhtml">
<head>
    <title>SFA - Response from ePG Web Server</title>


    <script language="javascript" type="text/javascript">

    function doPageLoad() 
    {
	    pForm.submit();
    }

    </script>
</head>

<body onload="doPageLoad()">


    <form id="pForm" method="POST" target="_top" action="<% = ReturnToURL %>"> 
		<input type="hidden" name="RESPONSE_CODE" value="<% = respcd %>">
		<input type="hidden" name="RESPONSE_MSG" value="<% = respmsg %>">
		<input type="hidden" name="EPG_TRANSACTION_ID" value="<% = ePGTxnID %>">
		<input type="hidden" name="MER_TRANSACTION_ID" value="<% = TxnID %>">
		<input type="hidden" name="AUTH_ID" value="<% = AuthIdCode %>">
    </form>

</body>
</html>