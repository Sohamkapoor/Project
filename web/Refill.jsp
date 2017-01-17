<%-- 
    Document   : Refill
    Created on : Nov 19, 2016, 10:20:57 AM
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
        <title>Refill</title>

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
        <script >
            $(document).ready(function () {
                $("#form-chequeno").hide();
                
                $("#cheque").click(function () {
                    if (document.getElementById("cheque").checked = true)
                    {
                        $("#form-chequeno").show();
                        $("#form-chequeno").val("");
                    }
                });

                $("#cash").click(function () {
                    $("#form-chequeno").val("0");
                    $("#form-chequeno").hide();
                });


                var rate = document.getElementById("rate");
                $("#form-filledcv1").focusout(function () {
                    $("#form-amt1").val((parseInt($("#rate").val())) * parseInt($("#form-filledcv1").val()));
                    $("#form-amt1").attr('readonly', true);

                });

                $("#form-filledcv2").focusout(function () {
                    $("#form-amt2").val((parseInt($("#rate").val())) * parseInt($("#form-filledcv2").val()));
                    $("#form-amt2").attr('readonly', true);

                });

                $("#form-filledcv3").focusout(function () {
                    $("#form-amt3").val((parseInt($("#rate").val())) * parseInt($("#form-filledcv3").val()));
                    $("#form-amt3").attr('readonly', true);

                });
                $("#form-filledcv4").focusout(function () {
                    $("#form-amt4").val((parseInt($("#rate").val())) * parseInt($("#form-filledcv4").val()));
                    $("#form-amt4").attr('readonly', true);
                });
                 $("#form-filledcv5").focusout(function () {
                    $("#form-amt5").val((parseInt($("#rate").val())) * parseInt($("#form-filledcv5").val()));
                    $("#form-amt5").attr('readonly', true);
                });
            });

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
                            <h1><strong>Shri Mangalam Indane</strong> Refill Information Sheet </h1>
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

                            <form role="form" action="RefillDisplay" method="post" class="registration-form">

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
                                        <h3>Enter Name Of Customer and choose Delivery Type :</h3>
                                        <%
                                            Calendar calendar = Calendar.getInstance(); 
                                            String rate = "";
                                            if (calendar == null) {
                                                System.out.println("Calendar =" + calendar);
                                            }
                                            int dayOfMonth = calendar.get(Calendar.DAY_OF_MONTH);
                                            if (dayOfMonth == 1) { %>
                                        <input type="text" name="rateofgas" class="rateofgas form-control" id="rateofgas" placeholder="Enter Rate Of Gas"/>

                                        <% } else {
                                        Datab db = new Datab();                                            
                                            String sql = "select rate from gasrate where id=" + 1;
                                            db.rs = db.st.executeQuery(sql);
                                            while (db.rs.next()) {
                                                rate = db.rs.getString("rate");
                                            }
                                        %>
                                        <input type="hidden" name="hiddengas" class="hiddengas form-control" id="hiddengas" />

                                        <% }%>
                                        <input type="hidden" value="<%= rate%>" id="rate" name="rates" />
