<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>INLINE FRAME GET</title>
    <script>
    function requestCustomerInfo()
    {
        var sid=document.getElementById("Customer id").value;
        top.frames["hiddenframes"].location="GetCustomerData.jsp?id="+sid;
    }
    function displayCustomerInfo(sText)
    {
        var CustomerInfo=document.getElementById("CustomerId");
        CustomerInfo.innerHTML=sText;
    }
    </script>
</head>
<body>
    <p>ENTER CUSTOMER ID TO GET DETAILS</p>
    <input type="text" id="Customer id" value="CUSTOMER ID">
    <input type="button" onclick="requestCustomerInfo" value="GET CUSTOMER INFO">
    <div id="CustomerInfo"></div>
    <iframe src="about:blank" name="hiddenframe" style="display:none"></iframe>
</body>
</html>
