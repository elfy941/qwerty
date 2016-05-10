<%-- 
    Document   : index
    Created on : Apr 12, 2016, 10:17:51 PM
    Author     : elfy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ResourceBundle"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width , initial-scale=1.0">      
        <title>First Page</title>

        <!-- Custom Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

        <!-- Plugin CSS -->
        <link rel="stylesheet" href="css/animate.min.css" type="text/css">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/creative.css" type="text/css">
        <link rel="stylesheet" href="css/index.css" type="text/css"> 
        <link rel="stylesheet" href="css/freelancer.css" type="text/css"> 

    </head>
    <body id="page-top">
        <!-- we can use navbar-fixed-top for the navbar to stay on the page even if we scroll down
          Navigation bar
        -->


        <!--menu-->
        <nav id="mainNav" class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand page-scroll" href="index.jsp">${applicationScope.bundle.getString("home")}</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a class="page-scroll" href="signup.jsp">${applicationScope.bundle.getString("about")}</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#services">${applicationScope.bundle.getString("services")}</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#portfolio">${applicationScope.bundle.getString("portofolio")}</a>
                        </li>
                        <li>
                            <c:if test="${sessionScope.company != null}">
                                <div class="dropdown">
                                    <button class="dropbtn">${applicationScope.bundle.getString("profile")}</button>
                                    <div class="dropdown-content">
                                        <a href="#">Company Details</a>
                                        <a href="#">Link 2</a>
                                        <a href="http://localhost:8080/qwerty/LogOutController">${applicationScope.bundle.getString("logout")}</a>
                                    </div>
                                </div>
                            </c:if>
                        </li>                        
                        <li>
                            <c:if test="${sessionScope.user != null}">
                                <div class="dropdown">
                                    <button class="dropbtn">${applicationScope.bundle.getString("profile")}</button>
                                    <div class="dropdown-content">
                                        <a href="#">User Details</a>
                                        <a href="#">Link 2</a>
                                        <a href="http://localhost:8080/qwerty/LogOutController">${applicationScope.bundle.getString("logout")}</a>
                                    </div>
                                </div>
                            </c:if>
                        </li>   
                        <c:if test="${sessionScope.company == null && sessionScope.user == null}">
                            <li>
                                <a class="page-scroll" href="login.jsp">${applicationScope.bundle.getString("login")}</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="signup.jsp">${applicationScope.bundle.getString("register")}</a>
                            </li>
                        </c:if>
                        <li>
                            <form action="BundleController">
                                <input class="btn btn-link " type="submit" value="RO" name="bundle">
                                <input class="btn btn-link " type="submit" value="ENG" name="bundle">
                            </form>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>            
        </nav>

        <!--menu-->               

        <header>
            <div class="header-content">
                <div class="header-content-inner">
                    <h1>Main Page (we need some description to write here)</h1>
                    <hr>
                    <p>Some description here also</p>
                    <a href="#about" class="btn btn-primary btn-xl page-scroll">Find Out More</a>
                </div>
            </div>
        </header>


        <!-- Portfolio Grid Section -->
        <section id="portfolio">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2>Portfolio</h2>
                        <hr class="star-primary">
                    </div>
                </div>
                <div class="row">
                    <!--insert for loop here-->
                    <c:forEach items="${applicationScope.companies}" var="c">
                        <div class="col-sm-4 portfolio-item">
                            <a href="#${c.getCompanyName()}" class="portfolio-link" data-toggle="modal">
                                <div class="caption">
                                    <div class="caption-content">
                                        <i class="fa fa-search-plus fa-3x"></i>
                                    </div>
                                </div>
                                <img src="img/${c.getImage()}" class="img-responsive" alt="" height="300" width="500">
                            </a>
                        </div>
                    </c:forEach>

                    <!--end of for loop-->
                </div>
            </div>
        </section>

        <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
        <div class="scroll-top page-scroll visible-xs visible-sm">
            <a class="btn btn-primary" href="#page-top">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>

        <!-- Portfolio Modals -->
        <!--for loop again-->
        <c:forEach items="${applicationScope.companies}" var="c">
            <div class="portfolio-modal modal fade" id="${c.getCompanyName()}" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl">
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2">
                                <div class="modal-body">
                                    <h2>Project Title</h2>
                                    <hr class="star-primary">
                                    <img src="img/${c.getImage()}" class="img-responsive img-centered" alt="">
                                    <p>${c.getDescription()}</p>
                                    <ul class="list-inline item-details">
                                        <li>Client:
                                            <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                            </strong>
                                        </li>
                                        <li>Date:
                                            <strong><a href="http://startbootstrap.com">April 2014</a>
                                            </strong>
                                        </li>
                                        <li>Service:
                                            <strong><a href="http://startbootstrap.com">Web Development</a>
                                            </strong>
                                        </li>
                                    </ul>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>



        <!-- footer -->

        <section id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 text-center">
                        <h2 class="section-heading">Let's Get In Touch!</h2>
                        <hr class="primary">
                        <p>Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
                    </div>
                    <div class="col-lg-4 col-lg-offset-2 text-center">
                        <i class="fa fa-phone fa-3x wow bounceIn"></i>
                        <p>123-456-6789</p>
                    </div>
                    <div class="col-lg-4 text-center">
                        <i class="fa fa-envelope-o fa-3x wow bounceIn" data-wow-delay=".1s"></i>
                        <p><a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a></p>
                    </div>
                </div>
            </div>
        </section>



        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <script src="js/freelancer.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/classie.js"></script>
        <script src="js/cbpAnimatedHeader.js"></script>
        <script src="js/jqBootstrapValidation.js"></script>


    </body>
</html>    

