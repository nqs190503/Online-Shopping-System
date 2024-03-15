<%-- 
    Document   : homepage
    Created on : Oct 20, 2023, 1:54:51 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <style>
            .sellproduct{
                color: red;
                border: solid red 1px;
                border-radius: 10px;
                padding: 10px 20px;

            }
        </style>
    </head>
    <!-- body -->

    <body class="main-layout ">
        <!-- loader  -->
        <div class="loader_bg">
            <div class="loader"><img src="images/loading.gif" alt="#" /></div>
        </div>
        <!-- end loader -->
        <!-- header -->
        <header>
            <!-- header inner -->
            <div class="header">

                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                            <div class="full">
                                <div class="center-desk">
                                    <div class="logo">
                                        <a href="homepage"><img src="images/logo.png" alt="#"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                            <div class="menu-area">
                                <div class="limit-box">
                                    <nav class="main-menu">
                                        <ul class="menu-area-main">
                                            <li class="active"> <a href="homepage">Home</a> </li>
                                                <c:if test="${user.roll==0}">
                                                <li class="active"> <a href="manage">Manage Product</a> </li>
                                                </c:if>
                                                <c:if test="${user.roll==0}">
                                                <li class="active"> <a href="vieworder">View Order</a> </li>
                                                </c:if>
                                            <li class="active"> <a href="category">Category</a> </li>
                                            <!--<li> <a href="wishlist.jsp">WishList</a> </li>-->


                                            <li><a href="myaccount">My Account</a></li>
                                                <c:if test="${user==null}">
                                                <li><a href="login.jsp">Login</a></li>
                                                </c:if>
                                                <c:if test="${user!=null}">
                                                <li class="last">
                                                    <a href="myaccount"><img style="width: 70px" src="https://img.freepik.com/premium-vector/user-profile-login-access-authentication-icon_690577-203.jpg" alt="icon" /></a>
                                                </li>
                                            </c:if>

                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 offset-md-6">
                            <div class="location_icon_bottum">
                                <ul>
                                    <li><img src="icon/call.png" />(+71)9876543109</li>
                                    <li><img src="icon/email.png" />demo@gmail.com</li>
                                    <li><img src="icon/loc.png" />Location</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end header inner -->
        </header>
        <!-- end header -->
        <section class="slider_section">
            <div id="myCarousel" class="carousel slide banner-main" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="first-slide" src="images/banner.jpg" alt="First slide">
                        <div class="container">
                            <div class="carousel-caption relative">
                                <span>All New Phones </span>
                                <h1>up to 25% Flat Sale</h1>
                                <p>It is a long established fact that a reader will be distracted by the readable content
                                    <br> of a page when looking at its layout. The point of using Lorem Ipsum is that</p>
                                <a class="buynow" href="#">Buy Now</a>
                                <ul class="social_icon">
                                    <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                    <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li> <a href="#"><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="second-slide" src="images/banner.jpg" alt="Second slide">
                        <div class="container">
                            <div class="carousel-caption relative">
                                <span>All New Phones </span>
                                <h1>up to 25% Flat Sale</h1>
                                <p>It is a long established fact that a reader will be distracted by the readable content
                                    <br> of a page when looking at its layout. The point of using Lorem Ipsum is that</p>
                                <a class="buynow" href="#">Buy Now</a>
                                <ul class="social_icon">
                                    <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                    <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li> <a href="#"><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="third-slide" src="images/banner.jpg" alt="Third slide">
                        <div class="container">
                            <div class="carousel-caption relative">
                                <span>All New Phones </span>
                                <h1>up to 25% Flat Sale</h1>
                                <p>It is a long established fact that a reader will be distracted by the readable content
                                    <br> of a page when looking at its layout. The point of using Lorem Ipsum is that</p>
                                <a class="buynow" href="#">Buy Now</a>
                                <ul class="social_icon">
                                    <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                    <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li> <a href="#"><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                    <i class='fa fa-angle-left'></i>
                </a>
                <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                    <i class='fa fa-angle-right'></i>
                </a>
            </div>
        </section>

        <!-- about -->
        <div class="about">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-5 col-md-5 co-sm-l2">
                        <div class="about_img">
                            <figure><img src="images/about.png" alt="img" /></figure>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-7 co-sm-l2">
                        <div class="about_box">
                            <h3>About Us</h3>
                            <span>Our Mobile Shop</span>
                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of It is a long established fact that a reader will be distracted by the </p>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- end about -->

        <!-- brand -->
        <div class="brand">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">
                            <h2>Our Brand</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="brand-bg">
                <div class="container">
                    <div class="row">

                        <c:forEach items="${dao.product}" var="p" begin="0" end="5">
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 margin">
                                <div class="brand_box">
                                    <img src="${p.img}" alt="img" />
                                    <h3><strong class="red">${p.price}</strong> VND</h3>
                                    <span>${p.name}</span>
                                    <i><img src="images/star.png"/></i>
                                    <i><img src="images/star.png"/></i>
                                    <i><img src="images/star.png"/></i>
                                    <i><img src="images/star.png"/></i>
                                    <br/>
                                    <br/>
                                    <!--<a class="buynow sellproduct" href="wishlist?productID=${p.productID}&userID=${user.userID}&price=${p.price}">Add to WishList</a>-->
                                    <a class="buynow sellproduct" href="product?productID=${p.productID}">Buy Now</a>

                                </div>
                            </div>
                        </c:forEach>
                        <!--                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 margin">
                                                    <div class="brand_box">
                                                        <img src="images/2.png" alt="img" />
                                                        <h3>$<strong class="red">100</strong></h3>
                                                        <span>Mobile Phone</span>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                        <br>
                                                        <br>
                                                        <a class="buynow sellproduct" href="#">Buy Now</a>
                                                    </div>
                                                </div>
                                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 margin">
                                                    <div class="brand_box">
                                                        <img src="images/3.png" alt="img" />
                                                        <h3>$<strong class="red">100</strong></h3>
                                                        <span>Mobile Phone</span>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                    </div>
                                                </div>
                                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
                                                    <div class="brand_box">
                                                        <img src="images/4.png" alt="img" />
                                                        <h3>$<strong class="red">100</strong></h3>
                                                        <span>Mobile Phone</span>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                    </div>
                                                </div>
                                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 mrgn">
                                                    <div class="brand_box">
                                                        <img src="images/5.png" alt="img" />
                                                        <h3>$<strong class="red">100</strong></h3>
                                                        <span>Mobile Phone</span>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                    </div>
                                                </div>
                                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 mrgn">
                                                    <div class="brand_box">
                                                        <img src="images/6.png" alt="img" />
                                                        <h3>$<strong class="red">100</strong></h3>
                                                        <span>Mobile Phone</span>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                        <i><img src="images/star.png"/></i>
                                                    </div>
                                                </div>-->
                        <div class="col-md-12">
                            <a class="read-more" href="category">See More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- end brand -->
        <!-- clients -->
        <div class="clients">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">
                            <h2>what say our clients</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clients_red">
            <div class="container">
                <div id="testimonial_slider" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ul class="carousel-indicators">
                        <li data-target="#testimonial_slider" data-slide-to="0" class=""></li>
                        <li data-target="#testimonial_slider" data-slide-to="1" class="active"></li>
                        <li data-target="#testimonial_slider" data-slide-to="2" class=""></li>
                    </ul>
                    <!-- The slideshow -->
                    <div class="carousel-inner">
                        <div class="carousel-item">
                            <div class="testomonial_section">
                                <div class="full center">
                                </div>
                                <div class="full testimonial_cont text_align_center cross_layout">
                                    <div class="cross_inner">
                                        <h3>Due markes<br><strong class="ornage_color">Rental</strong></h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ess</i>
                                        </p>
                                        <div class="full text_align_center margin_top_30">
                                            <img src="icon/testimonial_qoute.png">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="carousel-item active">

                            <div class="testomonial_section">
                                <div class="full center">
                                </div>
                                <div class="full testimonial_cont text_align_center cross_layout">
                                    <div class="cross_inner">
                                        <h3>Due markes<br><strong class="ornage_color">Rental</strong></h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ess</i>
                                        </p>
                                        <div class="full text_align_center margin_top_30">
                                            <img src="icon/testimonial_qoute.png">
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="carousel-item">

                            <div class="testomonial_section">
                                <div class="full center">
                                </div>
                                <div class="full testimonial_cont text_align_center cross_layout">
                                    <div class="cross_inner">
                                        <h3>Due markes<br><strong class="ornage_color">Rental</strong></h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ess</i>
                                        </p>
                                        <div class="full text_align_center margin_top_30">
                                            <img src="icon/testimonial_qoute.png">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </div>
        <!-- end clients -->
        <!-- contact -->
        <div class="contact">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">
                            <h2>Contact us</h2>
                        </div>
                        <form class="main_form">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                    <input class="form-control" placeholder="Your name" type="text" name="Your Name">
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                    <input class="form-control" placeholder="Email" type="text" name="Email">
                                </div>
                                <div class=" col-md-12">
                                    <input class="form-control" placeholder="Phone" type="text" name="Phone">
                                </div>
                                <div class="col-md-12">
                                    <textarea class="textarea" placeholder="Message"></textarea>
                                </div>
                                <div class=" col-md-12">
                                    <button class="send">Send</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- end contact -->

        <!-- footer -->
        <footer>
            <div id="contact" class="footer">
                <div class="container">
                    <div class="row pdn-top-30">
                        <div class="col-md-12 ">
                            <div class="footer-box">
                                <div class="headinga">
                                    <h3>Address</h3>
                                    <span>Healing Center, 176 W Streetname,New York, NY 10014, US</span>
                                    <p>(+71) 8522369417
                                        <br>demo@gmail.com</p>
                                </div>
                                <ul class="location_icon">
                                    <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                    <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li> <a href="#"><i class="fa fa-instagram"></i></a></li>

                                </ul>
                                <div class="menu-bottom">
                                    <ul class="link">
                                        <li> <a href="#">Home</a></li>
                                        <li> <a href="#">About</a></li>

                                        <li> <a href="#">Brand </a></li>
                                        <li> <a href="#">Specials  </a></li>
                                        <li> <a href="#"> Contact us</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="copyright">
                    <div class="container">
                        <p>© 2019 All Rights Reserved. Design By<a href="https://html.design/"> Free Html Templates</a></p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end footer -->
        <!-- Javascript files-->
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery-3.0.0.min.js"></script>
        <script src="js/plugin.js"></script>
        <!-- sidebar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>
        <!-- javascript -->
        <script src="js/owl.carousel.js"></script>
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
        <script>
            $(document).ready(function () {
                $(".fancybox").fancybox({
                    openEffect: "none",
                    closeEffect: "none"
                });

                $(".zoom").hover(function () {

                    $(this).addClass('transition');
                }, function () {

                    $(this).removeClass('transition');
                });
            });
        </script>
    </body>

</html>