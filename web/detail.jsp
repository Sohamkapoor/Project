<%-- 
    Document   : detail
    Created on : Nov 18, 2016, 2:31:34 PM
    Author     : sohamkapoor
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Datab.Datab"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Detail</title>
    </head>
    <body>
        <%
            try {
                Datab db = new Datab();
                String salutation = request.getParameter("salutation");
                String fname = request.getParameter("form-first-name");
                String mname = request.getParameter("middle-name");
                String lname = request.getParameter("form-last-name");
                String customername = fname + " " + mname + " " + lname;
                String dob = request.getParameter("form-dob");
                String father = request.getParameter("form-father-name");
                String mother = request.getParameter("form-mother-name");
                String spouse = request.getParameter("form-spouse");
                String address = request.getParameter("form-address");
                String pincode = request.getParameter("form-pincode");
                // int pin = Integer.parseInt(pincode.trim());
                String telephone = request.getParameter("form-telephone");
                // int tele= Integer.parseInt(telephone.trim());
                String mob = request.getParameter("form-mob");
                // long mobile = Long.parseLong(mob.trim());
                String email = request.getParameter("form-email");
                String bank = request.getParameter("form-bank");
                String branch = request.getParameter("form-branch-address");
                String ifsc = request.getParameter("form-ifsc");
                String acc = request.getParameter("form-accno");
                // long account = Long.parseLong(acc.trim());
                String[] id = request.getParameterValues("form-document");
                String adharno = request.getParameter("form-adharno");
                String pan = request.getParameter("form-panno");

                String passport = request.getParameter("form-passport");
                String dl = request.getParameter("form-dlno");
                String ration = request.getParameter("form-rationno");
                String voter = request.getParameter("form-voterno");
                String state = request.getParameter("form-stateid");
                String stove = request.getParameter("form-stove");
                String idselected = "";
                String idnumber = "";
                if (passport == null) {
                    passport = "";
                }

                ArrayList<String> rates = new ArrayList<String>();
                ArrayList<String> quatities = new ArrayList<String>();
                int totalSum = 0;
                final int totalTextBox = 12;
                for (int rateTextCount = 1; rateTextCount <= totalTextBox; rateTextCount++) {
                    rates.add(request.getParameter("form-rate" + rateTextCount));
                }
                for (int quantityTextCount = 1; quantityTextCount <= totalTextBox; quantityTextCount++) {
                    quatities.add(request.getParameter("form-qty" + quantityTextCount));
                }

               /* for (int availableTextCount = 1; availableTextCount <= rates.size(); availableTextCount++) {
                   if(rates.get(availableTextCount)==null)
                   {
                       System.out.println("null found");
                   }
                }*/

                
%>
        





            <%
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
    </body>
</html>
