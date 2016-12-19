/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Factory;

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
public class Factory extends HttpServlet {

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
//            out.println("<title>Servlet Factory</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Factory at " + request.getContextPath() + "</h1>");
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
            String name="",fourteen="",nineteen="",five="",domestic="",nondomestic="",defective="",type="";
            String returndomestic="",returnnondomestic="",returndefective="",sql="",returndomesticempty="",returnnondomesticempty="";
            Datab db =new Datab();
            name= request.getParameter("form-driver-name");
            fourteen = request.getParameter("form-fourteen");
            nineteen = request.getParameter("form-nineteen");
            five = request.getParameter("form-five");
            domestic = request.getParameter("form-domestic");
            nondomestic = request.getParameter("form-nondomestic");
            defective = request.getParameter("form-defective");
            type = request.getParameter("form-type");
            returndomestic = request.getParameter("form-2domestic");
            returndomesticempty = request.getParameter("form-2domesticempty");
            returnnondomestic = request.getParameter("form-2nondomestic");
            returnnondomesticempty = request.getParameter("form-2nondomesticempty");
            returndefective = request.getParameter("form-2defective");
            if(domestic.equals("")){domestic = "0";}
            if(nondomestic.equals("")){nondomestic = "0";}
            if(defective.equals("")){defective="0";}
            if(returndomestic.equals("")){returndomestic="0";}
            if(returnnondomestic.equals("")){returnnondomestic="0";}
            if(returndefective.equals("")){returndefective="0";}
            if(returndomesticempty.equals("")){returndomesticempty="0";}
            if(returnnondomesticempty.equals("")){returnnondomesticempty="0";}
            Calendar cal = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            String strDate = sdf.format(cal.getTime());
            System.out.println("Current date in String Format: " + strDate);
            SimpleDateFormat sdf1 = new SimpleDateFormat();
            sdf1.applyPattern("dd/MM/yyyy");
            Date date = sdf1.parse(strDate);
            sql="insert into factory(drivername,fourteen,nineteen,five,domestic,nondomestic,defective,type,returndomestic,returndomesticempty,returnnondomestic,returnnondomesticempty,returndefective,day)values('"+name+"','"+fourteen+"','"+nineteen+"','"+five+"','"+domestic+"','"+nondomestic+"','"+defective+"','"+type+"','"+returndomestic+"','"+returndomesticempty+"','"+returnnondomestic+"','"+returnnondomesticempty+"','"+returndefective+"','"+date+"')";
            db.conn.createStatement();
            db.st.executeUpdate(sql);
        
        }catch(Exception e)
        {
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
