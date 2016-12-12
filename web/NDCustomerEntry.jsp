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
            String filledcc="", emptycc="", amtpaid="", amount="", transaction="", chequeno="", typeofpayment="";
            String name= request.getParameter("form-nameoc").trim();
            String phno = request.getParameter("form-phno").trim();
            String advdate= request.getParameter("datepickers");
            String security = request.getParameter("security").trim();
            if(security.equals(""))
            {security="0";}
            //get Transaction type for what user has came
            String cvtype = request.getParameter("onlycv").trim();
           // transaction= request.getParameter("typeoftransaction");
            typeofpayment = request.getParameter("typeofpayment").trim();
            
            System.out.println("cvtype ="+ cvtype );
            if(cvtype.equals("cash"))
            {
                if(typeofpayment.equals("cashonly"))
                {
                    filledcc = "0"; //request.getParameter("form-filledcv");
                    amtpaid = request.getParameter("form-counteramount").trim();
                    emptycc = "0"; //request.getParameter("form-emptycv");
                    amount = "0"; //request.getParameter("form-amt");
                    chequeno = "0"; //request.getParameter("form-chequeno");
                }
                else if(typeofpayment.equals("cheque"))
                {
                    filledcc = "0"; //request.getParameter("form-filledcv");
                    amtpaid = request.getParameter("form-counteramount1").trim();
                    emptycc = "0"; //request.getParameter("form-emptycv");
                    amount = "0"; //request.getParameter("form-amt");
                    chequeno = request.getParameter("form-chequeno").trim();
                }
            }
            else if(cvtype.equals("cvdepo"))
            {
                    filledcc = "0"; //request.getParameter("form-filledcv");
                    amtpaid = "0"; //request.getParameter("form-counteramount");
                    emptycc = request.getParameter("form-emptycv").trim();
                    amount = "0"; //request.getParameter("form-amt");
                    chequeno = "0"; //request.getParameter("form-chequeno");               
            }
            else if(cvtype.equals("pickdrop"))
            {
                if(typeofpayment.equals("cashonly"))
                {
                    filledcc = request.getParameter("form-filled").trim();
                    amtpaid = request.getParameter("form-counteramount4").trim();
                    emptycc = request.getParameter("form-emptycv4").trim();
                    amount = request.getParameter("form-amt").trim();
                    chequeno = "0"; //request.getParameter("form-chequeno");
                }
                else if(typeofpayment.equals("cheque"))
                {
                    filledcc = request.getParameter("form-filledcv1").trim();
                    amtpaid = request.getParameter("form-counteramount5").trim();
                    emptycc = request.getParameter("form-emptycv5").trim();
                    amount = request.getParameter("form-amt1").trim();
                    chequeno = request.getParameter("form-chequeno5").trim();
                }
            }
            else if(cvtype.equals("cashcv"))
            {
                if(typeofpayment.equals("cashonly"))
                {
                    filledcc = "0"; //request.getParameter("form-filledcv");
                    amtpaid = request.getParameter("form-counteramount2").trim();
                    emptycc = request.getParameter("form-emptycv1").trim();
                    amount = "0"; //request.getParameter("form-amt");
                    chequeno = "0"; //request.getParameter("form-chequeno");
                }
                else if(typeofpayment.equals("cheque"))
                {
                    filledcc = "0"; //request.getParameter("form-filledcv");
                    amtpaid = request.getParameter("form-counteramount3").trim();
                    emptycc = request.getParameter("form-emptycv3").trim();
                    amount = "0"; //request.getParameter("form-amt");
                    chequeno = request.getParameter("form-chequeno2").trim();
                }
            }
            System.out.println("security ="+security +" "+"filledcv ="+filledcc+" "+"emptycv ="+emptycc+" "+"amtpaid ="+amtpaid+" "+"amount ="+amount);
            System.out.println("typeof ="+typeofpayment+" "+"chequeno ="+chequeno);
            
            
            
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
            
            System.out.println("name ="+name +" "+"filledcv ="+filledcc+" "+"emptycv ="+emptycc+" "+"amount ="+amount+" "+"amountpaid ="+amtpaid+" "+ "chequeno ="+chequeno+" "+"diff amt ="+diffamt+" "+"diffcv ="+diffcv+" "+"transaction ="+transaction+" "+"tod ="+tod+" "+"phno ="+phno+" "+"advdate ="+advdate+" "+"security ="+security);
            
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
            
             sql="insert into nondomestic (name,filled,empty,amount,amountpaid,chequeno,osamt,cvdue,transaction,daytoday,phno,advdate,security)values('"+name+"','"+filledcc+"','"+emptycc+"','"+amount+"','"+amtpaid+"','"+chequeno+"','"+diffamt+"','"+diffcv+"','"+transaction+"','"+tod+"','"+phno+"','"+advdate+"','"+security+"')";
             System.out.println(sql);
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
