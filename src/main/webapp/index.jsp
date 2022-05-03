<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="models.UserModel" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=windows-1252">
    <style>
        #rcorners0 {
            margin: auto;
            border-radius: 25px;
            border: 2px solid #73AD21;
            padding: 20px;
            width: 50%;
            height: 150px;
        }

        #rcorners3 {
            border: none;
            padding: 20px;
            width: 650px;
            height: 90px;
        }

        #rcorners6 {
            border: none;
            padding: 20px;
            width: 650px;
            height: 90px;
        }

        #rcorners5 {
            border: none;
            padding: 20px;
            width: 650px;
            height: 50px;
        }

        #rcorners2 {
            border-radius: 25px;
            border: 2px solid #73AD21;
            padding: 20px;
            width: 50%;
            margin: auto;
            height: 350px;
        }

        img {
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 5px;
            width: 150px;
        }

        #left {
            width: 180px;
            height: 150px;
            object-fit: none;
            border: 0px;
            padding: 0px;
        }

        #center {
            text-align: center;
            border-bottom: 3px solid green;
        }

        #center1 {
            text-align: center;
        }

        .outer {
            border: 5px dotted rgb(214, 129, 137);
            border-radius: 5px;
            width: 450px;
            padding: 10px;
            margin-bottom: 40px;
        }

        .float {
            padding: 10px;
            border: 5px solid rgba(214, 129, 137, .4);
            border-radius: 5px;
            background-color: rgba(233, 78, 119, .4);
            color: #fff;
            float: left;
            width: 200px;
            margin: 0 20px 0 0;
        }

        h1 {
            padding: 0 1em;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(3, 200px);
            /* 3 columns */
            grid-template-rows: repeat(3, 150px);
            /* 3 rows  */
            grid-gap: 50px 30px;
            /* 50 pixels of space added between rows and 30 pixels added between columns  */
        }

        .grid-item {
            border: thick grey solid;
            padding: 10px;
            border-radius: 10px;
        }

        img {
            width: 100%;
            height: 80%;
        }

        #rcorners1 {
            border: green solid #73AD21;
            padding: 20px;
            width: 100%;
            height: 67px;
        }

        #rcorners10 {
            border: none;
            padding: 20px;
            width: 50%;
            height: 35px;
            margin: auto;
        }

        #rcorners_hr {
            margin: auto;
            border: none;
            padding: 20px;
            width: 50%;
            height: 2px;

        }

        #center1 {
            margin: auto;
            width: 100%;
            text-align: center;
        }

        nav {
            text-align: right;
            list-style: none;
            border: none;
            border-color: white;
            background-color: none;
            padding: none;
            margin: none;
        }

        li {
            color: green;
        }

        .search {
            position: relative;
            top: -10%;
            float: left;
            margin: 0 auto
            -ms-transform: translateY(-15%);
            transform: translateY(-15%);
        }

        .login {
            position: relative;
            float: right;
            margin: 0 auto
            -ms-transform: translateY(-60%);
            transform: translateY(-60%);
        }

        .wrapper {
            display: grid;
            grid-gap: 5px 10px;
            grid-template-columns: 75% 25%;
            grid-template-rows: 65px 20px;
            background-color: #fff;
            color: #444;
        }

        .box {
            background-color: #444;
            color: #fff;
            border-radius: 5px;
            padding: 20px;
            font-size: 150%;
        }

        .a {
            grid-column: 1 / 2;
            grid-row: 1 /2;
            text-align: center;
        }

        .b {
            grid-column: 2;
            grid-row: 1/2;
        }

        .c {
            grid-column: 1 /3;
            grid-row: 2;
            text-align: right;
        }

        img {
            width: 90%;
            max-height: 100%;
        }

        hr {
            display: inline-block;
        }

        .twentysixpoint {
            line-height: 3pt;
        }
    </style>
</head>
<body>

<%
    if (request.getSession() != null) {
        if (session.getAttribute("user") == null) {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
            //request.setAttribute("error", "Please login to continue!");
            requestDispatcher.forward(request, response);
        }
    }
%>
<section id="center1">
    <div class="container" id="rcorners1">
        <div class="wrapper">
            <div class="box a">Reviews from the Stars</div>
            <div class="box b">
                <nav>
                    <li>
                        <div class="search">
                            <div class="row">
                                <a href="LogoutServlet" style="text-align:center;color:white" class="btn">Logout</a>
                            </div>
                        </div>
                    </li>
                </nav>
            </div>
            <!--<div class="box c">
                <nav>
                    <li>
                        <div class="login">
                            <form action="/action_page.php" method="post">
                                <input name="search" placeholder="Username" size="16" type="text">
                                <input name="Password" placeholder="Password" size="16" type="password">
                                <input name="login" value="Login" type="submit">
                                <input name="register" value="Register" type="submit">
                            </form>
                        </div>


                    </li>
                </nav>
            </div>
            -->
        </div>
    </div>

    <div class="container" id="rcorners_hr">
        <hr style="width:92%">
    </div>
    <div class="container" id="rcorners10">
        <h1 id="center1"> Featured Review </h1></div>
    <div class="container" id="rcorners0">
        <div class="block"><img class="float" id="left" src="https://www.w3schools.com/css/paris.jpg" alt="Paris"></div>
        Featured Review!
    </div>
    <div class="container" id="rcorners1">
        <hr style="border-width: 2px;width:20%">
        <h1 id="center1"> Now playing </h1></div>
    <div class="container" id="rcorners2">
        <div class="grid">
            <form action="FetchMovieServlet">
                <c:forEach var="each_movie" items="${list_of_movie}">
                    <%
                        int i = 0;
                    %>
                    <div class="grid-item<%=i%>"><img src="${each_movie.getPhoto_filename()}">${each_movie.getReview_title()}</div>
                    <% i++; %>
                </c:forEach>
            </form>
        </div>
    </div>
    <div class="container" id="rcorners1">
        <hr style="border-width: 2px; width:20%">
        <h2 id="center1">More Reviews</h2></div>
    <div class="container" id="rcorners0">
        <div class="block"><img class="float" id="left" src="https://www.w3schools.com/css/paris.jpg" alt="Paris"></div>
        More Reviews!
    </div>
    <span id="error_msg"></span>
</section>
<p>${error}</p>
</body>
</html>

<%--
<form>
        <%

            int reviewItemIndex;
            int childItemIndex;
            String movieText;
            NodeList childNodes;
            ArrayList MovieTextInfo = new ArrayList<String>();
            for (reviewItemIndex = 0; reviewItemIndex<=movies.getLength()-1; reviewItemIndex++){
                childNodes = movies.item(reviewItemIndex).getChildNodes();
                for (childItemIndex=0; childItemIndex<=childNodes.getLength()-1;childItemIndex++) {
                    if (childNodes.item(childItemIndex).hasAttributes() == true){
                        childNodes.item(childItemIndex).normalize();
                        movieText = childNodes.item(childItemIndex).getTextContent();
                        MovieTextInfo.add(movieText);
                    }

                }
            }

            for(Object element: MovieTextInfo){
                out.println("The file information is:" + element);
            }
        %>


    </form>
--%>