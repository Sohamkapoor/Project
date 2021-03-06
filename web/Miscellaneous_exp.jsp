<%-- 
    Document   : Miscellaneous_exp
    Created on : Nov 30, 2016, 2:38:44 AM
    Author     : sohamkapoor
--%>

<%@page import="Datab.Datab"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title> Miscellaneous Expenses </title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/dropdown.css">

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
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/scripts.js"></script>       
        <!--script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script-->
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
       <script>
            function teaValidate(){
            var x = document.getElementById("form-tea").value;
            if ((x%1) != 0) 
            {
                $('#errtea').text('Enter Numbers Only');
            }
            
        };
        function extraValidate()
        {
            var x = document.getElementById("form-extra").value;
            if((x%1)!=0)
            {
                $('#errextra').text('Enter Number only');
            }
        };
        function bankValidate()
        {
            var x = document.getElementById("form-bank").value;
            if((x%1)!=0)
            {
                $('#errbank').text('Enter Number only');
            }
        };
        function bankValidatewith()
        {
            var x = document.getElementById("form-bank-withdraw").value;
            if((x%1)!=0)
            {
                $('#errbankwithdrae').text('Enter Number only');
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
        <!-- Top menu -->
<!--        <nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
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
                            <h1><strong>Shri Mangalam Indane</strong> Expenses </h1>
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
       
   

                            <form role="form" action="Miscellaneous" method="post" class="registration-form">

                                <fieldset>
                                    <div class="form-top">
                                        <div class="form-top-left">
                                            <h3>Step 1 / 1</h3>
                                            <p>Miscellaneous Expenses :</p>
                                        </div>
                                        <div class="form-top-right">
                                            <i class="fa fa-user"></i>
                                        </div>
                                    </div>

                                    <div class="form-bottom">
                                        <div class="form-group">
                                            <% 
                                                Datab db = new Datab();
                                                String sql1="",ban="",banwith="";
                                                int bank =0;
                                                sql1 = "select bank,banwith from miscellaneous";
                                                db.rs = db.st.executeQuery(sql1);
                                                while (db.rs.next()) {
                                                    ban = db.rs.getString("bank");
                                                    banwith = db.rs.getString("banwith");
                                                    if(banwith==null){banwith ="0";}
                                                    if(banwith.equals("")){banwith ="0";}
                                                    bank += ((Integer.parseInt(ban))-(Integer.parseInt(banwith)));
                                                    System.out.println("bank ="+ bank);
                                                }

                                            %>
                                            <label for="bankbal"> Current Bank Balance : <%= bank %></label>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="form-tea" placeholder="Tea/Cofee Snacks" class="form-tea form-control" id="form-tea" onblur="teaValidate()" >
                                            <span  style="color:red;font-weight:bold" name="errorSpan" id="errtea"></span>
                                        </div>

                                        <div class="form-group">
                                            <input type="text" name="form-bank" placeholder="Bank Deposite" class="form-bank form-control" id="form-bank" onblur="bankValidate()" >
                                            <span  style="color:red;font-weight:bold" name="errorSpan" id="errbank"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="form-bank-withdraw" placeholder="Bank Withdraw" class="form-bank-withdraw form-control" id="form-bank-withdraw" onblur="bankValidatewith()" >
                                            <span  style="color:red;font-weight:bold" name="errorSpanwithdraw" id="errbankwithdraw"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="form-extra" placeholder="Extra Expenses" class="form-extra form-control" id="form-extra" onblur="extraValidate()">
                                            <span  style="color:red;font-weight:bold" name="errorSpan" id="errextra"></span>
                                        </div>

                                        <a href ="miscellaneous_vehicle.jsp"> Miscellaneous Vehicle Expenses </a>
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


<% } %>


    <!--[if lt IE 10]>
        <script src="assets/js/placeholder.js"></script>
    <![endif]-->

</body>

</html>
