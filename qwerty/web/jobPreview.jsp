<%-- 
    Document   : jobPreview
    Created on : May 16, 2016, 12:21:56 AM
    Author     : victor
--%>


<%@page import="entity.Company"%>
<%-- 
    Document   : cvPreview
    Created on : May 15, 2016, 12:15:54 PM
    Author     : victor
--%>

<%@page import="entity.User"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Curriculum Vitae</title>

        <meta name="viewport" content="width=device-width"/>
        <meta name="description" content="The Curriculum Vitae of Joe Bloggs."/>
        <meta charset="UTF-8"> 

        <link type="text/css" rel="stylesheet" href="css/cv.css">
        <link href='http://fonts.googleapis.com/css?family=Rokkitt:400,700|Lato:400,300' rel='stylesheet' type='text/css'>

        <!--[if lt IE 9]>
        <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>

    <%
        Company c = (Company) request.getSession().getAttribute("company");
    %>

    <body id="top">
        <div id="cv" class="instaFade">
            <div class="mainDetails">                
                <div id="name">
                    <h1 class="quickFade delayTwo">${sessionScope.name}</h1>
                    <h2 class="quickFade delayThree">${sessionScope.companyname}</h2>
                </div>

                <div id="contactDetails" class="quickFade delayFour">
                    <ul>
                        <li>e: <a href="mailto:joe@bloggs.com" target="_blank"><%=c.getEmailAddress()%></a></li>                        
                        <li>m: <%=c.getPhoneNumber()%></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>

            <div id="mainArea" class="quickFade delayFive">
                <section>
                    <article>
                        <div class="sectionTitle">
                            <h1>Job Description</h1>
                        </div>

                        <div class="sectionContent">
                            <p>${sessionScope.job_description}</p>
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
                            <p>${sessionScope.work_experience}</p>
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
                            <p>${sessionScope.key_skills}</p>
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
                            <p>${sessionScope.education}</p>
                        </article>

                    </div>
                    <div class="clear"></div>
                </section>

            </div

        </div>
        <form action="BackController">
            <input type="submit" name="job" value="Back" >
        </form>

    </div>
</body>
</html>
