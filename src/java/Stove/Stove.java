/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Stove;

import Datab.Datab;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
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
public class Stove extends HttpServlet {

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
//            out.println("<title>Servlet Stove</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Stove at " + request.getContextPath() + "</h1>");
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
            int stove1975 = 0, stove1990 = 0, pr = 0, pipe15 = 0, cy = 0, dairy = 0, counter1 = 0, counter2 = 0, counter3 = 0, counter4 = 0, extra = 0;
            String stove197 = "", stove199 = "", pr1 = "", pipe = "", cv = "", dairy1 = "", count1 = "", count2 = "", count3 = "", count4 = "", type = "", sql = "";
            String c = "", c1 = "", c2 = "", c3 = "", table1 = "", table2 = "", table3 = "", table4 = "", sql1 = "", table5 = "", table6 = "", table7 = "";
            String agencyname = "", tinno = "", invoiceno = "", nameoc = "", price1975 = "", price990 = "", prprice = "", pipeprice = "", pricedairy = "";
            double taxno=0.0;
            DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
            Date date = new Date();
            String price19="",pric990="",prpr="",pipepr="",pricedai="";
            String tod = formatter.format(date);
            agencyname = request.getParameter("agency_name");
            tinno = request.getParameter("tin_no");
            taxno = Double.parseDouble(request.getParameter("tax_no"));
            nameoc = request.getParameter("nameoc");
            invoiceno = request.getParameter("invoice_no");
            type = request.getParameter("type");
            if (type.equals("sell")) {
                stove197 = request.getParameter("stove197");
                stove199 = request.getParameter("stove199");
                pr1 = request.getParameter("prsell");
                pipe = request.getParameter("pipe1.5");
                dairy1 = request.getParameter("dairysell");
                count1 = request.getParameter("counter1111");
                count2 = request.getParameter("counter1112");
                count3 = request.getParameter("counter1113");
                count4 = request.getParameter("counter1114");
                price19 = request.getParameter("stoveprice1975");
                pric990 = request.getParameter("pricestove1990");
                prpr = request.getParameter("pricepr");
                pipepr = request.getParameter("pricepipe");
                pricedai = request.getParameter("pricedairy");
                System.out.println("stove="+ price19+" "+"1990 ="+pric990+" "+"prprice ="+prpr+"pipe="+pipepr+"dairy="+pricedai+" "+"taxno="+taxno);
                if (price19.equals("")) {price19 = "0";}
                if (pric990.equals("")) {pric990 = "0";}
                if (prpr.equals("")) {prpr = "0";}
                if (pipepr.equals("")) {pipepr = "0";}
                if(pricedai.equals("")){pricedai="0";}
                
            }
            String stov197="",stov199="",pr11="",pipee="",dairy11="";
            if (type.equals("godown")) {
                stov197 = request.getParameter("stove1975");
                price1975 = request.getParameter("stove1975price");
                stov199 = request.getParameter("stove1990");
                price990 = request.getParameter("stove1990price");
                pr11 = request.getParameter("pr");
                prprice = request.getParameter("prprice");
                pipee = request.getParameter("1.5pipe");
                pipeprice = request.getParameter("1.5pipeprice");
                dairy11 = request.getParameter("dairy");
                pricedairy = request.getParameter("dairyprice");
                String count11 = request.getParameter("counter11111");
                String count12 = request.getParameter("counter11112");
                String count13 = request.getParameter("counter11113");
                String count14 = request.getParameter("counter11114"); 
                if(stov197.equals("")){stov197 = "0";}
                if(stov199.equals("")){stov199 = "0";}
                if(pr11.equals("")){pr11="0";}
                if(pipee.equals("")){pipee ="0";}
                if(dairy11.equals("")){dairy11 ="0";}
                if (price1975.equals("")) {price1975 = "0";}
                if (price990.equals("")) {price990 = "0";}
                if (prprice.equals("")) {prprice = "0";}
                if (pipeprice.equals("")) {pipeprice = "0";}
                if(pricedairy.equals("")){pricedairy="0";}
            }

