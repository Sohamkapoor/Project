/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package NDCustomerEntry;

import Datab.Datab;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sohamkapoor
 */
public class NDCustomerEntry extends HttpServlet {

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
//            out.println("<title>Servlet NDCustomerEntry</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet NDCustomerEntry at " + request.getContextPath() + "</h1>");
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
            String nameoe = "", filledcc = "", emptycc = "", amtpaid = "", amount = "", transaction = "", chequeno = "", typeofpayment = "", advance = "", discount = "";
            int nine = 0, returnnine = 0, var = 1;
            String name = request.getParameter("form-nameoc").trim();
            String phno = request.getParameter("form-phno").trim();
            String advdate = request.getParameter("datepickers");
            nameoe = request.getParameter("form-nameoe").trim();
            String add = request.getParameter("form-customer-address").trim();
            String security = request.getParameter("security").trim();
            int rate = Integer.parseInt(request.getParameter("rate"));
            String rate1 = request.getParameter("rate1");
            int ra=0;
            if(rate1 == null)
            {
            if (security.equals("")) {
                security = "0";
            }
            //get Transaction type for what user has came
            String cvtype = request.getParameter("onlycv").trim();
            // transaction= request.getParameter("typeoftransaction");
            if (!cvtype.equals("cvdepo")) {
                typeofpayment = request.getParameter("typeofpayment").trim();
            } else if (cvtype.equals("cvdepo")) {
                typeofpayment = "";
            }

            if (cvtype.equals("cash")) {
                if (typeofpayment.equals("cashonly")) {
                    filledcc = "0"; //request.getParameter("form-filledcv");
                    amtpaid = request.getParameter("form-counteramount").trim();
                    emptycc = "0"; //request.getParameter("form-emptycv");
                    amount = "0"; //request.getParameter("form-amt");
                    advance = "0";
                    discount = "0";
                    chequeno = "0"; //request.getParameter("form-chequeno");
                } else if (typeofpayment.equals("cheque")) {
                    filledcc = "0"; //request.getParameter("form-filledcv");
                    amtpaid = request.getParameter("form-counteramount1").trim();
                    emptycc = "0"; //request.getParameter("form-emptycv");
                    amount = "0"; //request.getParameter("form-amt");
                    advance = "0";
                    discount = "0";
                    chequeno = request.getParameter("form-chequeno").trim();
                }
            } else if (cvtype.equals("cvdepo")) {
                filledcc = "0"; //request.getParameter("form-filledcv");
                amtpaid = "0"; //request.getParameter("form-counteramount");
                emptycc = request.getParameter("form-emptycv").trim();
                amount = "0"; //request.getParameter("form-amt");
                advance = "0";
                discount = "0";
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
                    advance = "0";
                    discount = "0";
                    chequeno = "0"; //request.getParameter("form-chequeno");
                } else if (typeofpayment.equals("cheque")) {
                    filledcc = "0"; //request.getParameter("form-filledcv");
                    amtpaid = request.getParameter("form-counteramount3").trim();
                    emptycc = request.getParameter("form-emptycv3").trim();
                    amount = "0"; //request.getParameter("form-amt");
                    advance = "0";
                    discount = "0";
                    chequeno = request.getParameter("form-chequeno2").trim();
                }
            }
            DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
            String sql = "";
            Date today = new Date();
            String tod = formatter.format(today);
            if(emptycc.equals("")){emptycc="0";}
            int filledcv = Integer.parseInt(filledcc);
            int emptycv = Integer.parseInt(emptycc);
            if(amtpaid.equals("")){amtpaid="0";}
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
            sql = "select * from godown ";
            db.rs = db.st.executeQuery(sql);
            while (db.rs.next()) {
                nine += db.rs.getInt("filled_nineteen");
                returnnine += db.rs.getInt("empty_nineteen");
            }
            nine -= Integer.parseInt(filledcc);
            returnnine += Integer.parseInt(emptycc);
            if (nine >= 0) {            
            finalamt += diffamt;
            finalcv += diffcv;
            sql = "insert into nondomestic (nameoe,name,addres,filled,empty,amount,amountpaid,advance,discount,chequeno,osamt,cvdue,transaction,daytoday,phno,advdate,security)values('" + nameoe + "','" + name + "','" + add + "','" + filledcc + "','" + emptycc + "','" + amount + "','" + amtpaid + "','" + advance + "','" + discount + "','" + chequeno + "','" + diffamt + "','" + diffcv + "','" + transaction + "','" + tod + "','" + phno + "','" + advdate + "','" + security + "')";
            db.conn.createStatement();
            db.st.executeUpdate(sql);
            System.out.println("insert done");
            
            sql = "update godown set filled_nineteen ='" + nine + "',empty_nineteen ='" + returnnine + "' where id='" + var + "'";
            db.conn.createStatement();
            db.st.executeUpdate(sql);
            ra = rate * filledcv;
            double vat = (ra*14.5)/100;
            double finalamount = ra - vat;
            double f= finalamount + vat;

            out.println("<br/>");
            out.println("</table>");
            out.println("<table border='1px'>");
            out.println("<tr><td colspan='2'>Tin No: 08390014694</td><td colspan='2' align='right'>Delivery Challan</td></tr>");
            out.println("<tr><td colspan='2' align='center'><img src='assets/img/indane-gas-agency-in-faridabad.jpg' height='60px' width='200px'></td><td colspan='2' align='center'><h3>Shree Manglam Indane</h3></td></tr>");
            out.println("<tr><td colspan='4'>C-66, B.K.Kaul Nagar, Hari Bhau Upadhayay Nagar Ajmer(305001)</td></tr>");
            out.println("<tr><td colspan='2'>S.No </td> <td colspan='3'>Date: " + new java.util.Date() + "</td></tr>");
            out.println("<tr><td colspan='4' align='center'><h3>Name: " + name + " </h3></td></tr>");
            //               out.println("<tr><td>Add: </td></tr>");
            out.println("<tr>\n"
                    + "	<th>Particular</th>\n"
                    + "	<th>Qty</th>\n"
                    + "	<th>Rate</th>\n"
                    + "	<th>Amount</th>\n"
                    + "</tr>");
            out.println("<tr>\n"
                    + "	<td>Opening Balance</td>\n"
                    + "	<td>"+finalcv+"</td>\n"
                    + "	\n"
                    + "	<td>"+finalamt+"</td>\n"
                    + "</tr>");
            out.println("<tr>\n"
                    + "	<td>Issue Cly</td>\n"
                    + "	<td>"+filledcc+"</td>\n"
                    + "	<td>"+rate+"</td>\n"
                    + "	<td></td>\n"
                    + "</tr>");
            out.println("<tr>\n"
                    + "	<td>Advance</td>\n"
                    + "	<td></td>\n"
                    + "	<td></td>\n"
                    + "	<td>"+advance+"</td>\n"
                    + "</tr>");
            out.println("<tr>\n"
                    + "	<td>Discount</td>\n"
                    + "	<td></td>\n"
                    + "	<td></td>\n"
                    + "	<td>"+discount+"</td>\n"
                    + "</tr>");
            out.println("<tr>\n"
                    + "	<td>Receive</td>\n"
                    + "	<td>"+emptycc+"</td>\n"
                    + "	\n"
                    + "	<td></td>\n"
                    + "</tr>");
            out.println("<tr>\n"
                    + "	<td>Final</td>\n"
                    + "	<td>"+filledcc+"</td>\n"
                    + "	<td>"+rate+"</td>\n"
                    + "	<td>"+amountpaid+"</td>\n"
                    + "</tr>");
            out.println("<tr>\n"
                    +"<td></td>\n"
                    +"<td></td>\n"
            +"<td>Vat</td>\n"
            + "	<td>"+vat+"</td>\n"           
            + "</tr>");
            out.println("<tr>\n"
                    +"<td></td>\n"
                    +"<td></td>\n"
            + "	<td>Total</td>\n"
            + "	<td>"+f+"</td>\n"
            + "</tr>");
            out.println("<tr>\n"
            +"<td colspan='2' height='20px'></td>\n"
            +"<td colspan='2' height='20px'></td>\n"
            +"</tr>");
            out.println("<tr>\n"
            +"<td colspan='2'>Customer Signature</td>\n"
            +"<td colspan='2'>Delivery Men Signature</td>\n"
            +"</tr>");
            out.println("</table>");
             out.println("<br/>");
            out.println("</table>");
            out.println("<table border='1px'>");
            out.println("<tr><td colspan='2'>Tin No: 08390014694</td><td colspan='2' align='right'>Customer Challan</td></tr>");
            out.println("<tr><td colspan='2' align='center'><img src='assets/img/indane-gas-agency-in-faridabad.jpg' height='60px' width='200px'></td><td colspan='2' align='center'><h3>Shree Manglam Indane</h3></td></tr>");
            out.println("<tr><td colspan='4'>C-66, B.K.Kaul Nagar, Hari Bhau Upadhayay Nagar Ajmer(305001)</td></tr>");
            out.println("<tr><td colspan='2'>S.No </td> <td colspan='3'>Date: " + new java.util.Date() + "</td></tr>");
            out.println("<tr><td colspan='4' align='center'><h3>Name: " + name + " </h3></td></tr>");
            //               out.println("<tr><td>Add: </td></tr>");
            out.println("<tr>\n"
                    + "	<th>Particular</th>\n"
                    + "	<th>Qty</th>\n"
                    + "	<th>Rate</th>\n"
                    + "	<th>Amount</th>\n"
                    + "</tr>");
            out.println("<tr>\n"
                    + "	<td>Opening Balance</td>\n"
                    + "	<td>"+finalcv+"</td>\n"
                    + "	\n"
                    + "	<td>"+finalamt+"</td>\n"
                    + "</tr>");
            out.println("<tr>\n"
                    + "	<td>Issue Cly</td>\n"
                    + "	<td>"+filledcc+"</td>\n"
                    + "	<td>"+rate+"</td>\n"
                    + "	<td></td>\n"
                    + "</tr>");
            out.println("<tr>\n"
                    + "	<td>Advance</td>\n"
                    + "	<td></td>\n"
                    + "	<td></td>\n"
                    + "	<td>"+advance+"</td>\n"
                    + "</tr>");
            out.println("<tr>\n"
                    + "	<td>Discount</td>\n"
                    + "	<td></td>\n"
                    + "	<td></td>\n"
                    + "	<td>"+discount+"</td>\n"
                    + "</tr>");
            out.println("<tr>\n"
                    + "	<td>Receive</td>\n"
                    + "	<td>"+emptycc+"</td>\n"
                    + "	\n"
                    + "	<td></td>\n"
                    + "</tr>");
            out.println("<tr>\n"
                    + "	<td>Final</td>\n"
                    + "	<td>"+filledcc+"</td>\n"
                    + "	<td>"+rate+"</td>\n"
                    + "	<td>"+amountpaid+"</td>\n"
                    + "</tr>");
            out.println("<tr>\n"
                    +"<td></td>\n"
                    +"<td></td>\n"
            +"<td>Vat</td>\n"
            + "	<td>"+vat+"</td>\n"           
            + "</tr>");
            out.println("<tr>\n"
                    +"<td></td>\n"
                    +"<td></td>\n"
            + "	<td>Total</td>\n"
            + "	<td>"+f+"</td>\n"
            + "</tr>");
            out.println("<tr>\n"
            +"<td colspan='2' height='20px'></td>\n"
            +"<td colspan='2' height='20px'></td>\n"
            +"</tr>");
            out.println("<tr>\n"
            +"<td colspan='2'>Customer Signature</td>\n"
            +"<td colspan='2'>Delivery Men Signature</td>\n"
            +"</tr>");
            out.println("</table>");
            
            out.println("<p align='center'> <input type='button' value=' Print this Page' onclick='window.print()'/> </p>");
            }
            else{
                out.println("<h3> Not Enough Stock Available </h3>");
            }
            }
            else{
               String sql ="update gasrate set rate='"+rate1+"' where id="+2;
               db.conn.createStatement();
               db.st.executeUpdate(sql);
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
