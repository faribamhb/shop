<%@ page import="java.util.Base64" %>
<%@ page import="com.javainuse.repository.ProductCategoryRepository" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>

    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <title>فروشگاه اینترنتی</title>

    <!-- Mobile Specific Metas
    ================================================== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Construction Html5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
    <meta name="author" content="Themefisher">
    <meta name="generator" content="Themefisher Constra HTML Template v1.0">
    <link rel="stylesheet" href="../../plugins/themefisher-font/style.css">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="../../images/favicon.png"/>

    <!-- Themefisher Icon font -->
    <%--<link rel="stylesheet" href="../../plugins/themefisher-font/style.css">--%>
    <!-- bootstrap.min css -->
    <link rel="stylesheet" href="../../plugins/bootstrap/css/bootstrap.min.css">

    <!-- Animate css -->
    <link rel="stylesheet" href="../../plugins/animate/animate.css">
    <!-- Slick Carousel -->
    <link rel="stylesheet" href="../../plugins/slick/slick.css">
    <link rel="stylesheet" href="../../plugins/slick/slick-theme.css">

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="../../css/style.css">

</head>

<body id="body" class="container">

<!-- Start Top Header Bar -->
<section class="top-header">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-xs-12 col-sm-4">
                <div class="contact-number">
                    <i class="tf-ion-ios-telephone"></i>
                    <span>09193136177</span>
                </div>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-4">
                <!-- Site Logo -->
                <div class="logo text-center">
                    <a href="index.html">

                        <!-- replace logo here -->
                        <svg width="135px" height="29px" viewBox="0 0 250 30" version="1.1"
                             xmlns="http://www.w3.org/2000/svg"
                             xmlns:xlink="http://www.w3.org/1999/xlink">
                            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" font-size="40"
                               font-family="AustinBold, Austin" font-weight="bold">
                                <g id="Group" transform="translate(-108.000000, -297.000000)" fill="#000000">
                                    <text id="AVIATO">
                                        <tspan x="108.94" y="325">فروشگاه اینترنتی</tspan>
                                    </text>
                                </g>
                            </g>
                        </svg>
                    </a>
                </div>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-4">
                <!-- Cart -->
                <ul class="top-menu text-right list-inline">

                    <!-- Search -->
                    <li class="dropdown search dropdown-slide">
                        <a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
                                class="tf-ion-ios-search-strong"></i> جستجو</a>
                        <ul class="dropdown-menu search-dropdown">
                            <li>
                                <form action="post"><input type="search" class="form-control" style="text-align: right"
                                                           placeholder="جستجو"></form>
                            </li>
                        </ul>
                    </li><!-- / Search -->


                </ul><!-- / .nav .navbar-nav .navbar-right -->
            </div>
        </div>
    </div>
</section><!-- End Top Header Bar -->


