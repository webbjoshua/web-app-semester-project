<%--
  Created by IntelliJ IDEA.
  User: wcfba
  Date: 5/2/2022
  Time: 10:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=windows-1252">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
        #rcorners0 {
            border-radius: 25px;
            border: 2px solid #73AD21;
            padding: 20px;
            width: 650px;
            height: 150px;
        }

        #rcorners3 {
            border: none;
            width: 650px;
            height: 10px;
            padding:-5px;
        }
        #rcorners2 {
            border: none;
            border-radius: 25px;
            padding: 20px;
            width: 650px;
            height: 350px;
            text-align: left;
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

        table, th, td {
            border:none;
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

        section,
        h1 {
            padding: 0 1em;
        }


        img {
            width: 100%;
            height: 80%;
        }

        #rcorners1 {
            border: green solid #73AD21;
            padding: 20px;
            width: 660px;
            height: 45px;
        }

        #rcorners10 {
            border: none;
            width: 660px;
            height: 105px;
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
            margin: 0 auto -ms-transform: translateY(-15%);
            transform: translateY(-15%);
        }

        .login {
            position: relative;
            float: right;
            margin: 0 auto -ms-transform: translateY(-60%);
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
        .twentysixpoint {line-height: 3pt;}

        .checked {
            color: orange;
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
                            <form action="/action_page.php"> <input name="search" placeholder="Search Movies"

                                                                    size="15" type="text"> </form>
                        </div>
                    </li>
                </nav>
            </div>
        </div>
    </div>
    <div class="container" id="rcorners_hr">
        <hr style="width:92%"> </div>
    <div class="container" id="rcorners10">
        <h1 id="center1">Review Title</h1>
        <table style="width:100%">
            <tbody>
            <tr>
                <td> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span> <span class="fa fa-star"></span>
                    <span class="fa fa-star"></span> </td>
            </tr>
            <tr>
                <td>Author, date</td>
            </tr>
            <tr>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="container" id="rcorners0">
        <div class="block"> <img class="float" id="left" src="https://www.w3schools.com/css/paris.jpg"

                                 alt="Paris"></div>
        Picture!
        <p> Please limit the text length here to avoid overflow. </p>
        <p align="left"> Lorem ipsum dolor sit amet, consectetur adipiscing
            elit. Quisque cursus dui et pharetra scelerisque. Fusce at maximus
            nibh. Morbi luctus laoreet felis, quis vestibulum nulla. Vivamus
            auctor nisl ante, ut ullamcorper quam maximus et. Nulla sit amet
            libero malesuada. </p>
        <div class="container" id="rcorners3"> </div>
        <div class="container" id="rcorners2"> Lorem ipsum dolor sit amet,
            consectetur adipiscing elit. Quisque cursus dui et pharetra
            scelerisque. Fusce at maximus nibh. Morbi luctus laoreet felis, quis
            vestibulum nulla. Vivamus auctor nisl ante, ut ullamcorper quam
            maximus et. Nulla sit amet libero malesuada, viverra tortor id,
            ullamcorper metus. Suspendisse blandit ac lacus quis tincidunt. Donec
            ultrices varius neque, non suscipit sapien congue non. Pellentesque ac
            ornare nunc, quis pharetra enim. Nunc nec nisi nec ligula tincidunt
            tempor. Curabitur a suscipit sapien. Duis at feugiat felis. Cras
            fermentum euismod posuere. Pellentesque tristique risus sed cursus
            tincidunt. Cras finibus urna eu lacus tempus sodales. Cras ex est,
            placerat vel massa ut, fringilla consequat est. Curabitur bibendum
            turpis risus, vel finibus risus bibendum et. Nulla sit amet augue
            scelerisque, semper enim mattis, feugiat odio. Phasellus vel nulla id
            libero pharetra eleifend sit amet id lorem. Maecenas magna eros,
            vestibulum non ex sit amet, euismod eleifend ipsum. Nulla consectetur
            convallis quam, ac gravida massa posuere eu. Etiam id tincidunt dolor.
            Proin enim lorem, placerat porta molestie vitae, dignissim vel purus.
            Donec lorem eros, tincidunt ut placerat at, porttitor eget erat.
            Suspendisse blandit at est ut maximus. Donec ut enim sit amet ligula
            malesuada tincidunt. Vestibulum ante ipsum primis in faucibus orci
            luctus et ultrices posuere cubilia curae; Phasellus porta commodo
            feugiat. Class aptent taciti sociosqu ad litora torquent per conubia
            nostra, per inceptos himenaeos. Quisque metus ligula, feugiat egestas
            risus in, elementum rutrum sapien. Etiam cursus id sem vel
            consectetur. Fusce eget diam at sem tristique feugiat a et velit.
            Quisque leo felis, porta in enim tempor, sodales faucibus sem. Aliquam
            a malesuada ligula, ac mollis mi. Vivamus egestas, sem at ullamcorper
            fringilla, purus metus tempus enim, eget condimentum diam tortor in
            quam. Nam a elit placerat, tristique nulla non, pulvinar diam. Ut id
            ornare neque, ut auctor ligula. Pellentesque blandit augue turpis,
            molestie interdum lorem venenatis ac. Etiam mi purus, efficitur at
            iaculis et, lobortis ut eros. Nunc nec risus viverra, porttitor magna
            ut, eleifend magna. Integer a purus a nunc iaculis blandit ac sed
            nulla. Curabitur feugiat, ante ac malesuada consequat, quam nisl
            ullamcorper odio, ut posuere ex elit eu erat. Phasellus in aliquet
            arcu. Morbi pulvinar dolor lorem. Phasellus dapibus nisi non lacus
            vestibulum, nec consequat lectus fringilla. Mauris maximus elit dolor,
            vitae aliquam dolor tempus id. Fusce dui tortor, rutrum ac elit vitae,
            posuere blandit turpis. Vestibulum sed dictum tortor, eu faucibus
            tellus. Vestibulum a venenatis mi. Sed pellentesque nec risus non
            dapibus. Duis molestie bibendum maximus. Phasellus vel eros finibus,
            vehicula massa volutpat, rutrum velit. Duis et varius neque, id
            tincidunt ex. Quisque vel rhoncus metus. Aliquam vel sem odio. Nulla
            vel eros nulla. In mollis leo et eros vestibulum rutrum. </div>
    </div>
</section>
</body>
</html>
