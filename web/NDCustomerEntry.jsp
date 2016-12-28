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
            try {
                Datab db = new Datab();
                String filledcc = "", emptycc = "", amtpaid = "", amount = "", transaction = "", chequeno = "", typeofpayment = "",advance="",discount="";
                int nine = 0, returnnine = 0, var = 1;
                String name = request.getParameter("form-nameoc").trim();
                String phno = request.getParameter("form-phno").trim();
                String advdate = request.getParameter("datepickers");
                String security = request.getParameter("security").trim();
                if (security.equals("")) {
                    security = "0";
                }
                //get Transaction type for what user has came
                String cvtype = request.getParameter("onlycv").trim();
                // transaction= request.getParameter("typeoftransaction");
                typeofpayment = request.getParameter("typeofpayment").trim();

                System.out.println("cvtype =" + cvtype);
                if (cvtype.equals("cash")) {
                    if (typeofpayment.equals("cashonly")) {
                        filledcc = "0"; //request.getParameter("form-filledcv");
                        amtpaid = request.getParameter("form-counteramount").trim();
                        emptycc = "0"; //request.getParameter("form-emptycv");
                        amount = "0"; //request.getParameter("form-amt");
                        advance="0";
                        discount ="0";
                        chequeno = "0"; //request.getParameter("form-chequeno");
                    } else if (typeofpayment.equals("cheque")) {
                        filledcc = "0"; //request.getParameter("form-filledcv");
                        amtpaid = request.getParameter("form-counteramount1").trim();
                        emptycc = "0"; //request.getParameter("form-emptycv");
                        amount = "0"; //request.getParameter("form-amt");
                        advance="0";
                        discount ="0";
                        chequeno = request.getParameter("form-chequeno").trim();
                    }
                } else if (cvtype.equals("cvdepo")) {
                    filledcc = "0"; //request.getParameter("form-filledcv");
                    amtpaid = "0"; //request.getParameter("form-counteramount");
                    emptycc = request.getParameter("form-emptycv").trim();
                    amount = "0"; //request.getParameter("form-amt");
                    advance="0";
                        discount ="0";
                    chequeno = "0"; //request.getParameter("form-chequeno");               
                } else if (cvtype.equals("pickdrop")) {
                    if (typeofpayment.equals("cashonly")) {
                        filledcc = request.getParameter("form-filled").trim();
                        amtpaid = request.getParameter("form-counteramount4").trim();
                        emptycc = request.getParameter("form-emptycv4").trim();
                        advance = request.getParameter("form-advance").trim();
                        discount = request.getParameter("form-discount").trim();
                        amount = request.getParameter("form-amt").trim();
                        chequeno = "0"; //request.getParameter("form-chequeno");
                    } else if (typeofpayment.equals("cheque")) {
                        filledcc = request.getParameter("form-filledcv1").trim();
                        amtpaid = request.getParameter("form-counteramount5").trim();
                        emptycc = request.getParameter("form-emptycv5").trim();
                        advance = request.getParameter("form-advance1").trim();
                        discount = request.getParameter("form-discount1").trim();
                        amount = request.getParameter("form-amt1").trim();
                        chequeno = request.getParameter("form-chequeno5").trim();
                    }
                } else if (cvtype.equals("cashcv")) {
                    if (typeofpayment.equals("cashonly")) {
                        filledcc = "0"; //request.getParameter("form-filledcv");
                        amtpaid = request.getParameter("form-counteramount2").trim();
                        emptycc = request.getParameter("form-emptycv1").trim();                        
                        amount = "0"; //request.getParameter("form-amt");
                        advance="0";
                        discount ="0";
                        chequeno = "0"; //request.getParameter("form-chequeno");
                    } else if (typeofpayment.equals("cheque")) {
                        filledcc = "0"; //request.getParameter("form-filledcv");
                        amtpaid = request.getParameter("form-counteramount3").trim();
                        emptycc = request.getParameter("form-emptycv3").trim();
                        amount = "0"; //request.getParameter("form-amt");
                        advance="0";
                        discount ="0";
                        chequeno = request.getParameter("form-chequeno2").trim();
                    }
                }
                DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                String sql = "";
                Date today = new Date();
                String tod = formatter.format(today);
                int filledcv = Integer.parseInt(filledcc);
                int emptycv = Integer.parseInt(emptycc);
                int amountpaid = Integer.parseInt(amtpaid);
                int amt = Integer.parseInt(amount);
                int amo = 0, finalamt = 0, cvd = 0, finalcv = 0;
                int diffcv = filledcv - emptycv;
                int diffamt = amt - amountpaid;
                sql = "select osamt,cvdue from nondomestic where name ='" + name + "'and phno ='" + phno + "'";
                db.rs = db.st.executeQuery(sql);
                while (db.rs.next()) {
                    String osamt = db.rs.getString("osamt");
                    String cv = db.rs.getString("cvdue");
                    amo = Integer.parseInt(osamt);
                    cvd = Integer.parseInt(cv);
                    finalamt += amo;
                    finalcv += cvd;
                }
                finalamt += diffamt;
                finalcv += diffcv;

                sql = "insert into nondomestic (name,filled,empty,amount,amountpaid,advance,discount,chequeno,osamt,cvdue,transaction,daytoday,phno,advdate,security)values('" + name + "','" + filledcc + "','" + emptycc + "','" + amount + "','" + amtpaid + "','"+advance+"','"+discount+"','" + chequeno + "','" + diffamt + "','" + diffcv + "','" + transaction + "','" + tod + "','" + phno + "','" + advdate + "','" + security + "')";
                db.conn.createStatement();
                db.st.executeUpdate(sql);
                sql = "select * from godown ";
                db.rs = db.st.executeQuery(sql);
                while (db.rs.next()) {
                    nine += db.rs.getInt("filled_nineteen");
                    returnnine += db.rs.getInt("empty_nineteen");
                }
                nine -= Integer.parseInt(filledcc);
                returnnine += Integer.parseInt(emptycc);
                if (nine == 0) {
                    out.println("<html><body onload=\"alert('No More Filled Cylinder available in godown')\"></body></html>");
                }
                sql = "update godown set filled_ninetten ='" + nine + "',empty_nineteen ='" + returnnine + "' where id='" + var + "'";
                db.conn.createStatement();
                db.st.executeUpdate(sql);
        %>
        <h3>Name :- <%= name%> </h3> <p align="right"><h3> Phone number :- <%= phno%></h3></p>
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
            <td><%= diffamt%></td>
            <td><%= diffcv%></td>
            <td><%= filledcc%></td>
            <td><%= emptycc%></td>
            <td><%= amt%></td>
            <td><%= amountpaid%></td>
            <td><%= transaction%></td>
            <td><%= tod%></td>
        </tr>

        <tr>
            <td>Total amount due </td>
            <td></td>
            <td><%= finalamt%></td>
            <td></td>
            <td></td>
            <td>Total C.V Due</td>
            <td></td>
            <td><%= finalcv%></td>
        </tr>
    </table>
    <%
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
