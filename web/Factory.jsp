<%-- 
    Document   : Factory
    Created on : Dec 14, 2016, 5:49:32 PM
    Author     : sohamkapoor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Plant</title>

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
            // domestic=0,nondomestic=0,
            defective=0,returnload=0,domesticempty=0,nondomesticempty=0,five=0,domesticwsempty=0;
            $(document).ready(function(){
                
                $('#form-return-load').hide();
                $('#form-2domestic').hide();
                $('#form-2nondomestic').hide();
                $('#form-fourteen-price').hide();   // hide price columns
                $('#form-nineteen-price').hide();   // hide price columns
                $('#form-five-price').hide();  
                $('#form-fourteen-wprice').hide();// hide price columns
                $('#form-fourteen-price').val("0");   // set val 0
                $('#form-nineteen-price').val("0");   
                $('#form-five-price').val("0");
                $('#form-2domesticempty').hide();
                $('#form-2domesticwsempty').hide();
                $('#form-2nondomesticempty').hide();
                $('#form-2five').hide();
                $('#form-2defective').hide();
                $('#twoway').click(function(){      //  two way radio button click
                   $('#form-return-load').show(); 
                   $('#form-2domestic').show();
                   $('#form-2five').show();
                   $('#form-2nondomestic').show();
                   $('#form-2domesticempty').show();
                   $('#form-2domesticwsempty').show();
                   $('#form-2nondomesticempty').show();
                   $('#form-2defective').show();
                   $('#form-return-load').val("");
                   $('#form-2domestic').val("");
                   $('#form-2five').val("");
                   $('#form-2nondomestic').val("");
                   $('#form-2domesticempty').val("");
                   $('#form-2domesticwsempty').val("");
                   $('#form-2nondomesticempty').val("");
                   $('#form-2defective').val("");                  
                });
                $('#oneway').click(function(){  // one way radio button click
                    $('#form-return-load').hide();
                    $('#form-2domestic').hide();
                    $('#form-2nondomestic').hide();
                    $('#form-2domesticempty').hide();
                    $('#form-2domesticwsempty').hide();
                    $('#form-2nondomesticempty').hide();
                    $('#form-2five').hide();
                    $('#form-2defective').hide();
                    $('#form-return-load').val("0");
                    $('#form-2domestic').val("0");
                    $('#form-2nondomestic').val("0");
                    $('#form-2domesticempty').val("0");
                    $('#form-2domesticwsempty').val("0");
                    $('#form-2nondomesticempty').val("0"); 
                    $('#form-2five').val("0");
                    $('#form-2defective').val("0");
                    $('#err2domestic').text("");
                    $('#err2nondomestic').text("");
                    $('#err2defective').text("");
                });
//                $('#form-2domestic').focusout(function(){
//                    domestic=parseInt(document.getElementById('form-2domestic').value);
//                    f();
//                });
                $('#form-fourteen').keydown(function(){
                    $('#form-fourteen-price').val("");
                    $('#form-fourteen-price').show();
                });
                $('#form-fourteen-wsubsidy').keydown(function(){
                   $('#form-fourteen-wprice').val("");
                   $('#form-fourteen-wprice').show();
                });
                $('#form-fourteen-price').click(function(){
                    $('#errdomesticprice').text("");
                });
                $('#form-fourteen-wprice').click(function(){
                    $('#errwdomesticprice').text("");
                });
                
                $('#form-fourteen-price').focusout(function(){
                    if(document.getElementById("form-fourteen-price").value <= 0)
                    {
                        $('#errdomesticprice').text("Enter Bill Value");
                    }
                });
                $('#form-fourteen-wprice').focusout(function(){
                    if(document.getElementById("form-fourteen-wprice").value <= 0)
                    {
                        $('#errwdomesticprice').text("Enter Bill Value");
                    }
                });
                $('#form-nineteen').keydown(function(){
                    $('#form-nineteen-price').val("");
                    $('#form-nineteen-price').show();
                });
                $('#form-nineteen-price').click(function(){
                    $('#errnondomesticprice').text("");
                });
                $('#form-nineteen-price').focusout(function(){
                    if(document.getElementById("form-nineteen-price").value <= 0)
                    {
                        $('#errnondomesticprice').text("Enter Bill Value");
                    }
                });
                $('#form-five').keydown(function(){
                    $('#form-five-price').val("");
                    $('#form-five-price').show();
                });
                $('#form-five-price').click(function(){
                    $('#err5price').text("");
                });
                 $('#form-five-price').focusout(function(){
                    if(document.getElementById("form-five-price").value <= 0)
                    {
                        $('#err5price').text("Enter Bill Value");
                    }
                });
                $('#form-2five').focusout(function(){
                    five=parseInt(document.getElementById("form-2five").value);
                    f();
                });
//                $('#form-2nondomestic').focusout(function(){
//                    nondomestic=parseInt(document.getElementById('form-2nondomestic').value);
//                    f();
//                });
                $('#form-2domesticempty').focusout(function(){
                    domesticempty = parseInt(document.getElementById("form-2domesticempty").value);
                    f();
                });
                $('#form-2domesticwsempty').focusout(function(){
                    domesticwsempty = parseInt(document.getElementById("form-2domesticwsempty").value);
                    f();
                });
                $('#form-2nondomesticempty').focusout(function(){
                    nondomesticempty=parseInt(document.getElementById("form-2nondomesticempty").value);
                    f();
                });
                $('#form-2defective').focusout(function(){
                    defective=parseInt(document.getElementById("form-2defective").value);
                    f();
                });
               function f() // adding values and displaying
               {
                   returnload=defective+domesticempty+nondomesticempty+five+domesticwsempty;
                   document.getElementById('form-return-load').value=returnload;
               };
//               $('#form-2domestic').click(function(){ // removing error text
//                    $('#err2domestic').text("");
//                    $('#err2nondomestic').text("");
//                    $('#err2domesticempty').text("");
//                    $('#err2nondomesticempty').text("");
//                    $('#err2defective').text("");
//               });
//               $('#form-2nondomestic').click(function(){
//                    $('#err2domestic').text("");
//                    $('#err2nondomestic').text("");
//                    $('#err2domesticempty').text("");
//                    $('#err2nondomesticempty').text("");
//                    $('#err2defective').text("");
//               });
               $('#form-2defective').click(function(){
//                    $('#err2domestic').text("");
//                    $('#err2nondomestic').text("");
                    $('#form-2five').text("");
                    $('#err2domesticempty').text("");
                    $('#err2nondomesticempty').text("");
                    $('#err2defective').text("");
               });
                 $('#form-driver-name').click(function(){
                      $('#errDriverName').text("");
                  });
                  $('#form-driver-no').click(function(){
                      $('#errDriverNo').text("");
                  });
                  $('#form-truck-no').click(function(){
                      $('#errTruckNo').text("");
                  });
                  $('#form-sono').click(function(){
                      $('#errsono').text("");
                  });
                  $('#form-fourteen').click(function(){
                      $('#err14').text("");
                      $('#err14ws').text("");
                       $('#err19').text("");
                       $('#err5').text("");
                       $('#errdefective').text("");
                  });
                   $('#form-fourteenws').click(function(){
                      $('#err14').text("");
                      $('#err14ws').text("");
                       $('#err19').text("");
                       $('#err5').text("");
                       $('#errdefective').text("");
                  });
                  $('#form-nineteen').click(function(){
                       $('#err14').text("");
                       $('#err14ws').text("");
                       $('#err19').text("");
                       $('#err5').text("");
                       $('#errdefective').text("");
                  });
                  $('#form-five').click(function(){
                      $('#err14').text("");
                      $('#err14ws').text("");
                       $('#err19').text("");
                       $('#err5').text("");
                       $('#errdefective').text("");
                  });
                  $('#form-2domesticempty').click(function(){
                      $('#err2domesticempty').text("");
                      $('#err2domesticwsempty').text("");
                      $('#err2nondomesticempty').text("");
                      $('#err2defective').text("");
                      $('#err2five').text("");
                  });
                  $('#form-2domesticwsempty').click(function(){
                      $('#err2domesticempty').text("");
                      $('#err2domesticwsempty').text("");
                      $('#err2nondomesticempty').text("");
                      $('#err2defective').text("");
                      $('#err2five').text("");
                  });
                  $('#form-2nondomesticempty').click(function(){
                      $('#err2domesticempty').text("");
                      $('#err2domesticwsempty').text("");
                      $('#err2nondomesticempty').text("");
                      $('#err2defective').text("");
                      $('#err2five').text("");
                  });
                  $('#form-2five').click(function(){
                      $('#err2domesticempty').text("");
                      $('#err2domesticwsempty').text("");
                      $('#err2nondomesticempty').text("");
                      $('#err2defective').text("");
                      $('#err2five').text("");
                  });
                  $('#form-defective').click(function(){
                      $('#errdomestic').text("");
                      $('#errnondomestic').text("");
                      $('#errdefective').text("");                      
                  });                
            });
            function fun() {
                    if(document.getElementById("form-driver-name").value == "")
                        {
                            $('#errDriverName').text("Enter Driver Name");
                            event.preventDefault() ;
                        }
                     if(document.getElementById("form-sono").value == "")
                     {
                         $('#errsono').text("Enter sales order no");
                         event.preventDefault();
                     }
                     if(document.getElementById("form-driver-no").value == "")
                     {
                         $('#errDriverNo').text("Enter Driver No");
                         event.preventDefault();
                     }
                     if(document.getElementById("form-truck-no").value == "")
                     {
                         $('#errTruckNo').text("Enter Truck No");
                         event.preventDefault();
                     }
                    else if((document.getElementById("form-fourteen").value == "") && (document.getElementById("form-nineteen").value =="" ) && (document.getElementById("form-five").value == "") && (document.getElementById("form-defective").value == "" ))
                    {                      
                            $('#err14').text("Atleast one of type should be deployed");
                            $('#err14ws').text("Atleast one of the type should be filled");
                            $('#err19').text("Atleast one of type should be deployed");
                            $('#err5').text("Atleast one of type should be deployed");
                            $('#errdefective').text("Enter value in atleast one column");
                            event.preventDefault() ;
                    }
                    
//                    else if((document.getElementById("form-domestic").value == "" ) && (document.getElementById("form-nondomestic").value == "" ) )
//                    {
//                            $('#errdomestic').text("Enter value in atleast one column");
//                            $('#errnondomestic').text("Enter value in atleast one column");
//                            
//                            event.preventDefault() ;
//                    }
                    
                    else if(document.getElementById("twoway").checked == true)
                   {
//                       if(((document.getElementById("form-2domestic").value <= 0) || (document.getElementById("form-2domestic").value == "")) && ((document.getElementById("form-2nondomestic").value <= 0) || (document.getElementById("form-2nondomestic").value == "")) && (document.getElementById("form-2defective").value <= 0|| (document.getElementById("form-2defective").value == "")))
                        if(((document.getElementById("form-2domesticempty").value <= 0) || (document.getElementById("form-2domesticempty").value == "")) && ((document.getElementById("form-2nondomesticempty").value <= 0) || (document.getElementById("form-2nondomesticempty").value == "")) && (document.getElementById("form-2defective").value <= 0|| (document.getElementById("form-2defective").value == "")) && (document.getElementById("form-2five").value <= 0|| (document.getElementById("form-2five").value == "")))
                       {
//                           $('#err2domestic').text("Atleast one of the five should be filled");
//                           $('#err2nondomestic').text("Atleast one of the five should be filled");
                           $('#err2domesticempty').text("Atleast one of the five should be filled");
                           $('#err2domesticwsempty').text("Atlest one of the five should be filled");
                           $('#err2nondomesticempty').text("Atleast one of the five should be filled");
                           $('#err2five').text("Atleast one of the five should be filled");
                           $('#err2defective').text("Atleast one of the five should be filled");
                           event.preventDefault() ;
                       }
                       else{
                        var x = document.getElementsByTagName("form");
                        x[0].submit();// Form submission
                            }
                   }
                    else{
                        var x = document.getElementsByTagName("form");
                        x[0].submit();// Form submission
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
                            <h1><strong>Shri Mangalam Indane</strong> Plant Order Sheet </h1>
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

                            <form role="form" action="Factory" method="post" class="registration-form">

                                <fieldset>
                                    <div class="form-top">
                                        <div class="form-top-left">
                                            <h3>Step 1 / 1</h3>
                                            <p> Enter Your Plant Detail :</p>
                                        </div>
                                        <div class="form-top-right">
                                            <i class="fa fa-database"></i>
                                        </div>
                                    </div>

                                    <div class="form-bottom">
                                        <div class="form-group">
                                            <input type="text" name="form-sono" placeholder="Enter Sales Order No" class="form-sono form-control" id="form-sono" >
                                            <span  style="color:red;font-weight:bold" id="errsono"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="form-driver-name" placeholder="Enter Driver name" class="form-driver-name form-control" id="form-driver-name" >
                                            <span  style="color:red;font-weight:bold" id="errDriverName"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="form-truck-no" placeholder="Enter Truck No" class="form-truck-no form-control" id="form-truck-no" >
                                            <span  style="color:red;font-weight:bold" id="errTruckNo"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="form-driver-no" placeholder="Enter Driver No" class="form-driver-no form-control" id="form-driver-no" >
                                            <span  style="color:red;font-weight:bold" id="errDriverNo"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="form-fourteen" placeholder="Enter no of 14.2DNSC kg Cylinder " class="form-fourteen form-control" id="form-fourteen" >
                                            <span  style="color:red;font-weight:bold" id="err14"></span>
                                        </div>
                                         <div class="form-group">
                                            <input type="number" name="form-fourteen-price" placeholder="Enter 14.2DNSC Kg Cylinder Bill Price" class="form-fourteen-price form-control" id="form-fourteen-price" >
                                            <span  style="color:red;font-weight:bold" id="errdomesticprice"></span>
                                        </div>
                                        <!-- without subsidy -->
                                        <div class="form-group">
                                            <input type="number" name="form-fourteen-wsubsidy" placeholder="Enter no of 14.2WS kg Cylinder " class="form-fourteen-wsubsidy form-control" id="form-fourteen-wsubsidy" >
                                            <span  style="color:red;font-weight:bold" id="err14ws"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="form-fourteen-wprice" placeholder="Enter 14.2WS Kg Cylinder Bill Price" class="form-fourteen-wprice form-control" id="form-fourteen-wprice" >
                                            <span  style="color:red;font-weight:bold" id="errwdomesticprice"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="form-nineteen" placeholder="Enter no of 19 kg Cylinder " class="form-nineteen form-control" id="form-nineteen" >
                                            <span  style="color:red;font-weight:bold" id="err19"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="form-nineteen-price" placeholder="Enter 19 Kg Cylinder Bill Price " class="form-nineteen-price form-control" id="form-nineteen-price" >
                                            <span  style="color:red;font-weight:bold" id="errnondomesticprice"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="form-five" placeholder="Enter no of 5 kg Cylinder " class="form-five form-control" id="form-five" >
                                            <span  style="color:red;font-weight:bold" id="err5"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="form-five-price" placeholder="Enter no of 5 kg Cylinder Bill Price" class="form-five-price form-control" id="form-five-price" >
                                            <span  style="color:red;font-weight:bold" id="err5price"></span>
                                        </div>
                                        <!--div class="form-group">
                                            <input type="text" name="form-domestic" placeholder="Enter no of Domestic Cylinder " class="form-domestic form-control" id="form-domestic" >
                                            <span  style="color:red;font-weight:bold" id="errdomestic"></span>
                                        </div>
                                       
                                        <div class="form-group">
                                            <input type="text" name="form-nondomestic" placeholder="Enter no of Non Domestic Cylinder " class="form-nondomestic form-control" id="form-nondomestic" >
                                            <span  style="color:red;font-weight:bold" id="errnondomestic"></span>
                                        </div-->

                                        <div class="form-group">
                                            <input type="number" name="form-defective" placeholder="Enter no of Defective Cylinder " class="form-defective form-control" id="form-defective" >
                                            <span  style="color:red;font-weight:bold" id="errdefective"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="radio" name="form-type" id="oneway" value="one way" checked="checked"/>One Way
                                            <input type="radio" name="form-type" id="twoway" value="two way"/>Two Way
                                        </div>
<!--                                        <div class="form-group">
                                            <input type="text" name="form-2domestic" placeholder="Enter Return no of Domestic Filled Cylinder " class="form-2domestic form-control" id="form-2domestic" >
                                            <span  style="color:red;font-weight:bold" id="err2domestic"></span>
                                        </div>-->
                                        <div class="form-group">
                                            <input type="number" name="form-2five" placeholder="Enter Return no of 5 Kg Cylinder " class="form-2five form-control" id="form-2five" >
                                            <span  style="color:red;font-weight:bold" id="err2five"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="form-2domesticempty" placeholder="Enter Return no of Domestic Empty Cylinder " class="form-2domesticempty form-control" id="form-2domesticempty" >
                                            <span  style="color:red;font-weight:bold" id="err2domesticempty"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="form-2domesticwsempty" placeholder="Enter Return no of Domestic WS Empty Cylinder " class="form-2domesticwsempty form-control" id="form-2domesticwsempty" >
                                            <span  style="color:red;font-weight:bold" id="err2domesticwsempty"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="form-2nondomesticempty" placeholder="Enter Return no of Non Domestic Empty Cylinder " class="form-2nondomesticempty form-control" id="form-2nondomesticempty" >
                                            <span  style="color:red;font-weight:bold" id="err2nondomesticempty"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="form-2defective" placeholder="Enter Return no of Defective Cylinder " class="form-2defective form-control" id="form-2defective" >
                                            <span  style="color:red;font-weight:bold" id="err2defective"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="form-return-load" onkeydown="return false" placeholder="Total Return Load" class="form-return-load form-control" id="form-return-load" >
                                            <span  style="color:red;font-weight:bold" id="errReturnLoad"></span>
                                        </div>
                                        
                                        <p align="center"><input type="button" class="btn btn-success" value="Submit" id="gatepass" onclick="fun()"></p>                                        
                                    </div>                                
                                </fieldset>
                            </form>
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
