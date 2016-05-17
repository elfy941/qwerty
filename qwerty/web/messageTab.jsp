<%-- 
    Document   : messageTab
    Created on : May 14, 2016, 12:18:02 PM
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ResourceBundle"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tags:menutag>
    <jsp:attribute name="header">

    </jsp:attribute>
    <jsp:attribute name="content">
        <section class="main">
            <div class="container">
                <h3>Messages Panel</h3>
                <c:forEach items="${sessionScope.notif}" var="n">
                    <div class="panel-group">
                        <a href="#${n.getId()}" class="portfolio-link" data-toggle="modal">
                            <c:if test="${n.getStatus() == 'unread'}">
                                <div class="panel panel-primary">
                                    <div class="panel-heading"></div>
                                    <div class="panel-body">${n.getMessage()}</div>
                                </div>
                            </c:if>
                            <c:if test="${n.getStatus() == 'read'}">
                                <div class="panel panel-default">
                                    <div class="panel-heading"></div>
                                    <div class="panel-body">${n.getMessage()}</div>
                                </div>
                            </c:if>
                        </a>
                    </div>
                </c:forEach>                
            </div>
        </section>
        <section>
            <c:forEach items="${sessionScope.notif}" var="n">
                <div class="portfolio-modal modal fade" id="${n.getId()}" tabindex="-1" role="dialog" aria-hidden="true">
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
                                        <form action="DeleteNotificationController">
                                            <input type="text" value="${n.getId()}" name="deleteNot" readonly>
                                            <h2>${n.getMessage()}</h2>
                                            <hr class="star-primary">                                    
                                            <p></p>
                                            <input type="submit" class="btn btn-primary"  value="Close">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </section>

    </jsp:attribute>
</tags:menutag>
