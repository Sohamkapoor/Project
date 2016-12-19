/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdvanceND;

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
public class AdvanceND extends HttpServlet {

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
//            out.println("<title>Servlet AdvanceND</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet AdvanceND at " + request.getContextPath() + "</h1>");
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
            String filledcv = "", emptycv = "", typeofpayment = "", advance = "", amt = "", security = "", sql = "", tod = "";
            String name="",phno="",typeoftransaction="",cheque="",amount="";
            filledcv = request.getParameter("form-filledcv");
            emptycv = request.getParameter("form-emptycv");
            typeofpayment = request.getParameter("typeofpayment");
            typeoftransaction = request.getParameter("typeoftransaction");
            advance = request.getParameter("form-advance");
            amt = request.getParameter("form-amt");
            amount = request.getParameter("form-counteramount");
            cheque= request.getParameter("form-chequeno");
            security = request.getParameter("form-security");
            if(security.equals(""))
            {security = "0";}
            DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
            Date today = new Date();
            tod = formatter.format(today);
//            sql="insert into nondomestic (name,filled,empty,amount,amountpaid,chequeno,osamt,cvdue,transaction,daytoday,phno,advdate,security)values('"+name+"','"+filledcc+"','"+emptycc+"','"+amount+"','"+amtpaid+"','"+chequeno+"','"+diffamt+"','"+diffcv+"','"+transaction+"','"+tod+"','"+phno+"','"+advdate+"','"+security+"')";
//             db.conn.createStatement();
//             db.st.executeUpdate(sql);
//             System.out.println("row inserted");
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