<!--                                        <div class="form-group">
                                            <label class="sr-only" for="form-noc">Name Of Customer </label>
                                            <input type="text" name="form-nameoc" placeholder="Enter Name Of Customer" class="form-nameoc form-control" id="form-nameoc" >
                                        </div>-->
                                        <div class="form-group">
                                            <label class="sr-only" for="form-noe">Name Of Employee </label>
                                            <input type="text" name="form-nameoe" placeholder="Enter Name Of Employee" class="form-nameoe form-control" id="form-nameoe" >
                                        </div>
                                        <div class="form-group">
                                            <input type="radio" name="form-payment"  id="cash" value="cash" checked="checked"> Cash Payment
                                            <input type="radio" name="form-payment"  id="cheque" value="cheque" > Cheque Payment
                                        </div>
                                        <br/>

                                        <table border="1px">
                                            <tr>
                                                <th>Refill</th>
                                                <th>Empty CV</th>
                                                <th>Filled CV</th> 
                                                <th>Cash/Cheque Amount</th>
                                                <th>Amount</th>
                                            </tr>
                                            <tr>
                                                <td><label for="form-counterrefill">Counter Refill DNSC</label></td>
                                                <td><input type="text" name="form-emptycv1" placeholder="Empty CV" class="form-emptycv1 form-control" id="form-emptycv1" ></td>
                                                <td><input type="text" name="form-filledcv1" placeholder="Filled CV" class="form-filledcv1 form-control" id="form-filledcv1"></td>
                                                <td><input type="text" name="form-counteramount1" placeholder="Amount Paid" class="form-counteramount form-control" id="form-counteramount"></td>
                                                <td><input type="text" name="form-amt1" placeholder="Amount" class="form-amt1 form-control" id="form-amt1" ></td>
                                            </tr>
                                            <tr>
                                                <td><label for="form-homedelivery">Home Delivery DNSC</label></td>
                                                <td><input type="text" name="form-emptycv2" placeholder="Empty CV" class="form-emptycv2 form-control" id="form-emptycv2" ></td>
                                                <td><input type="text" name="form-filledcv2" placeholder="Filled Cv" class="form-filledcv2 form-control" id="form-filledcv2" ></td> 
                                                <td><input type="text" name="form-counteramount2" placeholder="Amount Paid" class="form-hdamt form-control" id="form-hdamt" ></td>
                                                <td><input type="text" name="form-amt2" placeholder="Amount" class="form-amt2 form-control" id="form-amt2" ></td>
                                            </tr>
                                            <tr>
                                                <td><label for="form-godown">Godown DNSC</label></td>
                                                <td><input type="text" name="form-emptycv3" placeholder="Empty CV" class="form-emptycv3 form-control" id="form-emptycv3" ></td>
                                                <td><input type="text" name="form-filledcv3" placeholder="Filled CV" class="form-filledcv3 form-control" id="form-filledcv3" ></td>
                                                <td><input type="text" name="form-counteramount3" placeholder="Amount Paid" class="form-gdamt form-control" id="form-gdamt" ></td>
                                                <td><input type="text" name="form-amt3" placeholder="Amount" class="form-amt3 form-control" id="form-amt3" ></td>
                                            </tr>
                                            <tr>
                                                <td><label for="form-village">Village Refill DNSC</label></td>
                                                <td><input type="text" name="form-emptycv4" placeholder="Empty CV" class="form-emptycv4 form-control" id="form-emptycv4" ></td>
                                                <td><input type="text" name="form-filledcv4" placeholder="Filled CV" class="form-filledcv4 form-control" id="form-filledcv4" ></td>
                                                <td><input type="text" name="form-counteramount4" placeholder="Amount Paid" class="form-villageamt form-control" id="form-villageamt" ></td>
                                                <td><input type="text" name="form-amt4" placeholder="Amount" class="form-amt4 form-control" id="form-amt4" ></td>
                                            </tr>
                                            <tr>
                                                <td><label for="form-village">Domestic WS</label></td>
                                                <td><input type="text" name="form-emptycv5" placeholder="Empty CV" class="form-emptycv5 form-control" id="form-emptycv5" ></td>
                                                <td><input type="text" name="form-filledcv5" placeholder="Filled CV" class="form-filledcv5 form-control" id="form-filledcv5" ></td>
                                                <td><input type="text" name="form-counteramount5" placeholder="Amount Paid" class="form-domesticws form-control" id="form-domesticws" ></td>
                                                <td><input type="text" name="form-amt5" placeholder="Amount" class="form-amt5 form-control" id="form-amt5" ></td>
                                            </tr>
                                        </table>
                                        <br/>
                                        <input type="text" name="form-chequeno" placeholder="Enter Cheque No" class="form-chequeno form-control" id="form-chequeno">
                                        <br/><button type="button" class="btn" onclick="myfunction();"> Check Amount </button>
                                        <input type="submit" value="submit"/>
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
