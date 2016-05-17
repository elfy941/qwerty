<%-- 
    Document   : index
    Created on : May 12, 2016, 10:40:04 PM
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ResourceBundle"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tags:menutag>
    <jsp:attribute name="header">
        <!--Page specific css / js goes here-->
        <!--css-->
        <link rel="stylesheet" href="css/freelancer.css" type="text/css">
        <!--js-->
        <script src="js/freelancer.js"></script>
    </jsp:attribute>
    <jsp:attribute name="content" >

        <!-- Portfolio Grid Section -->
        <section id="portfolio" class="main">
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

        <section id="home">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <h3>Online platform for finding you a job</h3>
                        <h1>Job King</h1>
                        <hr>
                        <a href="#work" class="smoothScroll btn btn-danger">What we do</a>
                        <a href="signup.jsp" class="smoothScroll btn btn-default">Sign up now</a>
                    </div>
                </div>
            </div>		
        </section>

        <!-- work section -->
        <section id="work" class="main">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title">
                            <strong>01</strong>
                            <h1 class="heading bold">WHAT WE DO</h1>
                            <hr>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
                        <i class="icon-cloud medium-icon"></i>
                        <h3>Job Platform</h3>
                        <hr>
                        <p>We provide an online platform for finding a job. The system is quick and it's easy to sign up.</p>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.9s">
                        <i class="icon-laptop medium-icon"></i>
                        <h3> Company options</h3>
                        <hr>
                        <p> If you represent a company and you want to put up some job offers.  </p>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="1s">
                        <i class="icon-envelope medium-icon"></i>
                        <h3>Easy CV</h3>
                        <hr>
                        <p> We provide a pre-made template for you to fill up, that you take under 15 minutes to complete. Fast and easy and succesful!</p>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="1s">
                        <i class="icon-mobile medium-icon"></i>
                        <h3>MOBILE APP</h3>
                        <hr>
                        <p> Soon the mobile app will be available </p>
                    </div>

                    <div class="col-lg-4 col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="1s">
                        <i class="icon-chat medium-icon"></i>
                        <h3>SOCIAL MEDIA</h3>
                        <hr>
                        <p>You can find us also on <a href="https://www.facebook.com" target="_blank"> Facebook</a> or follow us on <a href="https://www.twitter.com" target="_blank"> Twitter</a>. </p>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="1s">
                        <i class="icon-browser medium-icon"></i>
                        <h3>RESPONSIVE LAYOUT</h3>
                        <hr>
                        <p> The website is responsive so that you can have a great experience wherever you are.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- about section -->
        <section id="about">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 text-center">
                        <div class="section-title">
                            <strong>02</strong>
                            <h1 class="heading bold">OUR PLATFORM</h1>
                            <hr>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <img src="images/about-img.jpg" class="img-responsive" alt="about img">
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <h3 class="bold">Job King</h3>
                        <h1 class="heading bold">Best Online Recruiter in Romania</h1>
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="active"><a href="#design" aria-controls="design" role="tab" data-toggle="tab">DESIGN</a></li>
                            <li><a href="#mobile" aria-controls="mobile" role="tab" data-toggle="tab">MOBILE</a></li>
                            <li><a href="#social" aria-controls="social" role="tab" data-toggle="tab">SOCIAL</a></li>
                        </ul>
                        <!-- tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="design">
                                <p> We are proud to say that our website is one of the most user-friendly of its kind.</p>
                                <p> Based on a survey that took place in 2015, 85% of our users consider the website sturdy, well-made, interactive and easy to use.</p>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="mobile">
                                <p> Currently we are working on a mobile app. </p>
                                <p> But until then, you can still experience Job King while on the phone, because our website has a responsive and interactive design, easy to use on any device.</p>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="social">
                                <p> We like to keep in touch. </p>
                                <p>So besides the contact form, you can find us also on <a href="https://www.facebook.com" target="_blank"> Facebook</a> or follow us on <a href="https://www.twitter.com" target="_blank"> Twitter</a>.</p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- TO DO -->
        <!-- portfolio section -->
        <div id="portfolio">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title">
                            <strong>03</strong>
                            <h1 class="heading bold">PARTNERS</h1>
                            <hr>
                        </div>
                        <!-- ISO section -->
                        <div class="iso-section">
                            <ul class="filter-wrapper clearfix">
                                <li><a href="#" data-filter="*" class="selected opc-main-bg">All</a></li>
                                <li><a href="#" class="opc-main-bg" data-filter=".html">HTML</a></li>
                                <li><a href="#" class="opc-main-bg" data-filter=".photoshop">Photoshop</a></li>
                                <li><a href="#" class="opc-main-bg" data-filter=".wordpress">Wordpress</a></li>
                                <li><a href="#" class="opc-main-bg" data-filter=".mobile">Mobile</a></li>
                            </ul>
                            <div class="iso-box-section wow fadeIn" data-wow-delay="0.9s">
                                <div class="iso-box-wrapper col4-iso-box">

                                    <div class="iso-box html wordpress mobile col-lg-4 col-md-4 col-sm-6">
                                        <a href="images/portfolio-img1.jpg" data-lightbox-gallery="portfolio-gallery"><img src="images/portfolio-img1.jpg" alt="portfolio img"></a>
                                    </div>

                                    <div class="iso-box wordpress col-lg-4 col-md-4 col-sm-6">
                                        <a href="images/portfolio-img2.jpg" data-lightbox-gallery="portfolio-gallery"><img src="images/portfolio-img2.jpg" alt="portfolio img"></a>
                                    </div>

                                    <div class="iso-box html mobile col-lg-4 col-md-4 col-sm-6">
                                        <a href="images/portfolio-img3.jpg" data-lightbox-gallery="portfolio-gallery"><img src="images/portfolio-img3.jpg" alt="portfolio img"></a>
                                    </div>

                                    <div class="iso-box wordpress col-lg-4 col-md-4 col-sm-6">
                                        <a href="images/portfolio-img4.jpg" data-lightbox-gallery="portfolio-gallery"><img src="images/portfolio-img4.jpg" alt="portfolio img"></a>
                                    </div>

                                    <div class="iso-box html photoshop col-lg-4 col-md-4 col-sm-6">
                                        <a href="images/portfolio-img5.jpg" data-lightbox-gallery="portfolio-gallery"><img src="images/portfolio-img5.jpg" alt="portfolio img"></a>
                                    </div>

                                    <div class="iso-box photoshop col-lg-4 col-md-4 col-sm-6">
                                        <a href="images/portfolio-img6.jpg" data-lightbox-gallery="portfolio-gallery"><img src="images/portfolio-img6.jpg" alt="portfolio img"></a>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>		


        <!-- contact section -->
        <section id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 text-center">
                        <div class="section-title">
                            <strong>04</strong>
                            <h1 class="heading bold">CONTACT US</h1>
                            <hr>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12 contact-info">
                        <h2 class="heading bold">CONTACT INFO</h2>
                        <p>If you have any suggestions or you need assistance, leave us a message or call us.</p>
                        <div class="col-md-6 col-sm-4">
                            <h3><i class="icon-envelope medium-icon wow bounceIn" data-wow-delay="0.6s"></i> EMAIL</h3>
                            <p>hello@jobking.com</p>
                        </div>
                        <div class="col-md-6 col-sm-4">
                            <h3><i class="icon-phone medium-icon wow bounceIn" data-wow-delay="0.6s"></i> PHONES</h3>
                            <p>010-020-0340 | 090-080-0760</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <form action="#" method="get" class="wow fadeInUp" data-wow-delay="0.6s">
                            <div class="col-md-6 col-sm-6">
                                <input type="text" class="form-control" placeholder="Name" name="name">
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <input type="email" class="form-control" placeholder="Email" name="email">
                            </div>
                            <div class="col-md-12 col-sm-12">
                                <textarea class="form-control" placeholder="Message" rows="7" name="message"></textarea>
                            </div>
                            <div class="col-md-offset-4 col-md-8 col-sm-offset-4 col-sm-8">
                                <input type="submit" class="form-control" value="SEND MESSAGE">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <!-- footer section -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <p>Copyright © Digital Team HTML5 Template | Design: <a href="http://www.tooplate.com" target="_parent">Tooplate</a></p>
                        <hr>
                        <ul class="social-icon">
                            <li><a href="#" class="fa fa-facebook wow fadeIn" data-wow-delay="0.3s"></a></li>
                            <li><a href="#" class="fa fa-twitter wow fadeIn" data-wow-delay="0.6s"></a></li>
                            <li><a href="#" class="fa fa-dribbble wow fadeIn" data-wow-delay="0.9s"></a></li>
                            <li><a href="#" class="fa fa-behance wow fadeIn" data-wow-delay="0.9s"></a></li>
                            <li><a href="#" class="fa fa-tumblr wow fadeIn" data-wow-delay="0.9s"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>


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

    </jsp:attribute>
</tags:menutag>
