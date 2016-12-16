<%-- 
    Document   : DriverDispatch
    Created on : Dec 14, 2016, 10:49:50 PM
    Author     : sohamkapoor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Gate Pass</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

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

                            <form role="form" action="detail.jsp" method="post" class="registration-form">

                                <fieldset>
                                    <div class="form-top">
                                        <div class="form-top-left">
                                            <h3>Step 1 / 1</h3>
                                            <p> Get Your Gate Pass :</p>
                                        </div>
                                        <div class="form-top-right">
                                            <i class="fa fa-database"></i>
                                        </div>
                                    </div>

                                    <div class="form-bottom"> 
                                        <div class="form-group">
                                            <input type="text" name="form-customer-name" placeholder="Enter Customer name" class="form-customer-name form-control" id="form-customer-name" >
                                            <span  style="color:red;font-weight:bold" id="errCustomerName"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="form-domestic" placeholder="Enter no of Domestic Cylinder " class="form-domestic form-control" id="form-domestic" >
                                            <span  style="color:red;font-weight:bold" id="errdomestic"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="form-nondomestic" placeholder="Enter no of Non Domestic Cylinder " class="form-nondomestic form-control" id="form-nondomestic" >
                                            <span  style="color:red;font-weight:bold" id="errnondomestic"></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="form-defective" placeholder="Enter no of Defective Cylinder " class="form-defective form-control" id="form-defective" >
                                            <span  style="color:red;font-weight:bold" id="errdefective"></span>
                                        </div>
                                        <div class="form-group"> <!-- if driver returns some cylinder after selling to customer -->
                                            <input type="text" name="form-filled-godown" placeholder="Enter no of Return filled Cylinder " class="form-filled-godown form-control" id="form-filled-godown" >
                                            <span  style="color:red;font-weight:bold" id="errfilled"></span>
                                        </div>
                                        <div class="form-group"> <!-- if driver returns some cylinder after selling to customer -->
                                            <input type="text" name="form-empty-godown" placeholder="Enter no of Return Empty Cylinder " class="form-empty-godown form-control" id="form-empty-godown" >
                                            <span  style="color:red;font-weight:bold" id="errempty"></span>
                                        </div>
                                        <div class="form-group"> <!-- if driver returns some cylinder after selling to customer -->
                                            <input type="text" name="form-defective-godown" placeholder="Enter no of Return Defective Cylinder " class="form-defective-godown form-control" id="form-defective-godown" >
                                            <span  style="color:red;font-weight:bold" id="errdefectivegodown"></span>
                                        </div>
                                        <input type="submit" class="btn btn-success" value="Add Detail"/>
                                    </div>                                
                                </fieldset>
                            </form>
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
