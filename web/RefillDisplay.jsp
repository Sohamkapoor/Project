<%-- 
    Document   : RefillDisplay
    Created on : Nov 20, 2016, 8:27:09 PM
    Author     : sohamkapoor
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Datab.Datab"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>refill Display</title>
    </head>
    <body>
        <%
            try {
                Datab db = new Datab();
                String name = request.getParameter("form-nameoc");
                String employee = request.getParameter("form-nameoe");
                String radio = request.getParameter("form-payment");
                String chequeno = request.getParameter("form-chequeno").trim();
                if(chequeno.equals(""))
                {
                    chequeno="0";
                }
                ArrayList<String> empty = new ArrayList<String>();
                ArrayList<String> filled = new ArrayList<String>();
                ArrayList<Integer> amount = new ArrayList<Integer>();
                ArrayList<Integer> amountpaid = new ArrayList<Integer>();
                ArrayList<Integer> difference = new ArrayList<Integer>();
                ArrayList<Integer> differencecv = new ArrayList<Integer>();
                ArrayList<String> refill = new ArrayList<String>();
                int filledtextbox = 0, emptytextbox = 0, counter = 4, gasrat = 0;
                String emptybox = "", filledbox = "", amtpaid = "", gas = "", rate = "", sql = "", sql1 = "";
                int diff = 0, amts = 0, am = 0, cal = 0;
                int total = 0;
                gas = request.getParameter("rateofgas");

                if (gas == null) {
                    sql = "select rate from gasrate where id=" + 1;
                    db.rs = db.st.executeQuery(sql);
                    while (db.rs.next()) {
                        rate = db.rs.getString("rate");
                    }
                    gasrat = Integer.parseInt(rate);
                } else {
                    gasrat = Integer.parseInt("gas");
                    sql = "update gasrate set rate=" + gasrat + "where id=" + 1;
                    db.conn.createStatement();
                    db.st.executeUpdate(sql);
                }

                for (filledtextbox = 1; filledtextbox <= counter; filledtextbox++) {
                    filledbox = request.getParameter("form-filledcv" + filledtextbox).trim();
                    if (!filledbox.equals("")) {
                        filled.add(filledbox);
                        if (filledtextbox == 1) {
                            refill.add("Counter Refill");
                        } else if (filledtextbox == 2) {
                            refill.add("Home Delivery");
                        } else if (filledtextbox == 3) {
                            refill.add("Godown");
                        } else if (filledtextbox == 4) {
                            refill.add("Village Refill");
                        }
                    } else {
                        filled.add("0");
                    }
                }
                for (filledtextbox = 1; filledtextbox <= counter; filledtextbox++) {
                    amtpaid = request.getParameter("form-counteramount" + filledtextbox).trim();
                    if (!amtpaid.equals("")) {
                        amountpaid.add(Integer.parseInt(amtpaid));
                    } else {
                        amountpaid.add(0);
                    }
                }

                for (emptytextbox = 1; emptytextbox <= counter; emptytextbox++) {
                    emptybox = request.getParameter("form-emptycv" + emptytextbox).trim();
                    if (!emptybox.equals("")) {
                        empty.add(emptybox);
                    } else {
                        empty.add("0");
                    }
                }
                for (emptytextbox = 0; emptytextbox < counter; emptytextbox++) {
                    diff = (Integer.parseInt(filled.get(emptytextbox)) - (Integer.parseInt(empty.get(emptytextbox))));
                    differencecv.add(diff);
                    if (diff != 0) {
                        out.println("<html><body onload=\"alert('Customer has not given all Empty Cylinders')\"></body></html>");
                    }
                }
                if (filled.size() == empty.size()) {
                    for (int totalbox = 0; totalbox < filled.size(); totalbox++) {
                        total = (Integer.parseInt(filled.get(totalbox)));
                        amount.add(gasrat * total);
                        amts = amount.get(totalbox);
                        am = amountpaid.get(totalbox);
                        cal = amts - am;
                        difference.add(cal);
                    }
                }
                DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                Date today = new Date();
                String todayWithZeroTime = formatter.format(today);
                for (String ref : refill) {
                    if (!ref.equals("")) {
                        for (emptytextbox = 0; emptytextbox < 4; emptytextbox++) {
                            if (amount.get(emptytextbox) > 0 && amountpaid.get(emptytextbox) > 0 ) {
                                System.out.println("hi");
                                sql1 = "insert into refill(name,filledcv,emptycv,amount,amtpaid,diffcv,diffamt,refillthrough,datoday,typeofpay,chequeno)values('" + name + "','" + filled.get(emptytextbox) + "','" + empty.get(emptytextbox) + "','" + amount.get(emptytextbox) + "','" + amountpaid.get(emptytextbox) + "','" + differencecv.get(emptytextbox) + "','" + difference.get(emptytextbox) + "','" + ref + "','" + todayWithZeroTime + "','" + radio + "','" + chequeno + "')";
                                db.conn.createStatement();
                                db.st.executeUpdate(sql1);
                                System.out.println("after query");
                            }
                        }
                    }
                }

        %>
        <h3>Name : <%= name%></h3>
        <table border="1px">
            <tr>
                <th>Refill</th>
                <th>Filled CV</th>
                <th>Empty CV</th>
                <th>Amount</th>
                <th>Amount Paid</th>
                <th>Amt Remaining</th>
            </tr>
            <tr>
                <td><label for="form-counterrefill">Counter Refill </label></td>
                <td><label for="form-Filledcv"><%= filled.get(0)%> </label></td>
                <td><label for="form-emptycv"><%= empty.get(0)%> </label></td>
                <td><label for="form-amount"><%= amount.get(0)%> </label></td>
                <td><label for="form-amtpaid"><%= amountpaid.get(0)%> </label></td>
                <td><label for="form-emptycv"><%= difference.get(0)%> </label></td>
            </tr>
            <tr>
                <td><label for="form-homeDelivery">Home Delivery </label></td>
                <td><label for="form-Filledcv"><%= filled.get(1)%> </label></td>
                <td><label for="form-emptycv"><%= empty.get(1)%> </label></td>
                <td><label for="form-amount"><%= amount.get(1)%> </label></td>
                <td><label for="form-amtpaid"><%= amountpaid.get(1)%> </label></td>
                <td><label for="form-emptycv"><%= difference.get(1)%> </label></td>
            </tr>
            <tr>
                <td><label for="form-godown">Godown </label></td>
                <td><label for="form-Filledcv"><%= filled.get(2)%> </label></td>
                <td><label for="form-emptycv"><%= empty.get(2)%> </label></td>
                <td><label for="form-amount"><%= amount.get(2)%> </label></td>
                <td><label for="form-amtpaid"><%= amountpaid.get(2)%> </label></td>
                <td><label for="form-emptycv"><%= difference.get(2)%> </label></td>
            </tr>
            <tr>
                <td><label for="form-counterrefill">Village Refill </label></td>
                <td><label for="form-Filledcv"><%= filled.get(3)%> </label></td>
                <td><label for="form-emptycv"><%= empty.get(3)%> </label></td>
                <td><label for="form-amount"><%= amount.get(3)%> </label></td>
                <td><label for="form-amtpaid"><%= amountpaid.get(3)%> </label></td>
                <td><label for="form-emptycv"><%= difference.get(3)%> </label></td>
            </tr>
        </table>
        <%

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
