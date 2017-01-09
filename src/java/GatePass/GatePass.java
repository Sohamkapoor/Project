/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GatePass;

import Datab.Datab;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sohamkapoor
 */
public class GatePass extends HttpServlet {

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
//            out.println("<title>Servlet GatePass</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet GatePass at " + request.getContextPath() + "</h1>");
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
            String drivername = "", tampoono = "", load = "", sql = "", domestic = "", nondomestic = "", five = "", sql1 = "";
            drivername = request.getParameter("form-local-driver");
            tampoono = request.getParameter("form-issue-tampoo");
            domestic = request.getParameter("form-domestic");
            nondomestic = request.getParameter("form-nondomestic");
            five = request.getParameter("form-five");
            if (domestic.equals("")) {
                domestic = "0";
            }
            if (nondomestic.equals("")) {
                nondomestic = "0";
            }
            if (five.equals("")) {
                five = "0";
            }

            int four = 0, nine = 0, f = 0;
            // reduce cylinder from godown
            sql = "select * from godown";
            db.rs = db.st.executeQuery(sql);
            while (db.rs.next()) {
                four = db.rs.getInt("filled_fourteen");
                nine = db.rs.getInt("filled_nineteen");
            }
            four = four - (Integer.parseInt(domestic));
            nine = nine - (Integer.parseInt(nondomestic));
            if (four >= 0 && nine >= 0) {
                out.println("<table border='1px'>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='2'>Godown Gate Pass</td>\n"
                        + "	<td align='center' colspan='3'>" + new java.util.Date() + "</td>\n"
                        + "<td>Godown Copy</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='3'><img src='assets/img/indane-gas-agency-in-faridabad.jpg' height='60px' width='200px'></td>\n"
                        + "	<td align='center' colspan='3'><h3>Shree Mangalam Indane</h3></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='6'>C-66 B.K.Kaul Nagar Hari Bhau Upadhyay Nagar Ajmer</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td>Name</td>\n"
                        + "	<td align='center' colspan='2'>" + drivername + "</td>\n"
                        + "	<td> Vehicle No</td>\n"
                        + "	<td align='center' colspan='2'>" + tampoono + "</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td>Domestic</td>\n"
                        + "	<td align='center' align='center'>" + domestic + " cly</td>\n"
                        + "	<td>Non Domestic</td>\n"
                        + "	<td align='center' align='center'>" + nondomestic + " cly</td>\n"
                        + "	<td>Five</td>\n"
                        + "	<td align='center' align='center'>" + five + " cly</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='3' height='20px'></td>\n"
                        + "	<td align='center' colspan='3' height='20px'></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='3'>Driver Signature</td>\n"
                        + "	<td align='center' colspan='3'>GodownKeeper Signature</td>\n"
                        + "</tr>");
                out.println("</table>");

                out.println("<br/>");
                out.println("<table border='1px'>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='2'>Godown Gate Pass</td>\n"
                        + "	<td align='center' colspan='3'>" + new java.util.Date() + "</td>\n"
                        + "<td>Office Copy</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='3'><img src='assets/img/indane-gas-agency-in-faridabad.jpg' height='60px' width='200px'></td>\n"
                        + "	<td align='center' colspan='3'><h3>Shree Mangalam Indane</h3></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='6'>C-66 B.K.Kaul Nagar Hari Bhau Upadhyay Nagar Ajmer</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td>Name</td>\n"
                        + "	<td align='center' colspan='2'>" + drivername + "</td>\n"
                        + "	<td> Vehicle No</td>\n"
                        + "	<td align='center' colspan='2'>" + tampoono + "</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td>Domestic</td>\n"
                        + "	<td align='center' align='center'>" + domestic + " cly</td>\n"
                        + "	<td>Non Domestic</td>\n"
                        + "	<td align='center' align='center'>" + nondomestic + " cly</td>\n"
                        + "	<td>Five</td>\n"
                        + "	<td align='center' align='center'>" + five + " cly</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='3' height='20px'></td>\n"
                        + "	<td align='center' colspan='3' height='20px'></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='3'>Driver Signature</td>\n"
                        + "	<td align='center' colspan='3'>GodownKeeper Signature</td>\n"
                        + "</tr>");
                out.println("</table>");

                out.println("<br/>");
                out.println("<table border='1px'>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='2'>Godown Gate Pass</td>\n"
                        + "	<td align='center' colspan='3'>" + new java.util.Date() + "</td>\n"
                        + "<td>Driver Copy</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='3'><img src='assets/img/indane-gas-agency-in-faridabad.jpg' height='60px' width='200px'></td>\n"
                        + "	<td align='center' colspan='3'><h3>Shree Mangalam Indane</h3></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='6'>C-66 B.K.Kaul Nagar Hari Bhau Upadhyay Nagar Ajmer</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td>Name</td>\n"
                        + "	<td align='center' colspan='2'>" + drivername + "</td>\n"
                        + "	<td> Vehicle No</td>\n"
                        + "	<td align='center' colspan='2'>" + tampoono + "</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td>Domestic</td>\n"
                        + "	<td align='center' align='center'>" + domestic + " cly</td>\n"
                        + "	<td>Non Domestic</td>\n"
                        + "	<td align='center' align='center'>" + nondomestic + " cly</td>\n"
                        + "	<td>Five</td>\n"
                        + "	<td align='center' align='center'>" + five + " cly</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='3' height='20px'></td>\n"
                        + "	<td align='center' colspan='3' height='20px'></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<td align='center' colspan='3'>Driver Signature</td>\n"
                        + "	<td align='center' colspan='3'>GodownKeeper Signature</td>\n"
                        + "</tr>");
                out.println("</table>");
                out.println("<br/>");
                out.println("<table border='1px'>");
                out.println("<tr>\n"
                        + "<td align='center' colspan='2'>Detail Pass</td>\n"
                        + "<td align='center' colspan='4'>" + new java.util.Date() + "</td>\n"
                        + "<td align='center' colspan='3'>DLY. Men Copy</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "<td align='center' colspan='4'><img src='assets/img/indane-gas-agency-in-faridabad.jpg' height='60px' width='200px'></td>\n"
                        + "<td align='center' colspan='5'><h3> Shri Mangalam Indane</h3></td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "<td align='center' colspan='9' align='center'>C-66 B.K. Kaul Nagar Hari Bhau Upadhyay Nagar,Ajmer</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "<td align='center' colspan='2'> Name </td>\n"
                        + "<td align='center' colspan='3'>" + drivername + "</td>\n"
                        + "<td align='center' colspan='2'>Vehicle No</td>\n"
                        + "<td align='center' colspan='2'>" + tampoono + "</td>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + "	<th> Domestic </th>\n"
                        + "	<th> NonDomestic </th>\n"
                        + "	<th> New Connection </th>\n"
                        + "	<th> Defective </th>\n"
                        + "	<th> Return Domestic Filled </th>\n"
                        + "	<th> Return NonDomestic Filled </th>\n"
                        + "	<th> Return Domestic Empty </th>\n"
                        + "	<th> Return NonDomestic Empty </th>\n"
                        + "	<th> Amount </th>\n"
                        + "</tr>");
                out.println("<tr>\n"
                        + " <td align='center' height='20px'></td>\n"
                        + " <td align='center' height='20px'></td>\n"
                        + " <td align='center' height='20px'></td>\n"
                        + " <td align='center' height='20px'></td>\n"
                        + " <td align='center' height='20px'></td>\n"
                        + " <td align='center' height='20px'></td>\n"
                        + " <td align='center' height='20px'></td>\n"
                        + " <td align='center' height='20px'></td>\n"
                        + " <td align='center' height='20px'></td>\n"
                        + "</tr>\n");
                out.println("</table>");
                out.println("<p align='center'> <input type='button' class='btn btn-success' value=' Print this Page' onclick='window.print()'/> </p>");
                sql1 = " update godown set filled_fourteen ='" + four + "',nine='" + nine + "' where id=" + 1;
                db.conn.createStatement();
                db.st.executeUpdate(sql1);
                sql = "insert into gatepass(localdriver,tampoo,domestic,nondomestic,five,day)values('" + drivername + "','" + tampoono + "','" + domestic + "','" + nondomestic + "','" + five + "','" + new java.util.Date() + "')";
                db.conn.createStatement();
                db.st.executeUpdate(sql);
            } else {
                out.println("<h3> Not Enough Stock </h3>");
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
