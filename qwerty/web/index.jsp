<%-- 
    Document   : index
    Created on : Apr 12, 2016, 10:17:51 PM
    Author     : elfy
--%>

<%@page import="java.util.ResourceBundle"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>

<mt:menutag title="Home Page">
    <jsp:attribute name="content">
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

                <section class="bg-primary" id="about">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2 text-center">
                                <h2 class="section-heading">We've got what you need!</h2>
                                <hr class="light">
                                <p class="text-faded">Description needed</p>
                                <a href="#" class="btn btn-default btn-xl">Get Started!</a>
                            </div>
                        </div>
                    </div>
                </section>
                <a href="newjsp.jsp">Press</a>
    </jsp:attribute>
</mt:menutag>

