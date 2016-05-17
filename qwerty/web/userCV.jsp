<%-- 
    Document   : userCV
    Created on : May 15, 2016, 11:24:12 AM
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ResourceBundle"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tags:menutag> 
    <jsp:attribute name="header">
        <link type="text/css" rel="stylesheet" href="css/cv.css">
    </jsp:attribute>
    <jsp:attribute name="content">
        <section class="main">
            <div class="container">
                <form action="UserCVController">
                    <input type="submit" value="Add" class="btn btn-primary">
                </form>
            </div>
        </section>
        <section>
            <c:forEach items="${sessionScope.cvs}" var="cv">
                <div class="panel-group">
                    <a href="#${cv.getId()}" class="portfolio-link" data-toggle="modal">                            

                        <div class="panel panel-default">
                            <div class="panel-heading"></div>    
                            <div class="panel-body">${cv.getId()}</div>                            
                        </div>
                    </a>
                </div>
            </c:forEach>       
        </section>
        <section>
            <c:forEach items="${sessionScope.cvs}" var="cv">
                <div class="portfolio-modal modal fade" id="${cv.getId()}" tabindex="-1" role="dialog" aria-hidden="true">
                    <div id="cv" class="instaFade">
                        <div class="mainDetails">                
                            <div id="name">
                                <h1 class="quickFade delayTwo">${cv.getFirstName()} ${cv.getLastName()}</h1>
                                <h2 class="quickFade delayThree">Job Title</h2>
                            </div>
                            <div id="contactDetails" class="quickFade delayFour">
                                <ul>
                                    <li>e: <a href="mailto:joe@bloggs.com" target="_blank">${cv.getMail()}</a></li>                        
                                    <li>m: ${cv.getPhone()}</li>
                                </ul>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div id="mainArea" class="quickFade delayFive">
                            <section>
                                <article>
                                    <div class="sectionTitle">
                                        <h1>Personal Profile</h1>
                                    </div>
                                    <div class="sectionContent">
                                        <p>${cv.getPersonalProfile()}</p>
                                    </div>
                                </article>
                                <div class="clear"></div>
                            </section>
                            <section>
                                <div class="sectionTitle">
                                    <h1>Work Experience</h1>
                                </div>
                                <div class="sectionContent">
                                    <article>                            
                                        <p>${cv.getWorkExperience()}</p>
                                    </article>
                                </div>
                                <div class="clear"></div>
                            </section>
                            <section>
                                <div class="sectionTitle">
                                    <h1>Key Skills</h1>
                                </div>
                                <div class="sectionContent">
                                    <article>
                                        <p>${cv.getKeySkills()}</p>
                                    </article>
                                </div>
                                <div class="clear"></div>
                            </section>
                            <section>
                                <div class="sectionTitle">
                                    <h1>Education</h1>
                                </div>
                                <div class="sectionContent">
                                    <article>                            
                                        <p>${cv.getEducation()}</p>
                                    </article>
                                </div>
                                <div class="clear"></div>
                            </section>
                        </div
                    </div>
                </div>
            </div>
        </c:forEach>
    </section>
</jsp:attribute>
</tags:menutag>
