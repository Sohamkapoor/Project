<%-- 
    Document   : vehicle_display
    Created on : Dec 2, 2016, 10:38:56 AM
    Author     : sohamkapoor
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="Datab.Datab"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Vehicle Display</title>
        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/new_connection.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>


        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
        <!--        <script>
                    $(document).ready(function () {
                        $("#datepicker").datepicker({dateFormat: 'mm/dd/yy',
                            changeMonth: true,
                            changeYear: true,
                            yearRange: '-100y:c+nn',
                            maxDate: '-1d'});
                    });
                </script>-->
        <script>
            function f()
            {
            window.location.href="http://localhost:8080/gas/miscellaneous_vehicle.jsp";
            }
            </script>
    </head>
    <body>

        <!-- Top menu -->
        <nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">Consumer Information Sheet</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="top-navbar-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <span class="li-text">
                                <!--Put some text or-->
                            </span> 
                            <!--a href="#"><strong>links</strong></a--> 
                            <span class="li-text">
                                <!--here, or some icons: -->
                            </span> 
                            <span class="li-social">
                                <a href="#"><i class="fa fa-facebook"></i></a> 
                                <a href="#"><i class="fa fa-twitter"></i></a> 
                                <a href="#"><i class="fa fa-envelope"></i></a> 
                                <a href="#"><i class="fa fa-skype"></i></a>
                            </span>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Top content -->
        <div class="top-content">

            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Shri Mangalam Indane</strong> Customer Information Sheet </h1>
                            <div class="description">
                                <p>
                                    <!--This is a free responsive multi-step registration form made with Bootstrap. 
                                    Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it as you like!-->
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">

                            <form role="form" action="vehicle" method="post" class="registration-form">
                                <fieldset>
                                    <div class="form-top">
                                        <div class="form-top-left">
                                            <h3>Step 1 / 1</h3>
                                            <p>Enter Drop K.M. :</p>
                                        </div>
                                        <div class="form-top-right">
                                            <i class="fa fa-user"></i>
                                        </div>
                                    </div>

                                    <div class="form-bottom" id="form-bottom">
                                        <%
                                                Datab db = new Datab();
                                                String sql = "";
                                                
                                                Calendar cal = Calendar.getInstance();
                                                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                                                String strDate = sdf.format(cal.getTime());
                                                System.out.println("Current date in String Format: " + strDate);
                                                SimpleDateFormat sdf1 = new SimpleDateFormat();
                                                sdf1.applyPattern("dd/MM/yyyy");
                                                Date date = sdf1.parse(strDate);
                                                
                                                ArrayList<String> petrolPrice = new ArrayList<String>();
                                                ArrayList<String> vehicleno = new ArrayList<String>();
                                                ArrayList<String> driverName = new ArrayList<String>();
                                                ArrayList<String> pick_Up_Km = new ArrayList<String>();
                                                ArrayList<String> drop_Km = new ArrayList<String>();
                                                ArrayList<String> repairCharges = new ArrayList<String>();
                                                sql = "select * from vehicle where date ='"+date+"'";
                                                db.rs = db.st.executeQuery(sql);
                                                while (db.rs.next()) {
                                                    petrolPrice.add(db.rs.getString("petrol"));
                                                    vehicleno.add(db.rs.getString("vehicleno"));
                                                    driverName.add(db.rs.getString("driver"));
                                                    pick_Up_Km.add(db.rs.getString("pick"));
                                                    drop_Km.add(db.rs.getString("dropkm"));
                                                    repairCharges.add(db.rs.getString("repairing"));
                                                }                                        
                                        %>
                                        <table border="1px">
                                            <tr>
                                                <th>Petrol</th>
                                                <th>Vehicle No</th>
                                                <th>Driver Name</th>
                                                <th>Morning Meter No</th>
                                                <th>Evening Meter No</th>
                                                <th>Repair</th>
                                            </tr>
                                            <%

                                                for(int i=0;i<vehicleno.size();i++)
                                                {

                                            %>
                                            <tr>
                                                <td> <input type="text" name="petrolPrice<%=i%>"  id="petrolPrice<%=i%>" value="<%= petrolPrice.get(i) %>"> </td>
                                                <td> <input type="text" name="vehicleno<%=i%>" onkeydown="return false" id=" vehicleno<%=i%>" value="<%= vehicleno.get(i) %>"> </td>
                                                <td> <input type="text" name="<% driverName.get(i); %>" onkeydown="return false" id="<% driverName.get(i); %>" value="<%= driverName.get(i) %>"> </td>
                                                <td> <input type="text" name="<% pick_Up_Km.get(i); %>" onkeydown="return false" id="<% pick_Up_Km.get(i); %>" value="<%= pick_Up_Km.get(i) %>"> </td>
                                                <td> <input type="text" name="drop<%=i%>"  id="drop<%=i%>" value="<%= drop_Km.get(i) %>"> </td>
                                                <td> <input type="text" name="repair<%=i %>"  id="repair<%= i %>" value="<%= repairCharges.get(i) %>"> </td>
                                             </tr> <br/>   
                                             <% } %>   
                                        </table><br/>
                                        <input type="hidden" name="count" id="count" value="<%=vehicleno.size()%>"/>
                                        <input type="hidden" name="counter" id="count">
                                        <input type="button" class="btn btn-success" onclick="f();" value="Add Form"><br/>                                      
                                        <a href ="Miscellaneous_exp.jsp"> Miscellaneous Expenses </a>
                                        <input type="submit" value="submit"/>
                                        <a href ="Advance_Salary.jsp"> Advance Salary </a>

                                    </div>
                                </fieldset>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>





    <!--[if lt IE 10]>
        <script src="assets/js/placeholder.js"></script>
    <![endif]-->

</body>

</html>