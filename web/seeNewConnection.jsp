<%-- 
    Document   : seeNewConnection
    Created on : Dec 28, 2016, 4:10:07 PM
    Author     : sohamkapoor
--%>

<%@page import="Datab.Datab"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>New Customer List</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/dropdown.css">

        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/scripts.js"></script>

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
        <script>
            $(document).ready(function(){
               var e = document.getElementById("registration-form");
               e.style.width = "800px";
               $('.idno').hide();
            });  
            function f(){
                var e = document.getElementById("registration-form");
               e.style.width = "850px";
                var checkboxes = document.getElementsByName('status');
                var selected = [];
                var select;
                $('#hideshow').show();
                for (var i = 0; i < checkboxes.length; i++) {
                if (checkboxes[i].checked) {
                    selected.push(checkboxes[i].value);
                    select= checkboxes[i].value;
                    $('.idno').show();
                }
                }                
            };
        </script>
    </head>
    <body>
              <% 
            if ((session.getAttribute("UserName") == null) || (session.getAttribute("UserName").equals("")))
            {
                response.sendRedirect("http://localhost:8080/gas/index.jsp");
            }
            else { 
        %>
         <div id="nav">
            <div id="nav_wrapper">
            <ul>
                <li><a href="http://localhost:8080/gas/central.jsp"> Home </a></li>
                <li><a href="http://localhost:8080/gas/Attendence.jsp"> Attendance </a> </li>
                <li><a href="#"> Order Plant </a>
                    <ul>
                        <li><a href="http://localhost:8080/gas/Factory.jsp"> Plant </a></li>
                        <li><a href="http://localhost:8080/gas/Stove.jsp"> Stove </a></li>
                    </ul>
                </li>
                <li><a href="#"> Expenses </a>
                    <ul>
                        <li><a href="http://localhost:8080/gas/Miscellaneous_exp.jsp"> Miscellaneous Expenses </a></li>
                        <li><a href="http://localhost:8080/gas/miscellaneous_vehicle.jsp"> Miscellaneous Vehicle </a></li>
                        <li><a href="http://localhost:8080/gas/vehicle_display.jsp"> Enter Evening Vehicle K.M. </a></li>
                        <li><a href="http://localhost:8080/gas/Advance_Salary.jsp"> Advance Salary </a></li>
                    </ul>
                </li>
                <li><a href="#"> New </a>
                    <ul>
                        <li><a href="http://localhost:8080/gas/newconnection.jsp"> New Connection </a></li>
                        <li><a href="http://localhost:8080/gas/seeNewConnection.jsp"> See New Connections </a></li>
                        <li><a href="http://localhost:8080/gas/AddEmployee.jsp"> Add Employee </a></li>
                        <li><a href="http://localhost:8080/gas/GatePass.jsp"> Gate Pass </a> </li>
                    </ul>
                </li>
                <li><a href="#"> Cylinder </a>
                    <ul>
                        <li><a href="http://localhost:8080/gas/Refill.jsp"> 14.2 Kg(Domestic) </a></li>
                        <li><a href="http://localhost:8080/gas/NonDomestic.jsp"> 19 Kg(Non Domestic) </a></li>
                        <li><a href="http://localhost:8080/gas/ShowNDCDetail.jsp"> Show ND Customer Detail </a></li>
                    </ul>
                </li>
                <li> <a href="http://localhost:8080/gas/DriverDispatch.jsp"> Driver Dispatch </a></li>
                <li> <a href="http://localhost:8080/gas/logout.jsp"> Logout </a></li>
                
            </ul>
            </div>
        </div>
<!--        <nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">Refill Information Sheet</a>
                </div>
                 Collect the nav links, forms, and other content for toggling 
                <div class="collapse navbar-collapse" id="top-navbar-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <span class="li-text">
                                Put some text or
                            </span> 
                            a href="#"><strong>links</strong></a 
                            <span class="li-text">
                                here, or some icons: 
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
        </nav>-->
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>

        <!-- Top content -->
        <div class="top-content">

            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Shri Mangalam Indane</strong> New Connection List </h1>
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

                            <form role="form" action="LinkCustomer" method="post" class="registration-form" id="registration-form">

                                <fieldset>
                                    <div class="form-top">
                                        <div class="form-top-left">
                                            <h3>Step 1 / 1</h3>
                                            <p>Tell us your requirement :</p>
                                        </div>
                                        <div class="form-top-right">
                                            <i class="fa fa-user"></i>
                                        </div>
                                    </div>

                                    <div class="form-bottom">

                                        <div class="form-group">
                                        </div>
                                        <table border="1px">
                                            <tr>
                                                <th> Salutation </th>
                                                <th> Name </th>
                                                <th> DOB </th>
                                                <th> Address </th>
                                                <th> Mobile </th>                                                
                                                <th> ID Submitted </th>
                                                <th> Id Number </th>
                                                <th> Type </th>
                                                <th> Status </th>
                                                <th id="hideshow" hidden="true">Consumer Number Generated</th>
                                            </tr>
                                            <%
                                                Datab db = new Datab();
                                                String sql = "", salutation = "", name = "", dob = "", fathername = "", mothername = "", spousename = "", address = "", pincode = "", telephone = "";
                                                String mobile = "", email = "", bankname = "", bankadd = "", ifsc = "", accno = "", idsubmitted = "", idnumber = "", type = "";
                                                sql = "select * from new_customer where status='Not Verified'";
                                                db.rs = db.st.executeQuery(sql);
                                                while (db.rs.next()) {
                                            %>
                                            <tr>
                                                <td align="center"><%= db.rs.getString("salutation")%></td>
                                                <td align="center"><%= db.rs.getString("name")%></td>
                                                <td align="center"><%= db.rs.getString("dob")%></td>
                                                <td align="center"><%= db.rs.getString("address")%></td>
                                                <td align="center"><%= db.rs.getString("mobile")%></td>
                                                <td align="center"><%= db.rs.getString("idsubmitted")%></td>
                                                <td align="center"><%= db.rs.getString("idnumber")%></td>
                                                <td align="center"><%= db.rs.getString("type")%></td>
                                                <td align="center"><input type="checkbox" name="status" id="<%= db.rs.getInt("id")%>" value="<%= db.rs.getInt("id")%>" onclick="f()" /></td>                                               
                                                <td><input type="text" name="idno" class="idno" id="<%=db.rs.getInt("id")%>" style="width:80px" placeholder="Enter Customer Number"></td>
                                            </tr><% }%>
                                        </table>

                                        <input type="submit" class="btn btn-success" value="Submit Details">
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


<% } %>
        <!-- Javascript -->


        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>
