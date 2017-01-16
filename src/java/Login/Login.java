/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

import Datab.Datab;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sohamkapoor
 */
public class Login extends HttpServlet {

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
//            out.println("<title>Servlet Login</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
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
            // do login check
            String username="",password="";
            username = request.getParameter("form-username");
            password = request.getParameter("form-password");
            if(username.equals("mangalam") && password.equals("indane")){
                // setting mangalam in session
                HttpSession session = request.getSession();
                session.setAttribute("UserName", username);
            // check for salary
            Calendar calendar = Calendar.getInstance();
            if (calendar == null) {
                System.out.println("Calendar =" + calendar);
            }
            int dayOfMonth = calendar.get(Calendar.DAY_OF_MONTH);
            if (dayOfMonth == 2) {
            String sql = "", nam = "", ph = "", sql1 = "";
            int counter = 0, advance = 0,sa=0,diff=0;
            ArrayList<String> name = new ArrayList<String>();
            ArrayList<String> phno = new ArrayList<String>();
            ArrayList<Integer> sal = new ArrayList<Integer>();
            ArrayList<Integer> salary = new ArrayList<Integer>();
            sql = "select name,phno,sal from employee";
            db.rs = db.st.executeQuery(sql);
            while (db.rs.next()) {
                nam = db.rs.getString("name");
                ph = db.rs.getString("phno");
                sa = db.rs.getInt("sal");
                name.add(nam);
                phno.add(ph);
                salary.add(sa); // salary in salary
                sql1 = "select advance from adv_salary where nameoe='" + name.get(counter) + "' and phno ='" + phno.get(counter) + "'";
                db.rs = db.st.executeQuery(sql1);
                while (db.rs.next()) {
                    advance = db.rs.getInt("advance");
                    // advance amt in sal
                    sal.add(advance);
                    }
                if(sal.get(counter) > salary.get(counter)){
                    diff = sal.get(counter) - salary.get(counter);
                    sql="update adv_salary set advance='"+diff+"' where nameoe='"+name.get(counter)+"' and phno='"+phno.get(counter)+"'";
                    db.conn.createStatement();
                    db.st.executeUpdate(sql);
                    sql1 ="update employee set salary ="+0+" where name='"+name.get(counter)+"' and phno='"+phno.get(counter)+"'";
                    db.conn.createStatement();
                    db.st.executeUpdate(sql1);
                }
                if(sal.get(counter) < salary.get(counter)){
                    diff = salary.get(counter) - sal.get(counter);
                    sql="update adv_salary set advance="+0+" where nameoe='"+name.get(counter)+"' and phno='"+phno.get(counter)+"'";
                    db.conn.createStatement();
                    db.st.executeUpdate(sql);
                    sql1 ="update employee set salary ="+salary.add(counter)+" where name='"+name.get(counter)+"' and phno='"+phno.get(counter)+"'";
                    db.conn.createStatement();
                    db.st.executeUpdate(sql1);
                }
                }
            }           
            // redirect page to central page
            response.setIntHeader("Refresh", 2);
            response.sendRedirect("http://localhost:8080/gas/central.jsp");
          }
            else{
                response.setIntHeader("Refresh", 2);
                out.println("<script>alert('Wrong username or password '); </script>");
                response.sendRedirect("http://localhost:8080/gas/index.jsp");
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
