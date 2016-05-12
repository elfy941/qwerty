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
