<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/img/ico/favicon.ico">
    <link rel="apple-touch-icon" sizes="144x144" href="assets/img/ico/apple-touch-icon-144x144.png">

    <title>Result System by JSSATE</title>

    <!-- Bootstrap Core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/animate.css" rel="stylesheet">
    <link href="assets/css/plugins.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="assets/css/style.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="assets/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/pe-icons.css" rel="stylesheet">

</head>

<body id="page-top" class="index">

    <div class="master-wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top fadeInDown" data-wow-delay="0.5s">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand smoothie" href="newindex.html">JSSATE</a>
                </div>

                 <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="main-navigation">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="newindex.html">Home</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>



        <!-- Header -->
        <header id="headerwrap" class="backstretched fullheight">
            <div class="container vertical-center">
                <div class="main">
      			<p align="center">WELCOME ADMIN</p><br/><span id="error"></span><hr/>
      			<form method="post" action="adminLoginAction.jsp">
        			<input type="text" placeholder="Username" name="username" id="username" autofocus required /><br/>
        			<input type="password"placeholder="Password" name="password" id="password" required /><br/>
       				<input type="submit" name="login" value="LOGIN" />
     			</form>
    		</div>
            </div>
        </header>
  
       <section class="dark-wrapper">
            <div class="section-inner">
            	<div class="container">
            		<div class="row">
    		            <div class="col-md-4">
    		            	<div class="widget about-us-widget">
                                <h4 class="widget-title"><strong>ADDRESS</strong></h4>
                                <p>JSS Academy of Technical Education<br/>JSSATE-B Campus,Dr.Vishnuvardhan Road,<br/>Uttarahalli - Kengeri Main Road,<br/>Srinivaspura-Post<br/>Bengaluru – 560 060<br/>Karnataka, India</p>
                                </div>
    		        	</div>
    		        	<div class="col-md-4">
                            <div class="widget">
                              <h4 class="widget-title"><strong>CONTACT</strong></h4>
                                <p>Ph: 080 - 2861 2565 / 2861 1702<br/>Fax: 080 - 2861 2706 / 2861 2646<br/></p>
                            </div>
    		        	</div>
    		        	<div class="col-md-4">
                            <div class="widget">
                              <h4 class="widget-title"><strong>EMAIL</strong></h4>
                              <p>info@jssateb.ac.in<br/>principal@jssateb.ac.in<br/></p>
                            </div>
    		        	</div>
    	        	</div>
            	</div>
            </div>
        </section>
        <footer class="white-wrapper">
            <div class="container">
                <div class="row">
                    <hr class="thin-hr" />

                    <div class="col-md-12 text-center wow fadeIn" data-wow-delay="0.5s">
                        <span class="copyright">Copyright 2021 JSSATEB</span>
                    </div>
                </div>
            </div>
        </footer>

    </div>

    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script src="assets/js/init.js"></script>

    
    <script type="text/javascript">
    $(document).ready(function(){
       'use strict';
        jQuery('#headerwrap').backstretch([
          "assets/img/bg/bg1.jpg",
        ], {duration: 8000, fade: 500});
    });
    </script>

</body>

</html>