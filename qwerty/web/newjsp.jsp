<%-- 
    Document   : newjsp
    Created on : Apr 12, 2016, 10:42:40 PM
    Author     : elfy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:menutag title="New Jsp">
    <jsp:attribute name="content">
                <header>
                    <div class="header-content">
                        <div class="header-content-inner">
                            <h1>Yep</h1>
                            <hr>
                            <p>some description</p>
                            <a href="#about" class="btn btn-primary btn-xl page-scroll">Find Out More</a>
                        </div>
                    </div>
                </header>
                <aside class="bg-dark">
                    <div class="container text-center">
                        <div class="call-to-action">
                            <h2>Free Download at Start Bootstrap!</h2>
                            <a href="#" class="btn btn-default btn-xl wow tada">Download Now!</a>
                        </div>
                    </div>
                </aside>
                <a href="index.jsp">Press</a>           
    </jsp:attribute>
</mt:menutag>
