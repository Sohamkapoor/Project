<%-- 
    Document   : NDCustomerEntry
    Created on : Nov 22, 2016, 5:20:56 PM
    Author     : sohamkapoor
--%>

<%@page import="Datab.Datab"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ND Customer </title>
    </head>
    <body>
        <%
            Datab db=new Datab();
            String name= request.getParameter("form-nameoc");
            String filledcc = request.getParameter("form-filledcv");
            String emptycc= request.getParameter("form-emptycv");
            String amtpaid=request.getParameter("form-counteramount");
            String amount=request.getParameter("form-amt");
            
            int filledcv= Integer.parseInt(filledcc);
            int emptycv = Integer.parseInt(emptycc);
            int amountpaid=Integer.parseInt(amtpaid);
            int amt=Integer.parseInt(amount);
            
            
        %>
    </body>
</html>
