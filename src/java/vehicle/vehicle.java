/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vehicle;

import Datab.Datab;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sohamkapoor
 */
public class vehicle extends HttpServlet {

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
       // try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           /* out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet vehicle</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet vehicle at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } */
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
        try (PrintWriter out = response.getWriter()){
            Datab db = new Datab();
            Calendar cal = Calendar.getInstance();
                                                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                                                String strDate = sdf.format(cal.getTime());
                                                System.out.println("Current date in String Format: " + strDate);
                                                SimpleDateFormat sdf1 = new SimpleDateFormat();
                                                sdf1.applyPattern("dd/MM/yyyy");
                                                Date date = sdf1.parse(strDate);
            String sql="",v="",petrol,repair;
            String count= request.getParameter("count");
            int c=Integer.parseInt(count);
            int i=0;
            
            for(;i<c;i++)
            {
                petrol = request.getParameter("petrolPrice"+i);
                if(petrol.equals(""))
                {petrol="0";}
                repair = request.getParameter("repair"+i);
                if(repair.equals(""))
                {repair="0";}
                v=request.getParameter("vehicleno"+i);
                System.out.println("v ="+v);
                sql="update vehicle set dropkm='"+request.getParameter("drop"+i)+"', petrol='"+petrol+"',repairing='"+repair+"' where vehicleno='"+v+"' and date='"+date+"'";
                db.conn.createStatement();
                db.st.executeUpdate(sql);
            }
            response.setIntHeader("Refresh", 2);
            response.sendRedirect("http://localhost:8080/gas/miscellaneous_vehicle.jsp");
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