            c = request.getParameter("c1");
            c1 = request.getParameter("c2");
            c2 = request.getParameter("c3");
            c3 = request.getParameter("c4");
            if (c == null) {
                c = "";
            }
            if (c1 == null) {
                c1 = "";
            }
            if (c2 == null) {
                c2 = "";
            }
            if (c3 == null) {
                c3 = "";
            }
            if (stove197.equals("")) {
                stove197 = "0";
            }
            if (stove199.equals("")) {
                stove199 = "0";
            }
            if (pr1.equals("")) {
                pr1 = "0";
            }
            if (pipe.equals("")) {
                pipe = "0";
            }
            if (dairy1.equals("")) {
                dairy1 = "0";
            }
            if (count1 == null) {
                count1 = "0";
            }
            if (count2 == null) {
                count2 = "0";
            }
            if (count3 == null) {
                count3 = "0";
            }
            if (count4 == null) {
                count4 = "0";
            }

            /* === get data from stove factory table and uupdate new data === */
            sql = "select * from stove_factory";
            db.rs = db.st.executeQuery(sql);
            while (db.rs.next()) {
                table1 = db.rs.getString("stove1975");
                table2 = db.rs.getString("stove1990");
                table3 = db.rs.getString("pr");
                table4 = db.rs.getString("pipe15");
                table6 = db.rs.getString("dairy");
                table7 = db.rs.getString("extra");
            }
            if (table1.equals("")) {
                table1 = "0";
            }
            if (table2.equals("")) {
                table2 = "0";
            }
            if (table3.equals("")) {
                table3 = "0";
            }
            if (table4.equals("")) {
                table4 = "0";
            }
            if (table6.equals("")) {
                table6 = "0";
            }
            if (table7.equals("")) {
                table7 = "0";
            }
            if (type.equals("godown")) {
                stove1975 = Integer.parseInt(table1) + Integer.parseInt(stov197);
                stove1990 = Integer.parseInt(table2) + Integer.parseInt(stov199);
                pr = Integer.parseInt(table3) + Integer.parseInt(pr11);
                pipe15 = (Integer.parseInt(table4)) + (Integer.parseInt(pipee));
                dairy = (Integer.parseInt(table6)) + (Integer.parseInt(dairy11));
                counter1 = Integer.parseInt(count1);
                counter2 = Integer.parseInt(count2);
                counter3 = Integer.parseInt(count3);
                counter4 = Integer.parseInt(count4);
                extra = (Integer.parseInt(table7)) + counter1 + counter2 + counter3 + counter4;
                sql = "insert into stove(agencyname,tinno,taxno,invoiceno,customername,stove1975,price1975,stove1990,price990,pr,prprice,pipe15,pipeprice,dairy,dairyprice,type,offername1,offer1,offername2,offer2,offername3,offer3,offername4,offer4,day)values('" + agencyname + "','" + tinno + "','" + taxno + "','" + invoiceno + "','" + nameoc + "','" + stov197 + "','" + price1975 + "','" + stov199 + "','" + price990 + "','" + pr11 + "','" + prprice + "','" + pipee + "','" + pipeprice + "','" + dairy11 + "','" + pricedairy + "','" + type + "','" + c + "','" + count1 + "','" + c1 + "','" + count2 + "','" + c2 + "','" + count3 + "','" + c3 + "','" + count4 + "','" + date + "')";
                db.conn.createStatement();
                db.st.executeUpdate(sql);
                sql1 = "update stove_factory set stove1975 ='" + stove1975 + "',stove1990 ='" + stove1990 + "',pr ='" + pr + "',pipe15 ='" + pipe15 + "',dairy ='" + dairy + "',extra ='" + extra + "',day ='" + date + "' where id=1";
                db.conn.createStatement();
                db.st.executeUpdate(sql1);
                response.setIntHeader("Refresh", 2);
                response.sendRedirect("http://localhost:8080/gas/Stove.jsp");
            }

