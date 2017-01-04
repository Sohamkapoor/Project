/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LinkCustomer;

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
public class LinkCustomer extends HttpServlet {

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
//            out.println("<title>Servlet LinkCustomer</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet LinkCustomer at " + request.getContextPath() + "</h1>");
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
            String[] check = request.getParameterValues("status");
            String[] type = new String[50];
            String[] cylinder = new String[50];
            String[] pr = new String[50];
            String[] cy = new String[50];
            String[] dairy = new String[50];
            String[] pipe = new String[50];
            DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
            Date date = new Date();
            String tod=formatter.format(date);
            String sql="",four="",nine="",five="",sql1="";
            int fourteen=0 , nineteen=0 , fiveteen=0,cylinde=0,dair=0,p=0,pip=0,c=0;
            // call type from connection table
            for(int i=0;i<check.length;i++)
            {
                sql="update new_customer set status ='verified' where id='"+check[i]+"'";
                db.conn.createStatement();
                db.st.executeUpdate(sql);
                
                sql =" select type,dairy from new_customer where id ='"+check[i]+"'";
                db.rs = db.st.executeQuery(sql);
                while (db.rs.next()) {
                type[i] = db.rs.getString("type");
                dairy[i] = db.rs.getString("dairy");

                }
            }
            
          // run update query
          sql1 ="select * from godown where id='1'";
          db.rs = db.st.executeQuery(sql1);
          while (db.rs.next()) {
              four = db.rs.getString("filled_fourteen");
              fourteen = Integer.parseInt(four);
              nine = db.rs.getString("filled_nineteen");
              nineteen = Integer.parseInt(nine);
              five = db.rs.getString("filled_five");
              fiveteen = Integer.parseInt(five);
          }
          System.out.println("four ="+fourteen+"nine ="+ nineteen+"five ="+fiveteen);
          String dairy1="",pr1="",pipe15="",cy1="",stove="";
          sql = "select * from stove_factory";
          db.rs = db.st.executeQuery(sql);
          while(db.rs.next())
          {
              dairy1 = db.rs.getString("dairy");
          }
          for(int i=0;i<check.length;i++)
          {
              if(type[i].equals("domestic"))
              {
//                  cylinde = fourteen - (Integer.parseInt(cylinder[i]));
//                  sql1 = "update godown set filled_fourteen ='"+cylinde+"' where id='1'";
//                  db.conn.createStatement();
//                  db.st.executeUpdate(sql1);
                  dair = (Integer.parseInt(dairy1)) - 1 ;
                  sql ="update stove_factory set dairy ='"+dair+"',day ='"+date+"' where id='1'";
                  db.conn.createStatement();
                  db.st.executeUpdate(sql);
              }
              if(type[i].equals("nd"))
              {
//                  cylinde = nineteen - (Integer.parseInt(cylinder[i]));
//                  sql = "update godown set filled_nineteen ='"+cylinde+"' where id='1'";
//                  db.conn.createStatement();
//                  db.st.executeUpdate(sql);
                  dair = (Integer.parseInt(dairy1)) - (Integer.parseInt(dairy[i]));
                  sql ="update stove_factory set dairy ='"+dair+"',date ='"+date+"' where id='1'";
                  db.conn.createStatement();
                  db.st.executeUpdate(sql);
              }
          }
        }catch(Exception e)
        {e.printStackTrace();}
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
