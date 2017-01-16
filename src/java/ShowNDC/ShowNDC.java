/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ShowNDC;

import Datab.Datab;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sohamkapoor
 */
public class ShowNDC extends HttpServlet {

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
//            out.println("<title>Servlet ShowNDC</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet ShowNDC at " + request.getContextPath() + "</h1>");
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
            String sql="",name="",phno="",osamt="",cvdue="";
            int os=0,cv=0;
            name = request.getParameter("form-nameoc");
            phno = request.getParameter("form-phno");
            sql ="select osamt,cvdue from nondomestic where name='"+name+"' and phno ='"+phno+"'";
            db.rs = db.st.executeQuery(sql);
            while (db.rs.next()) {
                osamt = db.rs.getString("osamt");
                os += Integer.parseInt(osamt);
                cvdue = db.rs.getString("cvdue");
                cv += Integer.parseInt(cvdue);
            }
            out.println("<table border='1px'>");
            out.println("<tr><td colspan='2'>Tin No: 08390014694</td> <td colspan='2' align='right'> Customer Copy </td>");
            out.println("<tr><td align='center' colspan='2'><h3>Shree Mangalam Indane</h3></td><td align='center' colspan='2'><img src='assets/img/indane-gas-agency-in-faridabad.jpg' height='60px' width='200px'></td></tr>");
            out.println("<tr><td colspan='4' align='center'>C-66, B.K.Kaul Nagar, Hari Bhau Upadhayay Nagar Ajmer(305001)</td></tr>");
            out.println("<tr>\n" +
"	<th> Name </th>\n" +
"	<th> Phone Number </th>\n" +
"	<th> Outstanding Amount </th>\n" +
"	<th> OutStanding Cylinder </th>\n" +
"</tr>");
            out.println("<tr>\n" +
"	<td> '"+name+"' </td>\n" +
"	<td> '"+phno+"' </td>\n" +
"	<td> '"+os+"' </td>\n" +
"	<td> '"+cv+"' </td>\n" +
"</tr>");
            out.println("</table>");
        }catch(Exception e){e.printStackTrace();}
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