            if (type.equals("sell")) {
                stove1975 = Integer.parseInt(table1) - Integer.parseInt(stove197);
                stove1990 = Integer.parseInt(table2) - Integer.parseInt(stove199);
                pr = Integer.parseInt(table3) - Integer.parseInt(pr1);
                pipe15 = (Integer.parseInt(table4)) - (Integer.parseInt(pipe));
                dairy = (Integer.parseInt(table6)) - (Integer.parseInt(dairy1));
                counter1 = Integer.parseInt(count1);
                counter2 = Integer.parseInt(count2);
                counter3 = Integer.parseInt(count3);
                counter4 = Integer.parseInt(count4);
                extra = (Integer.parseInt(table7)) - (counter1 + counter2 + counter3 + counter4);
                int product1 =0,product2=0,product3=0,product4=0,product5=0;
                double product6=0.0;
                        product1 = ((Integer.parseInt(price19)) * (Integer.parseInt(stove197))) ;
                        product2 = ((Integer.parseInt(pric990)) * (Integer.parseInt(stove199)));
                        product3 = ((Integer.parseInt(prpr))* (Integer.parseInt(pr1)));
                        product4 = ((Integer.parseInt(pipepr))* (Integer.parseInt(pipe)));
                        product5 = ((Integer.parseInt(pricedai))* (Integer.parseInt(dairy1)));
                        product6 = product1+product2+product3+product4+product5+taxno;
                if ((stove1975 < 0) && (stove1990 < 0) && (pr < 0) && (pipe15 < 0) && (dairy < 0) && (extra < 0)) {
                    out.println("<h3> Error!!! There is not enough stock </h3>");
                } else if ((stove1975 >= 0) && (stove1990 >= 0) && (pr >= 0) && (pipe15 >= 0) && (dairy >= 0) && (extra >= 0)) {
                    /* === Store date wise data in table === */
                    sql = "insert into stove(agencyname,tinno,taxno,invoiceno,customername,stove1975,price1975,stove1990,price990,pr,prprice,pipe15,pipeprice,dairy,dairyprice,type,offername1,offer1,offername2,offer2,offername3,offer3,offername4,offer4,day)values('" + agencyname + "','" + tinno + "','" + taxno + "','" + invoiceno + "','" + nameoc + "','" + stove197 + "','"+price19+"','" + stove199 + "','"+pric990+"','" + pr1 + "','"+prpr+"','" + pipe + "','"+pipepr+"','" + dairy1 + "','"+pricedai+"','" + type + "','" + c + "','" + count1 + "','" + c1 + "','" + count2 + "','" + c2 + "','" + count3 + "','" + c3 + "','" + count4 + "','" + date + "')";
                    db.conn.createStatement();
                    db.st.executeUpdate(sql);
                    /* === update factory === */
                    sql1 = "update stove_factory set stove1975 ='" + stove1975 + "',stove1990 ='" + stove1990 + "',pr ='" + pr + "',pipe15 ='" + pipe15 + "',dairy ='" + dairy + "',extra ='" + extra + "',day ='" + date + "' where id=1";
                    db.conn.createStatement();
                    db.st.executeUpdate(sql1);
                    out.println("<table border='1px'>");
                    out.println("<tr><td colspan='2'>Tin No: 08390014694</td> <td colspan='2' align='right'> Employee Copy </td>");
                    out.println("<tr><td align='center' colspan='2'><h3> Mangalam Enterprises </h3></td><td align='center' colspan='3'><img src='assets/img/indane-gas-agency-in-faridabad.jpg' height='60px' width='200px'></td></tr>");
                    out.println("<tr><td colspan='6' align='center'>728/28,Jatiya Colony, Pahad Gunj, Ajmer(305001)</td></tr>");
                    out.println("<tr><td colspan='2'>S.NO </td> <td colspan='2'>Name " + nameoc + "</td></tr>");
                    out.println("<tr>\n"
                            + "	<th> Product </th>\n"
                            + "	<th> Rate </th>\n"
                            + "	<th> Quantity </th>\n"
                            + "	<th> Amount </th>\n"
                            + "</tr>");
                    out.println("<tr>\n"
                            + "	<td>Stove 1975</td>\n"
                            + "	<td>"+price19+"</td>\n"
                            + "	<td>"+stove197+"</td>\n"
                            + "	<td>"+product1+"</td>\n"
                            + "</tr>");
                    out.println("<tr>\n"
                            + "	<td> Stove 990 </td>\n"
                            + "	<td>"+pric990+"</td>\n"
                            + "	<td>"+stove199+"</td>\n"
                            + "	<td>"+product2+"</td>\n"
                            + "</tr>");
                    out.println("<tr>\n"
                            + "	<td> PR </td>\n"
                            + "	<td>"+prpr+"</td>\n"
                            + "	<td>"+pr1+"</td>\n"
                            + "	<td>"+product3+"</td>\n"
                            + "</tr>");
                    out.println("<tr>\n"
                            + "	<td> Pipe </td>\n"
                            + "	<td>"+pipepr+"</td>\n"
                            + "	<td>"+pipe+"</td>\n"
                            + "	<td>"+product4+"</td>\n"
                            + "</tr>");
                    out.println("<tr>\n"
                            + "	<td> Dairy </td>\n"
                            + "	<td>"+pricedai+"</td>\n"
                            + "	<td>"+dairy1+"</td>\n"
                            + "	<td>"+product5+"</td>\n"
                            + "</tr>");
                    out.println("<tr>\n"
                            + "	<td></td>\n"
                            + "	<td></td>\n"
                            + "	<td> Vat </td>\n"
                            + "	<td>"+taxno+"</td>\n"
                            + "</tr>");
                    out.println("<tr>\n"
                            + "	<td></td>\n"
                            + "	<td></td>\n"
                            + "	<td> Total </td>\n"
                            + "	<td>"+product6+"</td>\n"
                            + "</tr>");
                    out.println("</table>");
                    out.println("<table border='1px'>");
                    out.println("<tr><td colspan='2'>Tin No: 08390014694</td><td colspan='2' align='right'> Customer Copy </td>");
                    out.println("<tr><td align='center' colspan='2'><h3> Mangalam Enterprises </h3></td><td align='center' colspan='3'><img src='assets/img/indane-gas-agency-in-faridabad.jpg' height='60px' width='200px'></td></tr>");
                    out.println("<tr><td colspan='6' align='center'>728/28,Jatiya Colony, Pahad Gunj, Ajmer(305001)</td></tr>");
                    out.println("<tr><td colspan='2'>S.NO </td> <td colspan='2'>Name " + nameoc + "</td></tr>");
                    out.println("<tr>\n"
                            + "	<th> Product </th>\n"
                            + "	<th> Rate </th>\n"
                            + "	<th> Quantity </th>\n"
                            + "	<th> Amount </th>\n"
                            + "</tr>");
                    out.println("<tr>\n"
                            + "	<td>Stove 1975</td>\n"
                            + "	<td>"+price19+"</td>\n"
                            + "	<td>"+stove197+"</td>\n"
                            + "	<td>"+product1+"</td>\n"
                            + "</tr>");
                    out.println("<tr>\n"
                            + "	<td> Stove 990 </td>\n"
                            + "	<td>"+pric990+"</td>\n"
                            + "	<td>"+stove199+"</td>\n"
                            + "	<td>"+product2+"</td>\n"
                            + "</tr>");
                    out.println("<tr>\n"
                            + "	<td> PR </td>\n"
                            + "	<td>"+prpr+"</td>\n"
                            + "	<td>"+pr1+"</td>\n"
                            + "	<td>"+product3+"</td>\n"
                            + "</tr>");
                    out.println("<tr>\n"
                            + "	<td> Pipe </td>\n"
                            + "	<td>"+pipepr+"</td>\n"
                            + "	<td>"+pipe+"</td>\n"
                            + "	<td>"+product4+"</td>\n"
                            + "</tr>");
                    out.println("<tr>\n"
                            + "	<td> Dairy </td>\n"
                            + "	<td>"+pricedai+"</td>\n"
                            + "	<td>"+dairy1+"</td>\n"
                            + "	<td>"+product5+"</td>\n"
                            + "</tr>");
                    out.println("<tr>\n"
                            + "	<td></td>\n"
                            + "	<td></td>\n"
                            + "	<td> Vat </td>\n"
                            + "	<td>"+taxno+"</td>\n"
                            + "</tr>");
                    out.println("<tr>\n"
                            + "	<td></td>\n"
                            + "	<td></td>\n"
                            + "	<td> Total </td>\n"
                            + "	<td>"+product6+"</td>\n"
                            + "</tr>");
                    out.println("</table>");
                    out.println("<p align='center'> <input type='button' value=' Print this Page' onclick='window.print()'/> </p>");
                }
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
