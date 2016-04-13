<%-- 
    Document   : menutag
    Created on : Apr 12, 2016, 10:21:50 PM
    Author     : elfy
--%>

<%@tag description="put the tag description here" language="java" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="title" required="true" rtexprvalue="true"%>
<%@attribute name="content" fragment="true" %>


<%-- any content can be specified here e.g.: --%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width , initial-scale=1.0">
        <title></title>

        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

        <!-- Custom Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">

        <!-- Plugin CSS -->
        <link rel="stylesheet" href="css/animate.min.css" type="text/css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/creative.css" type="text/css">

    </head>
    <body id="page-top">
        <!-- we can use navbar-fixed-top for the navbar to stay on the page even if we scroll down
          Navigation bar
        -->

        <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand page-scroll" href="#page-top">Start Bootstrap</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a class="page-scroll" href="#about">${applicationScope.bundle.getString("about")}</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#services">${applicationScope.bundle.getString("services")}</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#portfolio">${applicationScope.bundle.getString("portofolio")}</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#contact">${applicationScope.bundle.getString("contact")}</a>
                        </li>
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
            <!-- /.container-fluid -->
        </nav>


        <!-- Navigation bar-->

        <br>
        <jsp:invoke fragment="content"></jsp:invoke>
        <br>

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
    </body>
</html>