<!-- Main Menu Section -->
<section class="menu">
    <nav class="navbar navigation">
        <div class="container">
            <div class="navbar-header">
                <h2 class="menu-title">Main Menu</h2>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            </div><!-- / .navbar-header -->

            <!-- Navbar Links -->
            <div id="navbar" class="navbar-collapse collapse text-center">
                <ul class="nav navbar-nav">
                    <!-- Elements -->
                    <li class="dropdown dropdown-slide">
                        <a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-delay="350"
                           role="button" aria-haspopup="true" aria-expanded="false">محصولات <span
                                class="tf-ion-ios-arrow-down"></span></a>
                        <div class="dropdown-menu">
                            <div class="row">

                                <!-- Basic -->
                                <div class="col-lg-6 col-md-6 mb-sm-3">
                                    <ul>
                                        <li class="dropdown-header">Pages</li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="shop.html">Shop</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="cart.html">Cart</a></li>
                                        <li><a href="pricing.html">Pricing</a></li>
                                        <li><a href="confirmation.html">Confirmation</a></li>

                                    </ul>
                                </div>

                                <!-- Layout -->
                                <div class="col-lg-6 col-md-6 mb-sm-3">
                                    <ul>
                                        <li class="dropdown-header">Layout</li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="product-single.html">Product Details</a></li>
                                        <li><a href="shop-sidebar.html">Shop With Sidebar</a></li>

                                    </ul>
                                </div>

                            </div><!-- / .row -->
                        </div><!-- / .dropdown-menu -->
                    </li><!-- / Elements -->


                    <!-- Pages -->
                    <li class="dropdown full-width dropdown-slide">
                        <a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-delay="350"
                           role="button" aria-haspopup="true" aria-expanded="false">درباره ما <span
                                class="tf-ion-ios-arrow-down"></span></a>
                        <div class="dropdown-menu">
                            <div class="row">

                                <!-- Introduction -->
                                <div class="col-sm-3 col-xs-12">
                                    <ul>
                                        <li class="dropdown-header">Introduction</li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="contact.html">Contact Us</a></li>
                                        <li><a href="about.html">About Us</a></li>
                                        <li><a href="404.html">404 Page</a></li>
                                        <li><a href="coming-soon.html">Coming Soon</a></li>
                                        <li><a href="faq.html">FAQ</a></li>
                                    </ul>
                                </div>

                                <!-- Contact -->
                                <div class="col-sm-3 col-xs-12">
                                    <ul>
                                        <li class="dropdown-header">Dashboard</li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="dashboard.html">User Interface</a></li>
                                        <li><a href="order.html">Orders</a></li>
                                        <li><a href="address.html">Address</a></li>
                                        <li><a href="profile-details.html">Profile Details</a></li>
                                    </ul>
                                </div>

                                <!-- Utility -->
                                <div class="col-sm-3 col-xs-12">
                                    <ul>
                                        <li class="dropdown-header">Utility</li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="login.html">Login Page</a></li>
                                        <li><a href="signin.html">Signin Page</a></li>
                                        <li><a href="forget-password.html">Forget Password</a></li>
                                    </ul>
                                </div>

                                <!-- Mega Menu -->
                                <div class="col-sm-3 col-xs-12">
                                    <a href="shop.html">
                                        <img class="img-responsive" src="images/shop/header-img.jpg" alt="menu image"/>
                                    </a>
                                </div>
                            </div><!-- / .row -->
                        </div><!-- / .dropdown-menu -->
                    </li><!-- / Pages -->


                    <!-- Blog -->
                    <li class="dropdown dropdown-slide">
                        <a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-delay="350"
                           role="button" aria-haspopup="true" aria-expanded="false">دسته بندی ها <span
                                class="tf-ion-ios-arrow-down"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="blog-left-sidebar.html">دستکش</a></li>
                            <li><a href="blog-right-sidebar.html">کلاه</a></li>
                            <li><a href="blog-full-width.html">لباس ایمنی</a></li>
                            <li><a href="blog-grid.html">لباس کار</a></li>
                            <li><a href="blog-single.html">کفش</a></li>
                        </ul>
                    </li><!-- / Blog -->

                    <!-- Shop -->
                    <li class="dropdown dropdown-slide">
                        <a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-delay="350"
                           role="button" aria-haspopup="true" aria-expanded="false">گروه ها <span
                                class="tf-ion-ios-arrow-down"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="typography.html">Typography</a></li>
                            <li><a href="buttons.html">Buttons</a></li>
                            <li><a href="alerts.html">Alerts</a></li>
                        </ul>
                    </li><!-- / Blog -->
                    <!-- Home -->
                    <li class="dropdown ">
                        <a href="#" data-toggle="modal" data-target="#exampleModalCenter">افزودن محصول</a>
                    </li><!-- / Home -->
                </ul><!-- / .nav .navbar-nav -->


            </div>
            <!--/.navbar-collapse -->
        </div><!-- / .container -->
    </nav>

    <div class="hero-slider">
        <div class="slider-item  th-fullpage hero-area" style="background-image: url(../../image/3.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 text-right">
                        <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">انواع و اقسام لوازم
                            ایمنی</p>
                        <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">تولید کننده انواع
                            تجهیزات ایمنی </h1>
                        <%--<a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shop.html">Shop Now</a>--%>
                    </div>
                </div>
            </div>
        </div>
        <div class="slider-item th-fullpage hero-area" style="background-image: url(../../image/4.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 text-center">
                        <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">خرید تلفنی</p>
                        <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">آماده همکاری با شرکت
                            ها و ارگان ها</h1>
                        <%--<a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shop.html">Shop Now</a>--%>
                    </div>
                </div>
            </div>
        </div>
        <div class="slider-item th-fullpage hero-area" style="background-image: url(../../image/1.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 text-right">
                        <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">ایمنی</p>
                        <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">از ما خرید نمایید <br>
                            وسیله های حفاظتی در محیط کار</h1>
                        <%--<a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shop.html">Shop Now</a>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<div class="page-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <c:forEach var="product" items="${products}">
                    <div class="col-md-4">
                        <div class="product-item" id="product${product.id}">
                            <div class="product-thumb">
                                <span class="bage">${product.name}</span>
                                <img class="img-responsive" id="showImage" src="data:image/png;base64,${product.image}" alt="product-img"/>
                                <div class="preview-meta">
                                    <ul>
                                        <li>
									<span data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                                        </li>
                                        <li>
                                            <a href="#!"><i class="tf-ion-edit"></i></a>
                                        </li>
                                        <li>
                                            <a href="#!" onclick="deleteProduct(${product.id})"><i
                                                    class="tf-ion-android-delete"></i></a>
                                        </li>
                                    </ul>
                                </div>
                                <h4 class="title">${product.name}</h4>
                                <p style="margin: 2%">${product.description}</p>
                                <div class="product-content" >
                                    <h4>مبلغ</h4>
                                    <div class="text-container" >

                                        <p class="price" style="color:#bf2000"> <span style="text-align: left">ریال</span>${product.price} </p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </c:forEach>
                <div class="text-center">
                    <ul class="pagination post-pagination">
                        <li><a href="#!">Prev</a>
                        </li>
                        <li class="active"><a href="#!">1</a>
                        </li>
                        <li><a href="#!">2</a>
                        </li>
                        <li><a href="#!">3</a>
                        </li>
                        <li><a href="#!">4</a>
                        </li>
                        <li><a href="#!">5</a>
                        </li>
                        <li><a href="#!">Next</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <aside class="sidebar">
                    <!-- Widget Latest Posts -->
                    <div class="widget widget-latest-post">
                        <h4 class="widget-title">Latest Posts</h4>
                        <div class="media">
                            <a class="pull-left" href="#!">
                                <img class="media-object" src="../../images/blog/post-thumb.jpg" alt="Image">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Introducing Swift for Mac</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis, officia.</p>
                            </div>
                        </div>

                    </div>
                    <!-- End Latest Posts -->
                </aside>
            </div>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content" style="text-align: right">
            <div class="modal-header" style="background-color: rgb(254,186,1)">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="alertPart mt-50 messageAlert">
                    <div class="alert alert-success alert-common alert-dismissible " role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <i class="tf-ion-thumbsup"></i><span>Well done!</span> با موفقیت حذف شد
                    </div>
                </div>
                <h2 class="text-center">افزودن محصول</h2>
                <form class="clearfix" style="margin: 10%" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="text" class="form-control" id="name" name="name" placeholder="نام محصول">
                    </div>
                    <div class="form-group">
                            <select class="form-control borderstyle" id="categoryId" style="width: 100% ; border-radius: 5px;" onclick="showCategory()">


                                    <c:forEach var="productCategory" items="${productCategories}">
                                        <option value="${productCategory.id}" >${productCategory.name}</option>
                                    </c:forEach>

                                <%--<option value="1" >item 1</option>--%>
                        <%--<option value="2">item 2</option>--%>
                        <%--<option value="3">item 3</option>--%>
                        <%--<option value="4">item 4</option>--%>
                        </select>

                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="price" placeholder="قیمت">
                    </div>
                    <div class="form-group" style="direction: rtl">
                        <input type="file"  dir="rtl" id="image" name="file" placeholder="عکس">
                    </div>
                    <div class="form-group">
                        <textarea rows="6" placeholder="توضیحات" id="description" class="form-control" name="message"
                                  id="message"></textarea>
                    </div>
                    <div class="text-center">
                        <button type="button" class="btn btn-main text-center " onclick="addProduct()">افزودن</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<footer class="footer section text-center">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="social-media">
                    <li>
                        <a href="https://www.facebook.com/themefisher">
                            <i class="tf-ion-social-facebook"></i>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.instagram.com/themefisher">
                            <i class="tf-ion-social-instagram"></i>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.twitter.com/themefisher">
                            <i class="tf-ion-social-twitter"></i>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.pinterest.com/themefisher/">
                            <i class="tf-ion-social-pinterest"></i>
                        </a>
                    </li>
                </ul>
                <ul class="footer-menu text-uppercase">
                    <li>
                        <a href="contact.html">CONTACT</a>
                    </li>
                    <li>
                        <a href="shop.html">SHOP</a>
                    </li>
                    <li>
                        <a href="pricing.html">Pricing</a>
                    </li>
                    <li>
                        <a href="contact.html">PRIVACY POLICY</a>
                    </li>
                </ul>
                <p class="copyright-text">Copyright &copy;2021, Designed &amp; Developed by <a
                        href="https://themefisher.com/">Themefisher</a></p>
            </div>
        </div>
    </div>
