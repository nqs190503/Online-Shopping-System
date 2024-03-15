<%-- 
    Document   : test
    Created on : Oct 20, 2023, 2:19:30 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>pomato</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- owl stylesheets -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">

        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/all.min.css">
        <style>
            /*            body {
                            background: #f8f9fa;
            
                        }*/
        </style>
    </head>
    <body>
        <header>
            <!-- header inner -->
            <div class="header">

                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                            <div class="full">
                                <div class="center-desk">
                                    <div class="logo">
                                        <a href="index.html"><img src="images/logo.png" alt="#"></a>
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
                                            <li class="active"> <a href="category">Category</a> </li>

                                            <li><a href="myaccount">My Account</a></li>
                                                <c:if test="${user==null}">
                                                <li><a href="login.jsp">Login</a></li>
                                                </c:if>
                                                <c:if test="${user!=null}">
                                                <li class="last">
                                                    <a href="myaccount.jsp"><img style="width: 70px" src="https://img.freepik.com/premium-vector/user-profile-login-access-authentication-icon_690577-203.jpg" alt="icon" /></a>
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
        <form action="category" method="post">
            <div class="container pt-5">
                <div class="row">
                    <div class="col-md-8 order-md-2 col-lg-9">
                        <div class="container-fluid">
                            <div class="row">
                                <c:forEach items="${dao.product}" var="p" begin="${p.begin}" end="${p.end-1}">
                                    <div class="col-6 col-md-6 col-lg-4 mb-3">
                                        <div class="card h-100 border-0">
                                            <div class="card-img-top">
                                                <img src="${p.img}" class="img-fluid mx-auto d-block" alt="Card image cap">
                                            </div>
                                            <div class="card-body text-center">
                                                <h4 class="card-title">
                                                    <a href="product.html" class=" font-weight-bold text-dark text-uppercase small"> ${p.name}</a>
                                                </h4>
                                                <h5 class="card-price small text-warning" style="font-size: 15px">
                                                    <i>${p.price} VND</i>
                                                </h5>
                                            </div>
                                            <a href="product?productID=${p.productID}" class="btn btn-lg btn-light">BuyNow</a>
                                            <div class="btn-group float-md-right ml-3">
                                                <!--<a href="wishlist?id=${p.productID}" class="btn btn-lg btn-light" style="width: 100px;">WishList</a>-->

                                            </div>
                                        </div>

                                    </div>
                                </c:forEach>

                            </div>
                            <div class="row sorting mb-5 mt-5">
                                <div class="col-12">
                                    <a class="btn btn-light" href="homepage">
                                        <i class="fas fa-arrow-up mr-2"></i> Back to home</a>
                                    <div class="btn-group float-md-right ml-3">
                                        <!--<button type="button" class="btn btn-lg btn-light"></button>-->
                                        <a href="category?index=${p.index-1}&nrpp=${p.nrpp}" class="btn btn-lg btn-light">←</a>
                                        <a href="category?index=${p.index+1}&nrpp=${p.nrpp}" class="btn btn-lg btn-light">→</a>
                                        <!--<button type="button" class="btn btn-lg btn-light"></button>-->
                                    </div>
                                    <!--                        <div class="dropdown float-md-right">
                                                              <label class="mr-2">View:</label>
                                                              <a class="btn btn-light btn-lg dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">12 <span class="caret"></span></a>
                                                              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                                <a class="dropdown-item" href="#">12</a>
                                                                <a class="dropdown-item" href="#">24</a>
                                                                <a class="dropdown-item" href="#">48</a>
                                                                <a class="dropdown-item" href="#">96</a>
                                                              </div>
                                                            </div>-->
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 order-md-1 col-lg-3 sidebar-filter">
                        <!--                  <h3 class="mt-0 mb-5">Showing <span class="text-primary">12</span> Products</h3>-->
                        <h6 class="text-uppercase font-weight-bold mb-3">Producer</h6>

                        <c:forEach items="${dao.producer}" var="p">
                            <div class="mt-2 mb-2 pl-2">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="${p.producerID}" name="producer" value="${p.name}">
                                    <label class="custom-control-label" for="${p.producerID}">${p.name}</label>
                                </div>
                            </div>
                        </c:forEach>        

                        <div class="divider mt-5 mb-5 border-bottom border-secondary"></div>
                        <h6 class="text-uppercase mt-5 mb-3 font-weight-bold">Ram(GB)</h6>
                        <div class="mt-2 mb-2 pl-2">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="filter-size-1" name="ram" value="6">
                                <label class="custom-control-label" for="filter-size-1">6</label>
                            </div>
                        </div>
                        <div class="mt-2 mb-2 pl-2">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="filter-size-2" name="ram" value="8">
                                <label class="custom-control-label" for="filter-size-2">8</label>
                            </div>
                        </div>
                        <div class="mt-2 mb-2 pl-2">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="filter-size-3" name="ram" value="10">
                                <label class="custom-control-label" for="filter-size-3">10</label>
                            </div>
                        </div>
                        <div class="mt-2 mb-2 pl-2">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="filter-size-4" name="ram" value="12">
                                <label class="custom-control-label" for="filter-size-4">12</label>
                            </div>
                        </div>
                        <div class="divider mt-5 mb-5 border-bottom border-secondary"></div>
                        <h6 class="text-uppercase mt-5 mb-3 font-weight-bold">Price</h6>
                        <div class="price-filter-control">
                            <input type="number" class="form-control w-50 pull-left mb-2" value="0" id="price-min-control" name="price">
                            <input type="number" class="form-control w-50 pull-right" value="50000000" id="price-max-control" name="price">
                        </div>
                        <input id="ex2" type="text" class="slider " value="0,50000000" data-slider-min="10" data-slider-max="50000000" data-slider-step="5" data-slider-value="[0,50000000]" data-value="0,50000000" style="display: none;">
                        <div class="divider mt-5 mb-5 border-bottom border-secondary"></div>
                        <!--<a href="category" class="btn btn-lg btn-block btn-primary mt-5"></a>-->
                        <input type="submit" value="Update Results" class="btn btn-lg btn-block btn-primary mt-5">
                    </div>

                </div>
            </div>
        </form>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery-3.3.1.slim.min.js"></script>
    </body>
</html>
