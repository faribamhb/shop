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
    <%--<link href="../../bootstrap/bootstrap.min.css" rel="stylesheet">--%>
    <link href="../../css/Index.css" rel="stylesheet">
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<script src="../../bootstrap/bootstrap.js"></script>--%>
    <%--<script src="../../bootstrap/jquery-2.1.1.min.js"></script>--%>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</head>
<body>
<header>
    <div >
        <div class="row">
            <div class="col-md-12">
                <nav class="navbar navbar-expand-lg navbar-light bg-light rounded mt-5">
                    <a class="navbar-brand" href="#">Brand</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Gallery</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Event</a>
                            </li>
                        </ul>
                        <form class="form-inline my-2 my-lg-0">
                            <div class="col-auto pl-0">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-user"></i></div>
                                    </div>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email Address">
                                </div>
                            </div>
                            <div class="col-auto pl-0">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-lock"></i></div>
                                    </div>
                                    <input type="password" class="form-control" id="inlineFormInputGroup" placeholder="Password">
                                </div>
                            </div>
                            <div class="col-auto pl-0 pr-0">
                                <a class="nav-link" href="/login" id="login"><span class="fas fa-sign-in-alt"></span> Login</a>
                                <%--<button class="btn btn-primary my-2 my-sm-0" type="submit">Login</button>--%>
                            </div>
                        </form>
                    </div>
                </nav>
            </div>
        </div>
    </div>
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
    <%--<div>--%>
        <%--<jsp:include page="login.jsp"/>--%>
    <%--</div>--%>
</article>
<footer class="fixed_footer">
    <div class="content">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis ducimus nemo quo totam neque quis soluta nisi obcaecati aliquam saepe dicta adipisci blanditiis quaerat earum laboriosam accusamus nesciunt! Saepe ex maxime enim asperiores nisi. Obcaecati nostrum nobis laudantium aliquam commodi veniam magni similique ullam quis pariatur voluptatem harum id error.</p>
    </div>
</footer>

</body>
</html>


