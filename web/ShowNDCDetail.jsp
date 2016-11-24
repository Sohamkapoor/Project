<%-- 
    Document   : ShowNDCDetail
    Created on : Nov 24, 2016, 9:43:27 AM
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
        <title>Non Domestic</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

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
        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/scripts.js"></script>

        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
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
                            <h1><strong>Shri Mangalam Indane</strong> Non Domestic Customer Information Sheet </h1>
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

                            <form role="form" action="NDCustomerEntry.jsp" method="post" class="registration-form">

                                <fieldset>
                                    <div class="form-top">
                                        <div class="form-top-left">
                                            <h3>Step 1 / 1</h3>
                                            <p>Tell us who you are:</p>
                                        </div>
                                        <div class="form-top-right">
                                            <i class="fa fa-user"></i>
                                        </div>
                                    </div>

                                    <div class="form-bottom">
                                        
                                        <%
                                            Datab db = new Datab();
                                            String rate = "";
                                            String sql = "select * from nondomestic where name ='" +name+"' and phno ='"+phno+"'" ;
                                            db.rs = db.st.executeQuery(sql);
                                            while (db.rs.next()) {
                                                rate = db.rs.getString("rate");
                                            }
                                        %>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>




</body>

</html>


    </body>
</html>
