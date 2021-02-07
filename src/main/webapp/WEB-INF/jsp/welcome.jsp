<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.javainuse.entity.Product" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: FaribaMhb
  Date: 2/5/2021
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <%--<link href="bootstrap/font-awesome.css" rel="stylesheet">--%>
    <link href="../../bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/Index.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="../../bootstrap/bootstrap.js"></script>
    <script src="../../bootstrap/jquery-2.1.1.min.js"></script>
</head>
<body>
<header>

    <nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark" style="direction: rtl">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav" style="float: right">
                <li class="nav-item ">
                    <a class="nav-link" href="#">
                        <i class="glyphicon glyphicon-shopping-cart"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="glyphicon glyphicon-home"></i>
                    </a>

                </li>

                </li>
            </ul>
        </div>
    </nav>
</header>
<article>
    <div id="cards_landscape_wrap-2">
        <div class="container">
            <div class="row">

               <c:forEach var="product" items="${products}">
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    <a href="">
                        <div class="card-flyer">
                            <div class="text-box">
                                <div class="image-box">
                                    <img src="https://www.w3schools.com/css/img_forest.jpg" alt="" />
                                </div>
                                <div class="text-container">
                                    <h6> <c:out value="${product.name}" /></h6>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>

                    </c:forEach>

            </div>
        </div>
    </div>
</article>
<footer class="fixed_footer">
    <div class="content">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis ducimus nemo quo totam neque quis soluta nisi obcaecati aliquam saepe dicta adipisci blanditiis quaerat earum laboriosam accusamus nesciunt! Saepe ex maxime enim asperiores nisi. Obcaecati nostrum nobis laudantium aliquam commodi veniam magni similique ullam quis pariatur voluptatem harum id error.</p>
    </div>
</footer>

</body>
</html>


