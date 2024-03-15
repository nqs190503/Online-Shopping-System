<%-- 
    Document   : product
    Created on : Oct 24, 2023, 6:09:58 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Tutorial</title>
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet">
        <!-- CSS -->
        <link href="style.css" rel="stylesheet">
        <meta name="robots" content="noindex,follow" />
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
            /* Basic Styling */
            html, body {
                height: 100%;
                width: 100%;
                margin: 0;
                font-family: 'Roboto', sans-serif;
            }

            .container {
                max-width: 1200px;
                margin: 0 auto;
                padding: 15px;
                display: flex;
            }

            /* Columns */
            .left-column {
                width: 65%;
                position: relative;
            }

            .right-column {
                width: 35%;
                margin-top: 60px;
            }


            /* Left Column */
            .left-column img {
                width: 100%;
                position: absolute;
                left: 0;
                top: 0;
                opacity: 0;
                transition: all 0.3s ease;
            }

            .left-column img.active {
                opacity: 1;
            }


            /* Right Column */

            /* Product Description */
            .product-description {
                border-bottom: 1px solid #E1E8EE;
                margin-bottom: 20px;
            }
            .product-description span {
                font-size: 12px;
                color: #358ED7;
                letter-spacing: 1px;
                text-transform: uppercase;
                text-decoration: none;
            }
            .product-description h1 {
                font-weight: 300;
                font-size: 52px;
                color: #43484D;
                letter-spacing: -2px;
            }
            .product-description p {
                font-size: 16px;
                font-weight: 300;
                color: #86939E;
                line-height: 24px;
            }

            /* Product Configuration */
            .product-color span,
            .cable-config span {
                font-size: 14px;
                font-weight: 400;
                color: #86939E;
                margin-bottom: 20px;
                display: inline-block;
            }

            /* Product Color */
            .product-color {
                margin-bottom: 30px;
            }

            .color-choose div {
                display: inline-block;
            }

            .color-choose input[type="radio"] {
                display: none;
            }

            .color-choose input[type="radio"] + label span {
                display: inline-block;
                width: 40px;
                height: 40px;
                margin: -1px 4px 0 0;
                vertical-align: middle;
                cursor: pointer;
                border-radius: 50%;
            }

            .color-choose input[type="radio"] + label span {
                border: 2px solid #FFFFFF;
                box-shadow: 0 1px 3px 0 rgba(0,0,0,0.33);
            }

            .color-choose input[type="radio"]#red + label span {
                background-color: #C91524;
            }
            .color-choose input[type="radio"]#blue + label span {
                background-color: #314780;
            }
            .color-choose input[type="radio"]#black + label span {
                background-color: #323232;
            }

            .color-choose input[type="radio"]:checked + label span {
                background-image: url(images/check-icn.svg);
                background-repeat: no-repeat;
                background-position: center;
            }

            /* Cable Configuration */
            .cable-choose {
                margin-bottom: 20px;
            }

            .cable-choose button {
                border: 2px solid #E1E8EE;
                border-radius: 6px;
                padding: 13px 20px;
                font-size: 14px;
                color: #5E6977;
                background-color: #fff;
                cursor: pointer;
                transition: all .5s;
            }

            .cable-choose button:hover,
            .cable-choose button:active,
            .cable-choose button:focus {
                border: 2px solid #86939E;
                outline: none;
            }

            .cable-config {
                border-bottom: 1px solid #E1E8EE;
                margin-bottom: 20px;
            }

            .cable-config a {
                color: #358ED7;
                text-decoration: none;
                font-size: 12px;
                position: relative;
                margin: 10px 0;
                display: inline-block;
            }
            .cable-config a:before {
                content: "?";
                height: 15px;
                width: 15px;
                border-radius: 50%;
                border: 2px solid rgba(53, 142, 215, 0.5);
                display: inline-block;
                text-align: center;
                line-height: 16px;
                opacity: 0.5;
                margin-right: 5px;
            }

            /* Product Price */
            .product-price {
                display: flex;
                align-items: center;
            }

            .product-price span {
                font-size: 26px;
                font-weight: 300;
                color: #43474D;
                margin-right: 20px;
            }

            .cart-btn {
                display: inline-block;
                background-color: #7DC855;
                border-radius: 6px;
                font-size: 16px;
                color: #FFFFFF;
                text-decoration: none;
                padding: 12px 30px;
                transition: all .5s;
            }
            .cart-btn:hover {
                background-color: #64af3d;
            }

            /* Responsive */
            @media (max-width: 940px) {
                .container {
                    flex-direction: column;
                    margin-top: 60px;
                }

                .left-column,
                .right-column {
                    width: 100%;
                }

                .left-column img {
                    width: 300px;
                    right: 0;
                    top: -65px;
                    left: initial;
                }
            }

            @media (max-width: 535px) {
                .left-column img {
                    width: 220px;
                    top: -85px;
                }
            }

        </style>
    </head>

    <body>
        <header>
            <!<header-- header inner -->
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
                                                <li class="active"> <a href="category">Category</a> </li>
                                                <li><a href="myaccount">My Account</a></li>
    <!--                                            <c:if test="${user!=null}">
                                                    <li class="last">
                                                        <a href="myaccount.jsp"><img style="width: 70px" src="https://img.freepik.com/premium-vector/user-profile-login-access-authentication-icon_690577-203.jpg" alt="icon" /></a>
                                                    </li>
                                                </c:if>-->
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
                <main class="container">

                    <!-- Left Column / Headphones Image -->
                    <div class="left-column">
                        <img data-image="black" src="${product.img_blue}" alt=""  >
                        <img data-image="blue" src="${product.img_red}" alt="">
                        <img data-image="default" class="active" src="${product.img}" alt="">
                    </div>


                    <!-- Right Column -->
                    <div class="right-column">

                        <!-- Product Description -->
                        <div class="product-description">
                            <span>Smart Phone</span>
                            <h1>${product.name} EP</h1>
                            <p>OS:${map[product.detailID].OS}</p>
                            <p>Camera:${map[product.detailID].camera}</p>
                            <p>RAM:${map[product.detailID].ram}GB</p>
                            <p>CPU:${map[product.detailID].CPU}</p>
                            <p>GPU:${map[product.detailID].GPU}</p>


                        </div>

                        <!-- Product Configuration -->
                        <div class="product-configuration">

                            <!-- Product Color -->
                            <div class="product-color">
                                <span>Color</span>

                                <div class="color-choose">
                                    <div>
                                        <input data-image="default" type="radio" id="default" name="color" value="default" checked>
                                        <label for="default"><span></span></label>
                                    </div>
                                    <div>
                                        <input data-image="blue" type="radio" id="blue" name="color" value="blue">
                                        <label for="blue"><span></span></label>
                                    </div>
                                    <div>
                                        <input data-image="black" type="radio" id="black" name="color" value="black">
                                        <label for="black"><span></span></label>
                                    </div>
                                </div>

                            </div>

                            <!-- Cable Configuration -->
                            <div class="cable-config">
                                <span>Cable configuration</span>



                                <a href="#">How to configurate your headphones</a>
                            </div>
                        </div>

                        <!-- Product Pricing -->
                        <div class="product-price">
                            <span>${product.price}$</span>
                            <a href="order?productID=${product.productID}&userID=${user.userID}" class="cart-btn">Add to cart</a>        
                        </div>
                        <br/>
                        <div class="product-price">
                            <a href="homepage"class="cart-btn">Back to home</a>
                            <span>           </span>
                            <a href="category" class="cart-btn">Category</a> 
                        </div>

                    </div>
                </main>

                <!-- Scripts -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js" charset="utf-8"></script>
                <script src="script.js" charset="utf-8"></script>
                </body>
                <script>
                    $(document).ready(function () {

                        $('.color-choose input').on('click', function () {
                            var headphonesColor = $(this).attr('data-image');

                            $('.active').removeClass('active');
                            $('.left-column img[data-image = ' + headphonesColor + ']').addClass('active');
                            $(this).addClass('active');
                        });

                    });

                </script>
                </html>