</footer>

<!--
Essential Scripts
=====================================-->

<!-- Main jQuery -->
<script src="../../plugins/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.1 -->
<script src="../../plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- Bootstrap Touchpin -->
<script src="../../plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
<!-- Instagram Feed Js -->
<script src="../../plugins/instafeed/instafeed.min.js"></script>
<!-- Video Lightbox Plugin -->
<script src="../../plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
<!-- Count Down Js -->
<script src="../../plugins/syo-timer/build/jquery.syotimer.min.js"></script>

<!-- slick Carousel -->
<script src="../../plugins/slick/slick.min.js"></script>
<script src="../../plugins/slick/slick-animation.min.js"></script>

<!-- Google Mapl -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
<script type="text/javascript" src="../../plugins/google-map/gmap.js"></script>

<!-- Main Js File -->
<script src="../../js/script.js"></script>


<script>



    $('#output').hide();
    $('.messageAlert').hide();

    function deleteProduct(id) {
        $.ajax({
            type: "GET",
            url: "/deleteProduct",
            data: {
                id: id
            },

            success: function (response) {
                $('#product' + id).remove();

                // $("#output").addClass("alert");
                $("#output").show(0).delay(5000).hide(0);


            },

        });
    }

     function showCategory(){
        debugger;
         $.ajax({
             type: "Get",
             url: "/showCategory",

             success: function (response) {

             },

         });
     }
    function addProduct() {
        debugger;
        var name=$( "#name" ).val();
        var price=$( "#price" ).val();
        var description=$( "#description" ).val();
        var categoryId=$( "#categoryId" ).val();
        var fd = new FormData();
        fd.append( "image", $("input[name=file]")[0].files[0]);
        fd.append( "name", name);
        fd.append( "price", price);
        fd.append( "description", description);
        fd.append( "categoryId", categoryId);

        $.ajax({
            type: "POST",
            url: "/addProduct",

            data: fd,
            contentType: false,
            processData: false,
            cache: false,
            success: function (response) {

                $(".messageAlert").show(0).delay(5000).hide(0);

            },

        });
    }
</script>
</body>
</html>



