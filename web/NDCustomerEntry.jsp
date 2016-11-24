<%-- 
    Document   : NDCustomerEntry
    Created on : Nov 22, 2016, 5:20:56 PM
    Author     : sohamkapoor
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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
            try{
            Datab db=new Datab();
            String name= request.getParameter("form-nameoc");
            String phno = request.getParameter("form-phno");
            String filledcc = request.getParameter("form-filledcv");
            String emptycc= request.getParameter("form-emptycv");
            String amtpaid=request.getParameter("form-counteramount");
            String amount=request.getParameter("form-amt");
            String advdate= request.getParameter("datepicker");
            String transaction= request.getParameter("typeoftransaction");
            String chequeno = request.getParameter("form-chequeno");
            String security = request.getParameter("form-security");
            DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
            String sql="";
            Date today = new Date();
            String tod=formatter.format(today);
            int filledcv= Integer.parseInt(filledcc);
            int emptycv = Integer.parseInt(emptycc);
            int amountpaid=Integer.parseInt(amtpaid);
            int amt=Integer.parseInt(amount);
            int amo=0,finalamt=0,cvd=0,finalcv=0;
            int diffcv= filledcv - emptycv  ;
            int diffamt=  amt - amountpaid ;
            sql="select osamt,cvdue from nondomestic where name ='"+name+"'and phno ='"+phno+"'";
            db.rs = db.st.executeQuery(sql);
            while(db.rs.next())
            {
                String osamt= db.rs.getString("osamt");
                String cv=db.rs.getString("cvdue");
                amo=Integer.parseInt(osamt);
                cvd=Integer.parseInt(cv);
                finalamt += amo;
                finalcv += cvd;
            }   
            finalamt += diffamt;
            finalcv += diffcv;
             sql="insert into nondomestic (name,filled,empty,amount,amountpaid,chequeno,osamt,cvdue,transaction,daytoday,phno,advdate)values('"+name+"','"+filledcc+"','"+emptycc+"','"+amount+"','"+amtpaid+"','"+chequeno+"','"+diffamt+"','"+diffcv+"','"+transaction+"','"+tod+"','"+phno+"','"+advdate+"')";
             db.conn.createStatement();
             db.st.executeUpdate(sql);
             System.out.println("row inserted");
        %>
        <h3>Name :- <%= name %> </h3> <p align="right"><h3> Phone number :- <%= phno%></h3></p>
        <table border="1px">
            <tr>
                <th>Outstanding Amount</th>
                <th>Due CV</th>
                <th>Filled </th>
                <th>Empty </th>
                <th>Amount</th>
                <th>Amount Paid</th>
                <th>Transaction Type</th>
                <th>Date Of Transaction</th>              
            </tr>
            <tr>
                <td><%= diffamt %></td>
                <td><%= diffcv %></td>
                <td><%= filledcc %></td>
                <td><%= emptycc %></td>
                <td><%= amt %></td>
                <td><%= amountpaid %></td>
                <td><%= transaction %></td>
                <td><%= tod %></td>
            </tr>
            
            <tr>
                <td>Total amount due </td>
                <td></td>
                <td><%= finalamt %></td>
                <td></td>
                <td></td>
                <td>Total C.V Due</td>
                <td></td>
                <td><%= finalcv %></td>
            </tr>
        </table>
    <%
            }
            catch(Exception e)
            { e.printStackTrace(); }
    %>
    </body>
</html>
