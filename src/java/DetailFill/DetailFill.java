/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DetailFill;

import Datab.Datab;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sohamkapoor
 */
public class DetailFill extends HttpServlet {

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
        
            /* TODO output your page here. You may use following sample code. */
          /*  out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DetailFill</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DetailFill at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
        
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
            try(PrintWriter out = response.getWriter()) {
           Datab db=new Datab();
           String name = request.getParameter("form-nameoc");
           ArrayList<String> empty=new ArrayList<String>();
           ArrayList<String> filled=new ArrayList<String>();
           ArrayList<Integer> amount=new ArrayList<Integer>();
           ArrayList<Integer> amountpaid = new ArrayList<Integer>();
           ArrayList<Integer> difference=new ArrayList<Integer>();
           int filledtextbox=0,emptytextbox=0,counter=4,gasrat=0;
           String emptybox="",filledbox="",amtpaid="",gas="",rate="";
           int diff=0,amts=0,am=0,cal=0;
           int total=0;
           gas=request.getParameter("rateofgas");
           
           if(gas==null)
           {
               String sql="select rate from gasrate where id="+1;
               db.rs=db.st.executeQuery(sql);
               while(db.rs.next())
               {                  
                   rate= db.rs.getString("rate");
               }
               gasrat=Integer.parseInt(rate);
           }
           else
           {
            gasrat=Integer.parseInt("gas");
            String sql="update gasrate set rate="+gasrat+"where id="+1;
            db.conn.createStatement();
            db.st.executeUpdate(sql);
           }
           
           for(filledtextbox=1;filledtextbox<=counter;filledtextbox++)
           {
               filledbox=request.getParameter("form-filledcv" + filledtextbox).trim();
               if(!filledbox.equals(""))
               {
                   filled.add(filledbox);
               }
               else{
                   filled.add("0");
               }
           }
           for(filledtextbox=1;filledtextbox<=counter;filledtextbox++)
           {
               amtpaid=request.getParameter("form-amt" + filledtextbox).trim();
               if(!amtpaid.equals(""))
               {
                   amountpaid.add(Integer.parseInt(amtpaid));
               }
               else
               {
                   amountpaid.add(0);
               }
           }
            
           for( emptytextbox=1;emptytextbox<=counter;emptytextbox++)
           {
               emptybox=request.getParameter("form-emptycv" + emptytextbox).trim();
               if(!emptybox.equals(""))
               {
                   empty.add(emptybox);
               }
               else{
                   empty.add("0");
               }
           }
           
           if(filled.size()==empty.size()){
               for(int totalbox=0;totalbox<filled.size();totalbox++)
               {
                   diff=(Integer.parseInt(filled.get(totalbox)))-(Integer.parseInt(empty.get(totalbox)));
                   System.out.println("difference ="+diff);
                   total=(Integer.parseInt(filled.get(totalbox)));
                   amount.add(gasrat*total);
                   amts=amount.get(totalbox);
                   am=amountpaid.get(totalbox);
                   cal=amts-am;
                   difference.add(cal);
                                      System.out.println("cal ="+cal+"total ="+total);
                   if(diff!=0)
                   {
                       out.println("<html><body onload=\"alert('Customer has not given all Empty Cylinders')\"></body></html>");
                   }
               }               
           }
           for(emptytextbox=0;emptytextbox<4;emptytextbox++)
           {
               if(amount.get(emptytextbox)>0 && amountpaid.get(emptytextbox)>0)
               {
                   String sql="insert into refill(name,filledcv,emptycv,amount,amtpaid)values('"+name+"','"+filled.get(emptytextbox)+"','"+empty.get(emptytextbox)+"','"+amount.get(emptytextbox)+"','"+amountpaid.get(emptytextbox)+"')";
                   db.conn.createStatement();
                   db.st.executeUpdate(sql);
                   System.out.println("row inserted");
               }
           }
         //  String sql="insert into refill(name,filledcv,emptycv,amount,amtpaid)values();";
           for(int differ:difference)
           {
               System.out.println("diff ="+differ);
           }
           request.setAttribute("name", name);
           request.setAttribute("empty", empty);
           request.setAttribute("filled", filled);
           request.setAttribute("amount", amount);
           request.setAttribute("amountpaid", amountpaid);
           RequestDispatcher rd= request.getRequestDispatcher("RefillDisplay.jsp");
           rd.forward(request,response);
    }catch(Exception e){
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
