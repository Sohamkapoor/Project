/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Miscellaneous_vehicle;

import Datab.Datab;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
public class Miscellaneous_vehicle extends HttpServlet {

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
            out.println("<title>Servlet Miscellaneous_vehicle</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Miscellaneous_vehicle at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }*/
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
            Datab db=new Datab();
             Calendar cal = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            String strDate = sdf.format(cal.getTime());
            System.out.println("Current date in String Format: " + strDate);
            SimpleDateFormat sdf1 = new SimpleDateFormat();
            sdf1.applyPattern("dd/MM/yyyy");
            Date date = sdf1.parse(strDate);
            
            ArrayList<String> price = new ArrayList<String>();
            ArrayList<String> vehicleno = new ArrayList<String>();
            ArrayList<String> driver = new ArrayList<String>();
            ArrayList<String> pick = new ArrayList<String>();
            ArrayList<String> drop = new ArrayList<String>();
            ArrayList<String> repair = new ArrayList<String>();
            int count=0;
            String sql="";
            for(count=0;count<3;count++)
            {
                String pri = request.getParameter("petrol"+count);
                if(pri==null)
                {
                    pri="";
                }
                else if(!pri.equals(""))
                {
                    price.add(pri);
                }
                
                String vehicle = request.getParameter("vehicleno"+count);
                if(vehicle==null)
                {
                    vehicle="";
                }
                else if(!vehicle.equals(""))
                {
                    vehicleno.add(vehicle);
                }
                
                String drive = request.getParameter("driver"+count);
                if(drive==null)
                {
                    drive="";
                }
                else if(!drive.equals(""))
                {
                    driver.add(drive);
                }
                
                String pic = request.getParameter("pick"+count);
                if(pic==null)
                {
                    pic="";
                }
                else if(!pic.equals(""))
                {
                    pick.add(pic);
                }
                
                String dro = request.getParameter("drop"+count);
                if(dro==null)
                {
                    dro="";
                }
                else if(!dro.equals(""))
                {
                    drop.add(dro);
                }
                
                String rep = request.getParameter("repair"+count);
                if(rep==null)
                {
                    rep="";
                }
                else if(!rep.equals(""))
                {
                    repair.add(rep);
                }               
            }
            for(count=1;count<=3;count++)
            {
            sql ="insert into vehicle (petrol,vehicleno,driver,pick,dropkm,repairing,date) values ('"+price.get(count)+"','"+vehicleno.get(count)+"','"+driver.get(count)+"','"+pick.get(count)+"','"+drop.get(count)+"','"+repair.get(count)+"','"+date+"')";
            db.conn.createStatement();
            db.st.executeUpdate(sql);
            }
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
