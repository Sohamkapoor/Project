/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package RefillDisplay;

import Datab.Datab;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sohamkapoor
 */
public class RefillDisplay extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet RefillDisplay</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet RefillDisplay at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        try (PrintWriter out = response.getWriter()) {
            Datab db = new Datab();
//                String name = request.getParameter("form-nameoc");
            String employee = request.getParameter("form-nameoe");
            String radio = request.getParameter("form-payment");
            String chequeno = request.getParameter("form-chequeno").trim();
            if (chequeno.equals("")) {
                chequeno = "0";
            }
            ArrayList<String> empty = new ArrayList<String>();
            ArrayList<String> filled = new ArrayList<String>();
            ArrayList<Integer> amount = new ArrayList<Integer>();
            ArrayList<Integer> amountpaid = new ArrayList<Integer>();
            ArrayList<Integer> difference = new ArrayList<Integer>();
            ArrayList<Integer> differencecv = new ArrayList<Integer>();
            ArrayList<String> refill = new ArrayList<String>();
            int filledtextbox = 0, emptytextbox = 0, counter = 5, gasrat = 0;
            String emptybox = "", filledbox = "", amtpaid = "", gas = "", rate = "", sql = "", sql1 = "", refer = "";
            int diff = 0, amts = 0, am = 0, cal = 0, total = 0, var = 1;
            int four = 0, nine = 0, f5 = 0, defect = 0, returnfour = 0, returnnine = 0, returnf5 = 0, returndefect = 0, four1 = 0, returnfour1 = 0;
            gas = request.getParameter("rateofgas");
            System.out.print("gas =" + gas);
            if (gas == null) {
                gas = "";
            }
            if (gas.equals("")) {
                sql = "select rate from gasrate where id =" + 1;
                db.rs = db.st.executeQuery(sql);
                while (db.rs.next()) {
                    rate = db.rs.getString("rate");
                }
                gasrat = Integer.parseInt(rate);
            } else {
                gasrat = Integer.parseInt(gas);
                sql1 = "update gasrate set rate='" + gasrat + "' where id=" + 1;
                db.conn.createStatement();
                db.st.executeUpdate(sql1);
            }
            for (filledtextbox = 1; filledtextbox <= counter; filledtextbox++) {
                filledbox = request.getParameter("form-filledcv" + filledtextbox).trim();
                if (!filledbox.equals("")) {
                    filled.add(filledbox);
                    if (filledtextbox == 1) {
                        refill.add("Counter Refill");
                        refer = "counter";
                    } else if (filledtextbox == 2) {
                        refill.add("Home Delivery");
                        refer = "home";
                    } else if (filledtextbox == 3) {
                        refill.add("Godown");
                        refer = "godown";
                    } else if (filledtextbox == 4) {
                        refill.add("Village Refill");
                        refer = "village";
                    } else if (filledtextbox == 5) {
                        refill.add("Domestic WS");
                        refer = "domesticWS";
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
                    for (emptytextbox = 0; emptytextbox < 5; emptytextbox++) {
                        if (amount.get(emptytextbox) > 0 && amountpaid.get(emptytextbox) > 0) {
                            sql = "select * from godown";
                            db.rs = db.st.executeQuery(sql);
                            while (db.rs.next()) {
                                four += db.rs.getInt("filled_fourteen");
                                four1 += db.rs.getInt("filled_fourteenws");
                                returnfour1 += db.rs.getInt("empty_fourteenws");
                                returnfour += db.rs.getInt("empty_fourteen");
                            }
                            if(refer.equals("domesticWS")){
                             four1 -= Integer.parseInt(filled.get(emptytextbox));
                             returnfour1 += Integer.parseInt(empty.get(emptytextbox));
                            }
                            else{
                            four -= Integer.parseInt(filled.get(emptytextbox));                            
                            returnfour += Integer.parseInt(empty.get(emptytextbox));
                            }
                            if ((four >= 0) && (four1 >= 0)) {
                                sql = "insert into refill(name,filledcv,emptycv,amount,amtpaid,diffcv,diffamt,refillthrough,datoday,typeofpay,chequeno)values('" + employee + "','" + filled.get(emptytextbox) + "','" + empty.get(emptytextbox) + "','" + amount.get(emptytextbox) + "','" + amountpaid.get(emptytextbox) + "','" + differencecv.get(emptytextbox) + "','" + difference.get(emptytextbox) + "','" + ref + "','" + todayWithZeroTime + "','" + radio + "','" + chequeno + "')";
                                db.conn.createStatement();
                                db.st.executeUpdate(sql);
                                if (refer.equals("domesticWS")) {
                                    sql = "update godown set filled_fourteenws ='" + four1 + "',empty_fourteenws ='" + returnfour1 + "' where id='" + var + "'";
                                    db.conn.createStatement();
                                    db.st.executeUpdate(sql);
                                } else {
                                    sql = "update godown set filled_fourteen ='" + four + "',empty_fourteen ='" + returnfour + "' where id='" + var + "'";
                                    db.conn.createStatement();
                                    db.st.executeUpdate(sql);
                                }
                            } else {
                                out.println("<h3> Not Sufficient Stock Available </h3>");
                            }
                        }
                    }
                }
            }
            if((four>=0) && (four1>=0)){
            out.println("<table border=\"1px\">");
            out.println("<tr><td colspan='3'>Tin No: 08390014694</td> <td colspan='3' align='right'> Employee Copy </td>");
                out.println("<tr><td align='center' colspan='3'><h3>Shree Mangalam Indane</h3></td><td align='center' colspan='3'><img src='assets/img/indane-gas-agency-in-faridabad.jpg' height='60px' width='200px'></td></tr>");
                out.println("<tr><td colspan='6' align='center'>C-66, B.K.Kaul Nagar, Hari Bhau Upadhayay Nagar Ajmer(305001)</td></tr>");
                out.println("<tr><td colspan='6'><h3>Name : " + employee + " </h3></td></tr>");
            out.println("<tr>");
            out.println("<th>Refill</th>");
            out.println("<th>Filled CV</th>");
            out.println("<th>Empty CV</th>");
            out.println("<th>Amount</th>");
            out.println("<th>Amount Paid</th>");
            out.println("<th>Amt Remaining</th>");
            out.println("</tr>\n"
                    + "            <tr>");
            out.println("<td><label for=\"form-counterrefill\">Counter Refill</label></td>\n"
                    + "                <td><label for=\"form-Filledcv\"> " + filled.get(0) + " </label></td>\n"
                    + "                <td><label for=\"form-emptycv\"> " + empty.get(0) + " </label></td>\n"
                    + "                <td><label for=\"form-amount\"> " + amount.get(0) + " </label></td>\n"
                    + "                <td><label for=\"form-amtpaid\"> " + amountpaid.get(0) + " </label></td>\n"
                    + "                <td><label for=\"form-emptycv\"> " + difference.get(0) + " </label></td>");
            out.println("</tr>\n"
                    + "            <tr>");
            out.println("<td><label for=\"form-homeDelivery\">Home Delivery </label></td>\n"
                    + "                <td><label for=\"form-Filledcv\"> " + filled.get(1) + " </label></td>\n"
                    + "                <td><label for=\"form-emptycv\"> " + empty.get(1) + " </label></td>\n"
                    + "                <td><label for=\"form-amount\"> " + amount.get(1) + " </label></td>\n"
                    + "                <td><label for=\"form-amtpaid\"> " + amountpaid.get(1) + " </label></td>\n"
                    + "                <td><label for=\"form-emptycv\"> " + difference.get(1) + " </label></td>");
            out.println("</tr>\n"
                    + "            <tr>");
            out.println("<td><label for=\"form-godown\">Godown </label></td>\n"
                    + "                <td><label for=\"form-Filledcv\"> " + filled.get(2) + " </label></td>\n"
                    + "                <td><label for=\"form-emptycv\"> " + empty.get(2) + " </label></td>\n"
                    + "                <td><label for=\"form-amount\"> " + amount.get(2) + " </label></td>\n"
                    + "                <td><label for=\"form-amtpaid\"> " + amountpaid.get(2) + " </label></td>\n"
                    + "                <td><label for=\"form-emptycv\"> " + difference.get(2) + " </label></td>");
            out.println("</tr>\n"
                    + "            <tr>");
            out.println("<td><label for=\"form-counterrefill\">Village Refill </label></td>\n"
                    + "                <td><label for=\"form-Filledcv\"> " + filled.get(3) + " </label></td>\n"
                    + "                <td><label for=\"form-emptycv\"> " + empty.get(3) + " </label></td>\n"
                    + "                <td><label for=\"form-amount\"> " + amount.get(3) + " </label></td>\n"
                    + "                <td><label for=\"form-amtpaid\"> " + amountpaid.get(3) + " </label></td>\n"
                    + "                <td><label for=\"form-emptycv\"> " + difference.get(3) + " </label></td>");
            out.println("</tr>\n"
                    + "            <tr>");
            out.println("<td><label for=\"form-counterrefill\">Domestic WS </label></td>\n"
                    + "                <td><label for=\"form-Filledcv\"> " + filled.get(4) + " </label></td>\n"
                    + "                <td><label for=\"form-emptycv\"> " + empty.get(4) + " </label></td>\n"
                    + "                <td><label for=\"form-amount\"> " + amount.get(4) + " </label></td>\n"
                    + "                <td><label for=\"form-amtpaid\"> " + amountpaid.get(4) + " </label></td>\n"
                    + "                <td><label for=\"form-emptycv\"> " + difference.get(4) + " </label></td>");
            out.println("</tr>\n"
                    + "        </table>");
            out.println("<p align='center'> <input type='button' value=' Print this Page' onclick='window.print()'/> </p>");
            } else {
                out.println(" <h3> Please ask for delivery of cylinders </h3>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
