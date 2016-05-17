<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="content" fragment="true" %>

<html>
    <head>
        <!--Place common css here--> 
        <link href="css/bootstrap.css" rel="stylesheet" />
        <link href="css/pe-icon-7-stroke.css" rel="stylesheet" />
        <link href="css/ct-navbar.css" rel="stylesheet" />
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">       

        <!--Place common js here-->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>        
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <script src="js/classie.js"></script>
        <script src="js/ct-navbar.js"></script>
        <!--<script src="js/notification.js"></script>-->
        <!--                     
               

        -->
        <jsp:invoke fragment="header"/>
    </head>
    <body>

        <div id="navbar-full">
            <div id="navbar">
                <!--    
                 navbar-default can be changed with navbar-ct-blue navbar-ct-azzure navbar-ct-red navbar-ct-green navbar-ct-orange  
                -->
                <nav class="navbar navbar-ct-blue navbar-fixed-top navbar-transparent" role="navigation">

                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <!--                            <a class="navbar-brand navbar-brand-logo" href="index.jsp">
                                                            <div class="logo">
                                                                <img src="img/logo.gif">
                            
                                                            </div>
                                                            <div class="brand"> Qwerty </div>
                                                        </a>-->
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-right">
                                <c:if test="${sessionScope.user == null && sessionScope.company == null}">
                                    <li>
                                        <a href="login.jsp">
                                            <i class="pe-7s-key">                                            
                                            </i>
                                            <p>${applicationScope.bundle.getString("login")}</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="signUp.jsp">
                                            <i class="pe-7s-id">                                            
                                            </i>
                                            <p>Register</p>
                                        </a>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.user != null }">
                                    <li>
                                        <a href="messageTab.jsp" onblur="test()">
                                            <i class="pe-7s-mail-open">
                                                <span class="label" id="notificationNo" ></span>
                                            </i>
                                            <p>Messages</p>
                                        </a>
                                    </li> 
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                            <i class="pe-7s-user"></i>
                                            <p>Account</p>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="userProfile.jsp">Profile</a></li>
                                            <li><a href="userCV.jsp">My CV</a></li>                                           
                                            <li class="divider"></li>
                                            <li><a href="http://localhost:8080/qwerty/LogOutController">Log Out</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.company != null}">
                                    <li>
                                        <a href="#">
                                            <i class="pe-7s-mail-open">
                                                <span class="label">23</span>
                                            </i>
                                            <p>Messages</p>
                                        </a>
                                    </li> 
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                            <i class="pe-7s-user"></i>
                                            <p>Account</p>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="companyProfile.jsp">Profile</a></li>
                                            <li><a href="companyJobs.jsp">Our Jobs</a></li>                                            
                                            <li class="divider"></li>
                                            <li><a href="http://localhost:8080/qwerty/LogOutController">Log Out</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="pe-7s-user"></i>
                                        <p>Language</p>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <form action="BundleController">
                                            <li><input type="submit" class="list-group-item btn-block" name="bundle" value="RO"></li>
                                            <li><input type="submit" class="list-group-item btn-block" name="bundle" value="ENG"></li>
                                        </form>
                                    </ul>
                                </li>
                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
                <div class="blurred-container">
                    <div class="img-src" style="background-image: url('img/bg.jpg')"></div>
                </div>
            </div><!--  end navbar -->

        </div> <!-- end menu-dropdown -->
        <div class="main">
            <jsp:invoke fragment="content" />
        </div>
    </body>
</html>