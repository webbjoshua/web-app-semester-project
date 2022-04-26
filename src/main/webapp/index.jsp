<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    class Movie{
        private String review_title;
        private String film_title;
        private String author_name;
        private String contributing_author_name;
        private String photo_filename;
        private String release_date;
        private String version_information;
        private String review_body;
        private String movie_rating;
        private String number_of_stars;

        public Movie(ArrayList<String> MovieContents, int startIndex){
            this.review_title = MovieContents.get(startIndex);
            this.film_title = MovieContents.get(startIndex+1);
            this.author_name = MovieContents.get(startIndex+2);
            this.contributing_author_name = MovieContents.get(startIndex+3);
            this.photo_filename = MovieContents.get(startIndex+4);
            this.release_date = MovieContents.get(startIndex+5);
            this.version_information = MovieContents.get(startIndex+6);
            this.review_body = MovieContents.get(startIndex+7);
            this.movie_rating = MovieContents.get(startIndex+8);
            this.number_of_stars = MovieContents.get(startIndex+9);
        }

        public String getContributing_author_name() {
            return contributing_author_name;
        }

        public String getAuthor_name() {
            return author_name;
        }

        public String getFilm_title() {
            return film_title;
        }

        public String getReview_title() {
            return review_title;
        }

        public String getMovie_rating() {
            return movie_rating;
        }

        public String getPhoto_filename() {
            return photo_filename;
        }

        public String getRelease_date() {
            return release_date;
        }

        public String getVersion_information() {
            return version_information;
        }

        public String getNumber_of_stars() {
            return number_of_stars;
        }

        public String getReview_body() {
            return review_body;
        }

        public void setAuthor_name(String author_name) {
            this.author_name = author_name;
        }

        public void setContributing_author_name(String contributing_author_name) {
            this.contributing_author_name = contributing_author_name;
        }

        public void setFilm_title(String film_title) {
            this.film_title = film_title;
        }

        public void setPhoto_filename(String photo_filename) {
            this.photo_filename = photo_filename;
        }

        public void setMovie_rating(String movie_rating) {
            this.movie_rating = movie_rating;
        }

        public void setRelease_date(String release_date) {
            this.release_date = release_date;
        }

        public void setReview_title(String review_title) {
            this.review_title = review_title;
        }

        public void setReview_body(String review_body) {
            this.review_body = review_body;
        }

        public void setNumber_of_stars(String number_of_stars) {
            this.number_of_stars = number_of_stars;
        }

        public void setVersion_information(String version_information) {
            this.version_information = version_information;
        }
    }


%>

<%
    DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
    DocumentBuilder builder = dbFactory.newDocumentBuilder();
    String path = application.getRealPath("./");

    Document reviews = builder.parse(path+"reviews.xml");
    reviews.normalize();

    NodeList movies =  reviews.getElementsByTagName("row");
    NamedNodeMap attributes = reviews.getAttributes();



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

    Movie duneMovie = new Movie(MovieTextInfo,0);
    Movie starWarsMovie = new Movie(MovieTextInfo,10);
    Movie matrixMovie = new Movie(MovieTextInfo,20);
    Movie pacificRimMovie = new Movie(MovieTextInfo,30);


%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=windows-1252">
    <style>
        #rcorners0 {
            border-radius: 25px;
            border: 2px solid #73AD21;
            padding: 20px;
            width: 650px;
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
            width: 650px;
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
            width: 660px;
            height: 67px;
        }

        #rcorners10 {
            border: none;
            padding: 20px;
            width: 660px;
            height: 35px;
            margin-top: 1px;
            margin-bottom: 4px;
        }

        #rcorners_hr {
            border: none;
            padding: 20px;
            width: 660px;
            height: 2px;
            margin-top: -2px;
            margin-bottom: -50px;
        }

        #center1 {
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
            grid-template-columns: 460px 185px;;
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
            text-align: right;
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
<section id="center1">
    <div class="container" id="rcorners1">
        <div class="wrapper">
            <div class="box a">Reviews from the Stars</div>
            <div class="box b">
                <nav>
                    <li>
                        <div class="search">
                            <form action="/action_page.php">
                                <input name="search" placeholder="Search Movies" size="15" type="text"></form>
                        </div>
                    </li>
                </nav>
            </div>
            <div class="box c">
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
            <div class="grid-item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/76301/01.png"> <%=duneMovie.getFilm_title()%>
            </div>
            <div class="grid-item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/76301/02.png"> <%=starWarsMovie.getFilm_title()%>
            </div>
            <div class="grid-item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/76301/03.png"> <%=matrixMovie.getFilm_title()%>
            </div>
            <div class="grid-item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/76301/04.png"> <%=pacificRimMovie.getFilm_title()%>
            </div>
            <div class="grid-item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/76301/05.png">Movie Title
            </div>
            <div class="grid-item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/76301/06.png">Movie Title
            </div>
        </div>
    </div>
    <div class="container" id="rcorners1">
        <hr style="border-width: 2px; width:20%">
        <h2 id="center1">More Reviews</h2></div>
    <div class="container" id="rcorners0">
        <div class="block"><img class="float" id="left" src="https://www.w3schools.com/css/paris.jpg" alt="Paris"></div>
        More Reviews!
    </div>
</section>
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