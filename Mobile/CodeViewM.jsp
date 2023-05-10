
<!DOCTYPE html>
<html lang="en">
    <%@page import="java.sql.ResultSet" %>
    <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta http-equiv="x-ua-compatible" content="ie=edge">

            <title> Code Geeks | Codeview</title>

            <link rel="icon" type="image/png" href="../Assets/Template/friendkit/assets/img/favicon.png" />

            <!-- Google Tag Manager -->
            <script>
                (function(w, d, s, l, i) {
                    w[l] = w[l] || [];
                    w[l].push({
                        'gtm.start': new Date().getTime(),
                        event: 'gtm.js'
                    });
                    var f = d.getElementsByTagName(s)[0],
                            j = d.createElement(s),
                            dl = l != 'dataLayer' ? '&l=' + l : '';
                    j.async = true;
                    j.src =
                            'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                    f.parentNode.insertBefore(j, f);
                })(window, document, 'script', 'dataLayer', 'GTM-KQHJPZP');
            </script>
            <style>
                .CodeMirror {
                    height: 100px;
                    display: block;
                }
                html {
                    overflow:   scroll;
                }

                ::-webkit-scrollbar {
                    width: 0px;
                    background: transparent; /* make scrollbar transparent */
                }
                iframe{
                    width: 344px;
                    height: 200px;
                }
            </style>
            <style>

                .search-box {
                    margin-left: 8px;
                    position: relative;
                    top: 11%;
                    left: 49%;
                    transform: translate(-50%, -50%);
                    background: #0099ff2e;
                    height: 58px;
                    border-radius: 40px;
                    padding: 10px;
                    margin-top: 30px;
                }



                .search-box:hover > .search-text{
                    width: 240px;
                    padding: 09px;
                }

                .search-box:hover > .search-btn{
                    background: white;
                    color: #982aff;

                }

                .search-btn {
                    color: black;
                    float: right;
                    width: 40px;
                    height: 40px;
                    border-radius: 50%;
                    background: white;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    transition: 0.4s;
                    cursor: pointer;
                    text-decoration: none;

                }
                .search-btn > i {
                    fontsize: 30px;
                }

                .search-text {
                    border: none;
                    background: none;
                    outline: none;
                    float: left;
                    padding: 0;
                    color: white;
                    font-size: 16px;
                    font-weight: normal;
                    transition: 0.4s;
                    line-height: 15px;
                    width: 0px;

                    /*   width: 250px; */



                }
                .sliderstyle {
                    color:#0099ff;
                    font-weight: 700;
                    margin-top: 30px!important;
                    font-size: 23px;
                }
                .optionsa {
                    color:black;
                    font-weight: 300;
                    margin-top: 30px!important;
                    font-size: 23px;
                    padding-left: 250px;
                    padding-right: 250px;
                    padding-top: 85px;
                    padding-bottom: 50px;
                }



            </style>
            <!-- End Google Tag Manager -->

            <!-- Fonts -->
            <link href="https://fonts.googleapis.com/css?family=Montserrat:600,700,800,900" rel="stylesheet">
            <link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
            <link href="https://cdn.jsdelivr.net/npm/fontisto@v3.0.4/css/fontisto/fontisto-brands.min.css" rel="stylesheet">
            <!-- Core CSS -->
            <link rel="stylesheet" href="../Assets/Template/friendkit/assets/css/app.css">
            <link rel="stylesheet" href="../Assets/Template/friendkit/assets/css/core.css">




        </head>

        <body style="overflow: hidden; ">
            <!--queries start-->
        <%
            String selu = "select * from tbl_user where user_id='" + session.getAttribute("uid") + "'";
            //System.out.println(selc);
            ResultSet rsu = con.selectCommand(selu);
            rsu.next();
        %>
        <!--queries end--> 
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KQHJPZP" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->

        <!-- Pageloader -->
        <div class="pageloader"></div>
        <div class="infraloader is-active"></div>
        <div class="app-overlay"></div>

        <div id="main-navbar" class="navbar navbar-v1 is-inline-flex is-transparent no-shadow is-hidden-mobile">
            <div class="container is-fluid">
                <div class="navbar-brand">
                    <a href="HomePage.jsp" class="navbar-item">
                        <img class="logo light-image" src="../Assets/Files/Posters/codebg.png" width="112" height="28" alt="">
                        <img class="logo dark-image" src="../Assets/Files/Posters/codebg.png" width="112" height="28" alt="">
                    </a>
                </div>
                <div class="navbar-menu">
                    <div class="navbar-start">
                        <!-- Navbar Search -->

                        <!--                        <div class="navbar-item is-icon drop-trigger">
                                                    <a class="icon-link is-friends" href="javascript:void(0);">
                                                        <i data-feather="heart"></i>
                                                        <span class="indicator"></span>
                                                    </a>
                        
                                                    <div class="nav-drop">
                                                        <div class="inner">
                                                            <div class="nav-drop-header">
                                                                <span>Friend requests</span>
                                                                <a href="#">
                                                                    <i data-feather="search"></i>
                                                                </a>
                                                            </div>
                                                            <div class="nav-drop-body is-friend-requests">
                                                                 Friend request 
                                                                <div class="media">
                                                                    <figure class="media-left">
                                                                        <p class="image">
                                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/bobby.jpg" alt="">
                                                                        </p>
                                                                    </figure>
                                                                    <div class="media-content">
                                                                        <a href="#">Bobby Brown</a>
                                                                        <span>Najeel verwick is a common friend</span>
                                                                    </div>
                                                                    <div class="media-right">
                                                                        <button class="button icon-button is-solid grey-button raised">
                                                                            <i data-feather="user-plus"></i>
                                                                        </button>
                                                                        <button class="button icon-button is-solid grey-button raised">
                                                                            <i data-feather="user-minus"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                                 Friend request 
                                                                <div class="media">
                                                                    <figure class="media-left">
                                                                        <p class="image">
                                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/dan.jpg" alt="">
                                                                        </p>
                                                                    </figure>
                                                                    <div class="media-content">
                                                                        <a href="#">Dan Walker</a>
                                                                        <span>You have 4 common friends</span>
                                                                    </div>
                                                                    <div class="media-right">
                                                                        <button class="button icon-button is-solid grey-button raised">
                                                                            <i data-feather="user-plus"></i>
                                                                        </button>
                                                                        <button class="button icon-button is-solid grey-button raised">
                                                                            <i data-feather="user-minus"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                                 Friend request 
                                                                <div class="media">
                                                                    <figure class="media-left">
                                                                        <p class="image">
                                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/nelly.png" alt="">
                                                                        </p>
                                                                    </figure>
                                                                    <div class="media-content">
                                                                        <span>You are now friends with <a href="#">Nelly Schwartz</a>. Check her <a href="#">profile</a>.</span>
                                                                    </div>
                                                                    <div class="media-right">
                                                                        <div class="added-icon">
                                                                            <i data-feather="tag"></i>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                 Friend request 
                                                                <div class="media">
                                                                    <figure class="media-left">
                                                                        <p class="image">
                                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" alt="">
                                                                        </p>
                                                                    </figure>
                                                                    <div class="media-content">
                                                                        <a href="#">Milly Augustine</a>
                                                                        <span>You have 8 common friends</span>
                                                                    </div>
                                                                    <div class="media-right">
                                                                        <button class="button icon-button is-solid grey-button raised">
                                                                            <i data-feather="user-plus"></i>
                                                                        </button>
                                                                        <button class="button icon-button is-solid grey-button raised">
                                                                            <i data-feather="user-minus"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                                 Friend request 
                                                                <div class="media">
                                                                    <figure class="media-left">
                                                                        <p class="image">
                                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/elise.jpg" alt="">
                                                                        </p>
                                                                    </figure>
                                                                    <div class="media-content">
                                                                        <span>You are now friends with <a href="#">Elise Walker</a>. Check her <a href="#">profile</a>.</span>
                                                                    </div>
                                                                    <div class="media-right">
                                                                        <div class="added-icon">
                                                                            <i data-feather="tag"></i>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                 Friend request 
                                                                <div class="media">
                                                                    <figure class="media-left">
                                                                        <p class="image">
                                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/edward.jpeg" alt="">
                                                                        </p>
                                                                    </figure>
                                                                    <div class="media-content">
                                                                        <span>You are now friends with <a href="#">Edward Mayers</a>. Check his <a href="#">profile</a>.</span>
                                                                    </div>
                                                                    <div class="media-right">
                                                                        <div class="added-icon">
                                                                            <i data-feather="tag"></i>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="nav-drop-footer">
                                                                <a href="#">View All</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>-->
                        <!--                        <div class="navbar-item is-icon drop-trigger">
                                                    <a class="icon-link" href="javascript:void(0);">
                                                        <i data-feather="bell"></i>
                                                        <span class="indicator"></span>
                                                    </a>
                        
                                                    <div class="nav-drop">
                                                        <div class="inner">
                                                            <div class="nav-drop-header">
                                                                <span>Notifications</span>
                                                                <a href="#">
                                                                    <i data-feather="bell"></i>
                                                                </a>
                                                            </div>
                                                            <div class="nav-drop-body is-notifications">
                                                                 Notification 
                                                                <div class="media">
                                                                    <figure class="media-left">
                                                                        <p class="image">
                                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/david.jpg" alt="">
                                                                        </p>
                                                                    </figure>
                                                                    <div class="media-content">
                                                                        <span><a href="#">David Kim</a> commented on <a href="#">your post</a>.</span>
                                                                        <span class="time">30 minutes ago</span>
                                                                    </div>
                                                                    <div class="media-right">
                                                                        <div class="added-icon">
                                                                            <i data-feather="message-square"></i>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                 Notification 
                                                                <div class="media">
                                                                    <figure class="media-left">
                                                                        <p class="image">
                                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/daniel.jpg" alt="">
                                                                        </p>
                                                                    </figure>
                                                                    <div class="media-content">
                                                                        <span><a href="#">Daniel Wellington</a> liked your <a href="#">profile.</a></span>
                                                                        <span class="time">43 minutes ago</span>
                                                                    </div>
                                                                    <div class="media-right">
                                                                        <div class="added-icon">
                                                                            <i data-feather="heart"></i>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                 Notification 
                                                                <div class="media">
                                                                    <figure class="media-left">
                                                                        <p class="image">
                                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/stella.jpg" alt="">
                                                                        </p>
                                                                    </figure>
                                                                    <div class="media-content">
                                                                        <span><a href="#">Stella Bergmann</a> shared a <a href="#">New video</a> on your wall.</span>
                                                                        <span class="time">Yesterday</span>
                                                                    </div>
                                                                    <div class="media-right">
                                                                        <div class="added-icon">
                                                                            <i data-feather="youtube"></i>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                 Notification 
                                                                <div class="media">
                                                                    <figure class="media-left">
                                                                        <p class="image">
                                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/elise.jpg" alt="">
                                                                        </p>
                                                                    </figure>
                                                                    <div class="media-content">
                                                                        <span><a href="#">Elise Walker</a> shared an <a href="#">Image</a> with you an 2 other people.</span>
                                                                        <span class="time">2 days ago</span>
                                                                    </div>
                                                                    <div class="media-right">
                                                                        <div class="added-icon">
                                                                            <i data-feather="image"></i>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="nav-drop-footer">
                                                                <a href="#">View All</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="navbar-item is-icon drop-trigger">
                                                    <a class="icon-link is-active" href="javascript:void(0);">
                                                        <i data-feather="mail"></i>
                                                        <span class="indicator"></span>
                                                    </a>
                        
                                                    <div class="nav-drop">
                                                        <div class="inner">
                                                            <div class="nav-drop-header">
                                                                <span>Messages</span>
                                                                <a href="messages-inbox.html">Inbox</a>
                                                            </div>
                                                            <div class="nav-drop-body is-friend-requests">
                                                                 Message 
                                                                <div class="media">
                                                                    <figure class="media-left">
                                                                        <p class="image">
                                                                            <img src="https://via.placeholder.com/150x150" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/nelly.png" data-user-popover="9" alt="">
                                                                        </p>
                                                                    </figure>
                                                                    <div class="media-content">
                                                                        <a href="#">Nelly Schwartz</a>
                                                                        <span>I think we should meet near the Starbucks so we can get...</span>
                                                                        <span class="time">Yesterday</span>
                                                                    </div>
                                                                    <div class="media-right is-centered">
                                                                        <div class="added-icon">
                                                                            <i data-feather="message-square"></i>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                 Message 
                                                                <div class="media">
                                                                    <figure class="media-left">
                                                                        <p class="image">
                                                                            <img src="https://via.placeholder.com/150x150" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/edward.jpeg" data-user-popover="5" alt="">
                                                                        </p>
                                                                    </figure>
                                                                    <div class="media-content">
                                                                        <a href="#">Edward Mayers</a>
                                                                        <span>That was a real pleasure seeing you last time we really should...</span>
                                                                        <span class="time">last week</span>
                                                                    </div>
                                                                    <div class="media-right is-centered">
                                                                        <div class="added-icon">
                                                                            <i data-feather="message-square"></i>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                 Message 
                                                                <div class="media">
                                                                    <figure class="media-left">
                                                                        <p class="image">
                                                                            <img src="https://via.placeholder.com/150x150" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/dan.jpg" data-user-popover="1" alt="">
                                                                        </p>
                                                                    </figure>
                                                                    <div class="media-content">
                                                                        <a href="#">Dan Walker</a>
                                                                        <span>Hey there, would it be possible to borrow your bicycle, i really need...</span>
                                                                        <span class="time">Jun 03 2018</span>
                                                                    </div>
                                                                    <div class="media-right is-centered">
                                                                        <div class="added-icon">
                                                                            <i data-feather="message-square"></i>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="nav-drop-footer">
                                                                <a href="#">Clear All</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>-->
                        <!--                        <div class="navbar-item is-icon open-chat">
                                                    <a class="icon-link is-primary" href="javascript:void(0);">
                                                        <i data-feather="message-square"></i>
                                                        <span class="indicator"></span>
                                                    </a>
                                                </div>-->

                        <div id="explorer-trigger" class="navbar-item is-icon">
                            <a class="icon-link is-primary">
                                <i class="mdi mdi-apps"></i>
                            </a>
                        </div>
                    </div>

                    <div class="navbar-end">

                        <div class="navbar-item">

                            <!--                            <div id="global-search" class="control">
                                                            <input id="tipue_drop_input" class="input is-rounded" type="text" placeholder="Search" onkeyup="getSug(this)" required>
                                                            <span id="clear-search" class="reset-search">
                                                                <i data-feather="x"></i>
                                                            </span>
                                                            <span class="search-icon">
                                                                <i data-feather="search"></i>
                                                            </span>
                            
                                                            <div id="tipue_drop_content" class="tipue-drop-content">
                            
                                                            </div>
                                                        </div>-->   

                        </div>
                        <!--<div class="navbar-item is-cart">-->
                        <!--                            <div class="cart-button">
                                                        <i data-feather="shopping-cart"></i>
                                                        <div class="cart-count">
                                                        </div>
                                                    </div>-->

                        <!-- Cart dropdown -->
                        <!--                            <div class="shopping-cart">
                                                        <div class="cart-inner">
                        
                                                            Loader
                                                            <div class="navbar-cart-loader is-active">
                                                                <div class="loader is-loading"></div>
                                                            </div>
                        
                                                            <div class="shopping-cart-header">
                                                                <a href="/ecommerce-cart.html" class="cart-link">View Cart</a>
                                                                <div class="shopping-cart-total">
                                                                    <span class="lighter-text">Total:</span>
                                                                    <span class="main-color-text">$193.00</span>
                                                                </div>
                                                            </div>
                                                            end shopping-cart-header 
                        
                                                            <ul class="shopping-cart-items">
                                                                <li class="cart-row">
                                                                    <img src="../Assets/Template/friendkit/assets/img/products/2.svg" alt="" />
                                                                    <span class="item-meta">
                                                                        <span class="item-name">Cool Shirt</span>
                                                                        <span class="meta-info">
                                                                            <span class="item-price">$29.00</span>
                                                                            <span class="item-quantity">Qty: 01</span>
                                                                        </span>
                                                                    </span>
                                                                </li>
                        
                                                                <li class="cart-row">
                                                                    <img src="../Assets/Template/friendkit/assets/img/products/3.svg" alt="" />
                                                                    <span class="item-meta">
                                                                        <span class="item-name">Military Short</span>
                                                                        <span class="meta-info">
                                                                            <span class="item-price">$39.00</span>
                                                                            <span class="item-quantity">Qty: 01</span>
                                                                        </span>
                                                                    </span>
                                                                </li>
                        
                                                                <li class="cart-row">
                                                                    <img src="../Assets/Template/friendkit/assets/img/products/4.svg" alt="" />
                                                                    <span class="item-meta">
                                                                        <span class="item-name">Cool Backpack</span>
                                                                        <span class="meta-info">
                                                                            <span class="item-price">$125.00</span>
                                                                            <span class="item-quantity">Qty: 01</span>
                                                                        </span>
                                                                    </span>
                                                                </li>
                                                            </ul>
                        
                                                            <a href="#" class="button primary-button is-raised">Checkout</a>
                                                        </div>
                                                    </div>-->
                        <!--</div>-->
                        <div id="account-dropdown" class="navbar-item is-account drop-trigger has-caret">
                            <div class="user-image">
                                <img src="<%=rsu.getString("user_photo")%>"  alt="">
                                <span class="indicator"></span>
                            </div>

                            <div class="nav-drop is-account-dropdown">
                                <div class="inner">
                                    <div class="nav-drop-header">
                                        <span class="username">visibility mode</span>
                                        <label class="theme-toggle">
                                            <input type="checkbox">
                                            <span class="toggler">
                                                <span class="dark">
                                                    <i data-feather="moon"></i>
                                                </span>
                                                <span class="light">
                                                    <i data-feather="sun"></i>
                                                </span>
                                            </span>
                                        </label>
                                    </div>
                                    <div class="nav-drop-body account-items">
                                        <a id="profile-link" href="UserSettings.jsp" class="account-item">
                                            <div class="media">
                                                <div class="media-left">
                                                    <div class="image">
                                                        <img src="<%=rsu.getString("user_photo")%>" alt="">
                                                    </div>
                                                </div>
                                                <div class="media-content">
                                                    <h3><%=rsu.getString("user_name")%></h3>
                                                    <small>Main account</small>
                                                </div>
                                                <div class="media-right">
                                                    <i data-feather="check"></i>
                                                </div>
                                            </div>
                                        </a>
                                        <!--<hr class="account-divider">-->
                                        <!--                                        <a href="/pages-main.html" class="account-item">
                                                                                    <div class="media">
                                                                                        <div class="media-left">
                                                                                            <div class="image">
                                                                                                <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/hanzo.svg" alt="">
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="media-content">
                                                                                            <h3>Css Ninja</h3>
                                                                                            <small>Company page</small>
                                                                                        </div>
                                                                                        <div class="media-right is-hidden">
                                                                                            <i data-feather="check"></i>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>-->
                                        <!--                                        <a href="/pages-main.html" class="account-item">
                                                                                    <div class="media">
                                                                                        <div class="media-left">
                                                                                            <div class="image">
                                                                                                <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/icons/logos/fastpizza.svg" alt="">
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="media-content">
                                                                                            <h3>Fast Pizza</h3>
                                                                                            <small>Company page</small>
                                                                                        </div>
                                                                                        <div class="media-right is-hidden">
                                                                                            <i data-feather="check"></i>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>-->
                                        <!--                                        <a href="/pages-main.html" class="account-item">
                                                                                    <div class="media">
                                                                                        <div class="media-left">
                                                                                            <div class="image">
                                                                                                <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/icons/logos/slicer.svg" alt="">
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="media-content">
                                                                                            <h3>Slicer</h3>
                                                                                            <small>Company page</small>
                                                                                        </div>
                                                                                        <div class="media-right is-hidden">
                                                                                            <i data-feather="check"></i>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>-->
                                        <!--<hr class="account-divider">-->
                                        <!--                                        <a href="/options-settings.html" class="account-item">
                                                                                    <div class="media">
                                                                                        <div class="icon-wrap">
                                                                                            <i data-feather="settings"></i>
                                                                                        </div>
                                                                                        <div class="media-content">
                                                                                            <h3>Settings</h3>
                                                                                            <small>Access widget settings.</small>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>-->
                                        <!--                                        <a class="account-item">
                                                                                    <div class="media">
                                                                                        <div class="icon-wrap">
                                                                                            <i data-feather="life-buoy"></i>
                                                                                        </div>
                                                                                        <div class="media-content">
                                                                                            <h3>Help</h3>
                                                                                            <small>Contact our support.</small>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>-->
                                        <a class="account-item" href="../logout.jsp">
                                            <div class="media">
                                                <div class="icon-wrap">
                                                    <i data-feather="power"></i>
                                                </div>
                                                <div class="media-content">
                                                    <h3>Log out</h3>
                                                    <small>Log out from your account.</small>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <nav class="navbar mobile-navbar is-hidden-desktop" aria-label="main navigation">
            <!-- Brand -->
            <div class="navbar-brand">
                <a class="navbar-item" href="/">
                    <img class="light-image" src="../Assets/Files/Posters/codebg.png" alt="">
                    <img class="dark-image" src="../Assets/Files/Posters/codebg.png" alt="">
                </a>
                <!--
                                <div class="navbar-item is-icon drop-trigger">
                                    <a class="icon-link is-friends" href="javascript:void(0);">
                                        <i data-feather="heart"></i>
                                        <span class="indicator"></span>
                                    </a>
                
                                    <div class="nav-drop">
                                        <div class="inner">
                                            <div class="nav-drop-header">
                                                <span>Friend requests</span>
                                                <a href="#">
                                                    <i data-feather="search"></i>
                                                </a>
                                            </div>
                                            <div class="nav-drop-body is-friend-requests">
                                                 Friend request 
                                                <div class="media">
                                                    <figure class="media-left">
                                                        <p class="image">
                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/bobby.jpg" alt="">
                                                        </p>
                                                    </figure>
                                                    <div class="media-content">
                                                        <a href="#">Bobby Brown</a>
                                                        <span>Najeel verwick is a common friend</span>
                                                    </div>
                                                    <div class="media-right">
                                                        <button class="button icon-button is-solid grey-button raised">
                                                            <i data-feather="user-plus"></i>
                                                        </button>
                                                        <button class="button icon-button is-solid grey-button raised">
                                                            <i data-feather="user-minus"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                                 Friend request 
                                                <div class="media">
                                                    <figure class="media-left">
                                                        <p class="image">
                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/dan.jpg" alt="">
                                                        </p>
                                                    </figure>
                                                    <div class="media-content">
                                                        <a href="#">Dan Walker</a>
                                                        <span>You have 4 common friends</span>
                                                    </div>
                                                    <div class="media-right">
                                                        <button class="button icon-button is-solid grey-button raised">
                                                            <i data-feather="user-plus"></i>
                                                        </button>
                                                        <button class="button icon-button is-solid grey-button raised">
                                                            <i data-feather="user-minus"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                                 Friend request 
                                                <div class="media">
                                                    <figure class="media-left">
                                                        <p class="image">
                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/nelly.png" alt="">
                                                        </p>
                                                    </figure>
                                                    <div class="media-content">
                                                        <span>You are now friends with <a href="#">Nelly Schwartz</a>. Check her <a href="#">profile</a>.</span>
                                                    </div>
                                                    <div class="media-right">
                                                        <div class="added-icon">
                                                            <i data-feather="tag"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                                 Friend request 
                                                <div class="media">
                                                    <figure class="media-left">
                                                        <p class="image">
                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" alt="">
                                                        </p>
                                                    </figure>
                                                    <div class="media-content">
                                                        <a href="#">Milly Augustine</a>
                                                        <span>You have 8 common friends</span>
                                                    </div>
                                                    <div class="media-right">
                                                        <button class="button icon-button is-solid grey-button raised">
                                                            <i data-feather="user-plus"></i>
                                                        </button>
                                                        <button class="button icon-button is-solid grey-button raised">
                                                            <i data-feather="user-minus"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                                 Friend request 
                                                <div class="media">
                                                    <figure class="media-left">
                                                        <p class="image">
                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/elise.jpg" alt="">
                                                        </p>
                                                    </figure>
                                                    <div class="media-content">
                                                        <span>You are now friends with <a href="#">Elise Walker</a>. Check her <a href="#">profile</a>.</span>
                                                    </div>
                                                    <div class="media-right">
                                                        <div class="added-icon">
                                                            <i data-feather="tag"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                                 Friend request 
                                                <div class="media">
                                                    <figure class="media-left">
                                                        <p class="image">
                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/edward.jpeg" alt="">
                                                        </p>
                                                    </figure>
                                                    <div class="media-content">
                                                        <span>You are now friends with <a href="#">Edward Mayers</a>. Check his <a href="#">profile</a>.</span>
                                                    </div>
                                                    <div class="media-right">
                                                        <div class="added-icon">
                                                            <i data-feather="tag"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="nav-drop-footer">
                                                <a href="#">View All</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="navbar-item is-icon drop-trigger">
                                    <a class="icon-link" href="javascript:void(0);">
                                        <i data-feather="bell"></i>
                                        <span class="indicator"></span>
                                    </a>
                
                                    <div class="nav-drop">
                                        <div class="inner">
                                            <div class="nav-drop-header">
                                                <span>Notifications</span>
                                                <a href="#">
                                                    <i data-feather="bell"></i>
                                                </a>
                                            </div>
                                            <div class="nav-drop-body is-notifications">
                                                 Notification 
                                                <div class="media">
                                                    <figure class="media-left">
                                                        <p class="image">
                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/david.jpg" alt="">
                                                        </p>
                                                    </figure>
                                                    <div class="media-content">
                                                        <span><a href="#">David Kim</a> commented on <a href="#">your post</a>.</span>
                                                        <span class="time">30 minutes ago</span>
                                                    </div>
                                                    <div class="media-right">
                                                        <div class="added-icon">
                                                            <i data-feather="message-square"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                                 Notification 
                                                <div class="media">
                                                    <figure class="media-left">
                                                        <p class="image">
                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/daniel.jpg" alt="">
                                                        </p>
                                                    </figure>
                                                    <div class="media-content">
                                                        <span><a href="#">Daniel Wellington</a> liked your <a href="#">profile.</a></span>
                                                        <span class="time">43 minutes ago</span>
                                                    </div>
                                                    <div class="media-right">
                                                        <div class="added-icon">
                                                            <i data-feather="heart"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                                 Notification 
                                                <div class="media">
                                                    <figure class="media-left">
                                                        <p class="image">
                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/stella.jpg" alt="">
                                                        </p>
                                                    </figure>
                                                    <div class="media-content">
                                                        <span><a href="#">Stella Bergmann</a> shared a <a href="#">New video</a> on your wall.</span>
                                                        <span class="time">Yesterday</span>
                                                    </div>
                                                    <div class="media-right">
                                                        <div class="added-icon">
                                                            <i data-feather="youtube"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                                 Notification 
                                                <div class="media">
                                                    <figure class="media-left">
                                                        <p class="image">
                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/elise.jpg" alt="">
                                                        </p>
                                                    </figure>
                                                    <div class="media-content">
                                                        <span><a href="#">Elise Walker</a> shared an <a href="#">Image</a> with you an 2 other people.</span>
                                                        <span class="time">2 days ago</span>
                                                    </div>
                                                    <div class="media-right">
                                                        <div class="added-icon">
                                                            <i data-feather="image"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="nav-drop-footer">
                                                <a href="#">View All</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="navbar-item is-icon drop-trigger">
                                    <a class="icon-link is-active" href="javascript:void(0);">
                                        <i data-feather="mail"></i>
                                        <span class="indicator"></span>
                                    </a>
                
                                    <div class="nav-drop">
                                        <div class="inner">
                                            <div class="nav-drop-header">
                                                <span>Messages</span>
                                                <a href="messages-inbox.html">Inbox</a>
                                            </div>
                                            <div class="nav-drop-body is-friend-requests">
                                                 Message 
                                                <div class="media">
                                                    <figure class="media-left">
                                                        <p class="image">
                                                            <img src="https://via.placeholder.com/150x150" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/nelly.png" data-user-popover="9" alt="">
                                                        </p>
                                                    </figure>
                                                    <div class="media-content">
                                                        <a href="#">Nelly Schwartz</a>
                                                        <span>I think we should meet near the Starbucks so we can get...</span>
                                                        <span class="time">Yesterday</span>
                                                    </div>
                                                    <div class="media-right is-centered">
                                                        <div class="added-icon">
                                                            <i data-feather="message-square"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                                 Message 
                                                <div class="media">
                                                    <figure class="media-left">
                                                        <p class="image">
                                                            <img src="https://via.placeholder.com/150x150" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/edward.jpeg" data-user-popover="5" alt="">
                                                        </p>
                                                    </figure>
                                                    <div class="media-content">
                                                        <a href="#">Edward Mayers</a>
                                                        <span>That was a real pleasure seeing you last time we really should...</span>
                                                        <span class="time">last week</span>
                                                    </div>
                                                    <div class="media-right is-centered">
                                                        <div class="added-icon">
                                                            <i data-feather="message-square"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                                 Message 
                                                <div class="media">
                                                    <figure class="media-left">
                                                        <p class="image">
                                                            <img src="https://via.placeholder.com/150x150" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/dan.jpg" data-user-popover="1" alt="">
                                                        </p>
                                                    </figure>
                                                    <div class="media-content">
                                                        <a href="#">Dan Walker</a>
                                                        <span>Hey there, would it be possible to borrow your bicycle, i really need...</span>
                                                        <span class="time">Jun 03 2018</span>
                                                    </div>
                                                    <div class="media-right is-centered">
                                                        <div class="added-icon">
                                                            <i data-feather="message-square"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="nav-drop-footer">
                                                <a href="#">Clear All</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                -->                            <div id="mobile-explorer-trigger" class="navbar-item is-icon">
                    <a class="icon-link is-primary">
                        <i class="mdi mdi-apps"></i>
                    </a>
                </div><!--

                <div id="open-mobile-search" class="navbar-item is-icon">
                    <a class="icon-link is-primary" href="javascript:void(0);">
                        <i data-feather="search"></i>
                    </a>
                </div>

                 Mobile menu toggler icon 
                -->                            <div class="navbar-burger">
                    <span></span>
                    <span></span>
                    <span></span>
                </div><!--
                --></div>
            <!-- Navbar mobile menu -->
            <div class="navbar-menu">
                <!-- Account -->
                <div class="navbar-item has-dropdown is-active">
                    <a href="/navbar-v1-profile-main.html" class="navbar-link">
                        <img src="https://via.placeholder.com/150x150" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                        <span class="is-heading">Jenna Davis</span>
                    </a>

                    <!-- Mobile Dropdown -->
                    <div class="navbar-dropdown">
                        <a href="/navbar-v1-feed.html" class="navbar-item is-flex is-mobile-icon">
                            <span><i data-feather="activity"></i>Feed</span>
                            <span class="menu-badge">87</span>
                        </a>
                        <a href="/navbar-v1-videos-home-v2.html" class="navbar-item is-flex is-mobile-icon">
                            <span><i data-feather="play-circle"></i>Watch</span>
                            <span class="menu-badge">21</span>
                        </a>
                        <a href="/navbar-v1-profile-friends.html" class="navbar-item is-flex is-mobile-icon">
                            <span><i data-feather="heart"></i>Friend Requests</span>
                            <span class="menu-badge">3</span>
                        </a>
                        <a href="/navbar-v1-profile-main.html" class="navbar-item is-flex is-mobile-icon">
                            <span><i data-feather="user"></i>Profile</span>
                        </a>
                        <a href="/navbar-v1-ecommerce-cart.html" class="navbar-item is-flex is-mobile-icon">
                            <span><i data-feather="shopping-cart"></i>Cart</span>
                            <span class="menu-badge">3</span>
                        </a>
                        <a href="#" class="navbar-item is-flex is-mobile-icon">
                            <span><i data-feather="bookmark"></i>Bookmarks</span>
                        </a>
                    </div>
                </div>

                <!-- More -->
                <div class="navbar-item has-dropdown">
                    <a href="/navbar-v1-settings.html" class="navbar-link">
                        <i data-feather="user"></i>
                        <span class="is-heading">Account</span>
                    </a>

                    <!-- Mobile Dropdown -->
                    <div class="navbar-dropdown">
                        <a href="#" class="navbar-item is-flex is-mobile-icon">
                            <span><i data-feather="life-buoy"></i>Support</span>
                        </a>
                        <a href="/navbar-v1-settings.html" class="navbar-item is-flex is-mobile-icon">
                            <span><i data-feather="settings"></i>Settings</span>
                        </a>
                        <a href="#" class="navbar-item is-flex is-mobile-icon">
                            <span><i data-feather="log-out"></i>Logout</span>
                        </a>
                    </div>
                </div>
            </div>
            <!--Search-->
            <div class="mobile-search is-hidden">
                <div class="control">
                    <input id="tipue_drop_input_mobile" class="input" placeholder="Search...">
                    <div class="form-icon">
                        <i data-feather="search"></i>
                    </div>
                    <div class="close-icon">
                        <i data-feather="x"></i>
                    </div>
                    <div id="tipue_drop_content_mobile" class="tipue-drop-content"></div>
                </div>
            </div>
        </nav>
        <div class="view-wrapper">

            <!-- Container -->
            <div id="main-feed" class="container">

                <!-- Content placeholders at page load -->
                <!-- /html/partials/global/placeload/feed-page/feed-menu-shadow-dom.html -->
                <!-- this holds the animated content placeholders that show up before content -->
                <div id="shadow-dom" class="view-wrap">
                    <div class="columns">

                        <div class="column is-3">

                            <!-- /html/partials/global/placeload/placeloads/questions-menu-placeload.html -->
                            <div class="placeload is-bold questions-menu-placeload">
                                <div class="inner-wrap">
                                    <div class="content-shape loads"></div>
                                    <div class="content-shape loads"></div>
                                    <div class="content-shape loads"></div>
                                    <div class="content-shape loads"></div>
                                </div>
                            </div>

                        </div>

                        <div class="column is-6">

                            <!-- Placeload element -->
                            <div class="placeload compose-placeload">
                                <div class="header">
                                    <div class="content-shape is-lg loads"></div>
                                    <div class="content-shape is-lg loads"></div>
                                    <div class="content-shape is-lg loads"></div>
                                </div>
                                <div class="body">
                                    <div class="img loads"></div>
                                    <div class="inner-wrap">
                                        <div class="content-shape loads"></div>
                                        <div class="content-shape loads"></div>
                                    </div>
                                </div>
                            </div>
                            <!-- Placeload element -->
                            <div class="placeload post-placeload">
                                <div class="header">
                                    <div class="img loads"></div>
                                    <div class="header-content">
                                        <div class="content-shape loads"></div>
                                        <div class="content-shape loads"></div>
                                    </div>
                                </div>
                                <div class="image-placeholder loads"></div>
                                <div class="placeholder-footer">
                                    <div class="footer-block">
                                        <div class="img loads"></div>
                                        <div class="inner-wrap">
                                            <div class="content-shape loads"></div>
                                            <div class="content-shape loads"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Placeload element -->
                            <div class="placeload post-placeload">
                                <div class="header">
                                    <div class="img loads"></div>
                                    <div class="header-content">
                                        <div class="content-shape loads"></div>
                                        <div class="content-shape loads"></div>
                                    </div>
                                </div>
                                <div class="image-placeholder loads"></div>
                                <div class="placeholder-footer">
                                    <div class="footer-block">
                                        <div class="img loads"></div>
                                        <div class="inner-wrap">
                                            <div class="content-shape loads"></div>
                                            <div class="content-shape loads"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Placeload element -->
                            <div class="placeload post-placeload">
                                <div class="header">
                                    <div class="img loads"></div>
                                    <div class="header-content">
                                        <div class="content-shape loads"></div>
                                        <div class="content-shape loads"></div>
                                    </div>
                                </div>
                                <div class="image-placeholder loads"></div>
                                <div class="placeholder-footer">
                                    <div class="footer-block">
                                        <div class="img loads"></div>
                                        <div class="inner-wrap">
                                            <div class="content-shape loads"></div>
                                            <div class="content-shape loads"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Placeload element -->
                            <div class="placeload post-placeload">
                                <div class="header">
                                    <div class="img loads"></div>
                                    <div class="header-content">
                                        <div class="content-shape loads"></div>
                                        <div class="content-shape loads"></div>
                                    </div>
                                </div>
                                <div class="image-placeholder loads"></div>
                                <div class="placeholder-footer">
                                    <div class="footer-block">
                                        <div class="img loads"></div>
                                        <div class="inner-wrap">
                                            <div class="content-shape loads"></div>
                                            <div class="content-shape loads"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="column is-3">

                            <!-- Placeload element -->
                            <div class="placeload stories-placeload">
                                <div class="header">
                                    <div class="content-shape loads"></div>
                                </div>
                                <div class="body">
                                    <div class="flex-block">
                                        <div class="img loads"></div>
                                        <div class="inner-wrap">
                                            <div class="content-shape loads"></div>
                                            <div class="content-shape loads"></div>
                                        </div>
                                    </div>
                                    <div class="flex-block">
                                        <div class="img loads"></div>
                                        <div class="inner-wrap">
                                            <div class="content-shape loads"></div>
                                            <div class="content-shape loads"></div>
                                        </div>
                                    </div>
                                    <div class="flex-block">
                                        <div class="img loads"></div>
                                        <div class="inner-wrap">
                                            <div class="content-shape loads"></div>
                                            <div class="content-shape loads"></div>
                                        </div>
                                    </div>
                                    <div class="flex-block">
                                        <div class="img loads"></div>
                                        <div class="inner-wrap">
                                            <div class="content-shape loads"></div>
                                            <div class="content-shape loads"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Placeload element -->
                            <div class="placeload mini-widget-placeload">
                                <div class="body">
                                    <div class="inner-wrap">
                                        <div class="img loads"></div>
                                        <div class="content-shape loads"></div>
                                        <div class="content-shape loads"></div>
                                        <div class="content-shape loads"></div>
                                        <div class="button-shape loads"></div>
                                    </div>
                                </div>
                            </div>
                            <!-- Placeload element -->
                            <div class="placeload list-placeload">
                                <div class="header">
                                    <div class="content-shape loads"></div>
                                </div>
                                <div class="body">
                                    <div class="flex-block">
                                        <div class="img loads"></div>
                                        <div class="inner-wrap">
                                            <div class="content-shape loads"></div>
                                            <div class="content-shape loads"></div>
                                        </div>
                                    </div>
                                    <div class="flex-block">
                                        <div class="img loads"></div>
                                        <div class="inner-wrap">
                                            <div class="content-shape loads"></div>
                                            <div class="content-shape loads"></div>
                                        </div>
                                    </div>
                                    <div class="flex-block">
                                        <div class="img loads"></div>
                                        <div class="inner-wrap">
                                            <div class="content-shape loads"></div>
                                            <div class="content-shape loads"></div>
                                        </div>
                                    </div>
                                    <div class="flex-block">
                                        <div class="img loads"></div>
                                        <div class="inner-wrap">
                                            <div class="content-shape loads"></div>
                                            <div class="content-shape loads"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- Feed page main wrapper -->
                <div id="activity-feed" class="view-wrap true-dom is-hidden">
                    <div class="columns">
                        <!-- Left side column -->
                        <div class="column is-3 is-hidden-mobile">
                            <!-- Feed menu -->
                            <div class="feed-menu-v1">
                                <ul class="main-menu">
                                    <li class="is-active">
                                        <a>
                                            <i data-feather="activity"></i>
                                            <span>Basics & Subs.</span>
                                            <span class="close-icon">
                                                <i data-feather="chevron-right"></i>
                                            </span>
                                        </a>
                                        <ul class="submenu">
                                            <li class="is-subactive">
                                                <a href="ViewBasics.jsp">Basics 
                                                    <!--    <span class="tag">4</span>-->
                                                </a>
                                            </li>
                                            <li class="is-subactive">
                                                <a href="ViewSubscriptions.jsp">Subscriptions</a>
                                            </li>
                                            <li class="is-subactive">
                                                <a href="MySubscriptions.jsp">My subscriptions</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a>
                                            <i data-feather="help-circle"></i>
                                            <span>F&C</span>
                                            <span class="close-icon">
                                                <i data-feather="chevron-right"></i>
                                            </span>
                                        </a>
                                        <ul class="submenu">
                                            <li>
                                                <a href="UserFeedback.jsp">Feedback</a>
                                            </li>
                                            <li>
                                                <a href="Questions.jsp">Queries</a>
                                            </li>
                                            <li>
                                                <a href="UserComplaint.jsp">Complaints</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <!--                                    <li>
                                                                            <a>
                                                                                <i data-feather="youtube"></i>
                                                                                <span>Videos</span>
                                                                                <span class="close-icon">
                                                                                    <i data-feather="chevron-right"></i>
                                                                                </span>
                                                                            </a>
                                                                            <ul class="submenu">
                                                                                <li>
                                                                                    <a>Home<span class="tag">7</span></a>
                                                                                </li>
                                                                                <li>
                                                                                    <a>Suggested</a>
                                                                                </li>
                                                                                <li>
                                                                                    <a>My Channel</a>
                                                                                </li>
                                                                            </ul>
                                                                        </li>-->
                                    <!--                                    <li>
                                                                            <a>
                                                                                <i data-feather="shopping-cart"></i>
                                                                                <span>Shopping</span>
                                                                                <span class="close-icon">
                                                                                    <i data-feather="chevron-right"></i>
                                                                                </span>
                                                                            </a>
                                                                            <ul class="submenu">
                                                                                <li>
                                                                                    <a>Trending<span class="tag">2</span></a>
                                                                                </li>
                                                                                <li>
                                                                                    <a>Popular<span class="tag">5</span></a>
                                                                                </li>
                                                                                <li>
                                                                                    <a>My Products</a>
                                                                                </li>
                                                                            </ul>
                                                                        </li>-->
                                    <!--                                    <li>
                                                                            <a>
                                                                                <i data-feather="music"></i>
                                                                                <span>Music</span>
                                                                                <span class="close-icon">
                                                                                    <i data-feather="chevron-right"></i>
                                                                                </span>
                                                                            </a>
                                                                            <ul class="submenu">
                                                                                <li>
                                                                                    <a>My Products</a>
                                                                                </li>
                                                                                <li>
                                                                                    <a>Trending<span class="tag">6</span></a>
                                                                                </li>
                                                                                <li>
                                                                                    <a>Popular</a>
                                                                                </li>
                                                                            </ul>
                                                                        </li>-->
                                </ul>
                            </div>
                        </div>
                        <!-- /Left side column -->

                        <!-- Middle column -->
                        <div class="column is-6">

                            <!--search insert here-->

                            <div class = 'search-box'>
                                <input class = "search-text" type="text" id="tipue_drop_input" onkeyup="getSug(this.value)" placeholder = "Search Anything" >
                                <a href="#" class = "search-btn">
                                    &#x1f50d
                                </a>
                                <div id="tipue_drop_content" class="tipue-drop-content" style="">

                                </div>
                            </div>

                            <!-- Publishing Area -->
                            <!-- /partials/pages/feed/compose-card.html -->
                            <div id="compose-card" class="card is-new-content">
                                <!-- Top tabs -->
                                <div class="tabs-wrapper">
                                    <div class="tabs is-boxed is-fullwidth">
                                        <ul>
                                            <li class="is-active">
                                                <!--<a>-->
                                                <!--<span class="icon is-small"><i data-feather="edit-3"></i></span>-->
                                                <!--                                                    <span>Publish</span>-->
                                                <!--</a>-->
                                            </li>
                                            <li>
                                                <!--                                                <a class="modal-trigger" data-modal="albums-help-modal">
                                                                                                    <span class="icon is-small"><i data-feather="image"></i></span>
                                                                                                    <span>Albums</span>
                                                                                                </a>-->
                                            </li>
                                            <li>
                                                <!--                                                <a class="modal-trigger" data-modal="videos-help-modal">
                                                                                                    <span class="icon is-small"><i data-feather="video"></i></span>
                                                                                                    <span>Video</span>
                                                                                                </a>-->
                                            </li>
                                            <!-- Close X button -->
                                            <li class="close-wrap">
                                                <span class="close-publish">
                                                    <i data-feather="x"></i>
                                                </span>
                                            </li>
                                        </ul>
                                    </div>

                                    <!-- Tab content -->
                                    <!--                                    <div class="tab-content">
                                                                             Compose form 
                                                                            <div class="compose">
                                                                                <div class="compose-form">
                                                                                    <img src="../Assets/Files/UserPhoto/<%=rsu.getString("user_photo")%>"  alt="">
                                                                                    <div class="control">
                                                                                        <textarea id="publish" class="textarea" rows="3" placeholder="Write something about you..."></textarea>
                                                                                    </div>
                                                                                </div>
                                    
                                                                                <div id="feed-upload" class="feed-upload">
                                    
                                                                                </div>
                                    
                                                                                <div id="options-summary" class="options-summary"></div>
                                    
                                                                                <div id="tag-suboption" class="is-autocomplete is-suboption is-hidden">
                                                                                     Tag friends suboption 
                                                                                    <div id="tag-list" class="tag-list"></div>
                                                                                                                                    <div class="control">
                                                                                                                                        <input id="users-autocpl" type="text" class="input" placeholder="Who are you with?">
                                                                                                                                        <div class="icon">
                                                                                                                                            <i data-feather="search"></i>
                                                                                                                                        </div>
                                                                                                                                        <div class="close-icon is-main">
                                                                                                                                            <i data-feather="x"></i>
                                                                                                                                        </div>
                                                                                                                                    </div>
                                                                                </div>
                                                                                 /Tag friends suboption 
                                    
                                                                                 Activities suboption 
                                                                                                                            <div id="activities-suboption" class="is-autocomplete is-suboption is-hidden">
                                                                                                                                <div id="activities-autocpl-wrapper" class="control has-margin">
                                                                                                                                    <input id="activities-autocpl" type="text" class="input" placeholder="What are you doing right now?">
                                                                                                                                    <div class="icon">
                                                                                                                                        <i data-feather="search"></i>
                                                                                                                                    </div>
                                                                                                                                    <div class="close-icon is-main">
                                                                                                                                        <i data-feather="x"></i>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                
                                                                                                                                 Mood suboption 
                                                                                                                                <div id="mood-autocpl-wrapper" class="is-autocomplete is-activity is-hidden">
                                                                                                                                    <div class="control has-margin">
                                                                                                                                        <input id="mood-autocpl" type="text" class="input is-subactivity" placeholder="How do you feel?">
                                                                                                                                        <div class="input-block">
                                                                                                                                            Feels
                                                                                                                                        </div>
                                                                                                                                        <div class="close-icon is-subactivity">
                                                                                                                                            <i data-feather="x"></i>
                                                                                                                                        </div>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                
                                                                                                                                 Drinking suboption child 
                                                                                                                                <div id="drinking-autocpl-wrapper" class="is-autocomplete is-activity is-hidden">
                                                                                                                                    <div class="control has-margin">
                                                                                                                                        <input id="drinking-autocpl" type="text" class="input is-subactivity" placeholder="What are you drinking?">
                                                                                                                                        <div class="input-block">
                                                                                                                                            Drinks
                                                                                                                                        </div>
                                                                                                                                        <div class="close-icon is-subactivity">
                                                                                                                                            <i data-feather="x"></i>
                                                                                                                                        </div>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                
                                                                                                                                 Eating suboption child 
                                                                                                                                <div id="eating-autocpl-wrapper" class="is-autocomplete is-activity is-hidden">
                                                                                                                                    <div class="control has-margin">
                                                                                                                                        <input id="eating-autocpl" type="text" class="input is-subactivity" placeholder="What are you eating?">
                                                                                                                                        <div class="input-block">
                                                                                                                                            Eats
                                                                                                                                        </div>
                                                                                                                                        <div class="close-icon is-subactivity">
                                                                                                                                            <i data-feather="x"></i>
                                                                                                                                        </div>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                
                                                                                                                                 Reading suboption child 
                                                                                                                                <div id="reading-autocpl-wrapper" class="is-autocomplete is-activity is-hidden">
                                                                                                                                    <div class="control has-margin">
                                                                                                                                        <input id="reading-autocpl" type="text" class="input is-subactivity" placeholder="What are you reading?">
                                                                                                                                        <div class="input-block">
                                                                                                                                            Reads
                                                                                                                                        </div>
                                                                                                                                        <div class="close-icon is-subactivity">
                                                                                                                                            <i data-feather="x"></i>
                                                                                                                                        </div>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                
                                                                                                                                 Watching suboption child 
                                                                                                                                <div id="watching-autocpl-wrapper" class="is-autocomplete is-activity is-hidden">
                                                                                                                                    <div class="control has-margin">
                                                                                                                                        <input id="watching-autocpl" type="text" class="input is-subactivity" placeholder="What are you watching?">
                                                                                                                                        <div class="input-block">
                                                                                                                                            Watches
                                                                                                                                        </div>
                                                                                                                                        <div class="close-icon is-subactivity">
                                                                                                                                            <i data-feather="x"></i>
                                                                                                                                        </div>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                
                                                                                                                                 Travel suboption child 
                                                                                                                                <div id="travel-autocpl-wrapper" class="is-autocomplete is-activity is-hidden">
                                                                                                                                    <div class="control has-margin">
                                                                                                                                        <input id="travel-autocpl" type="text" class="input is-subactivity" placeholder="Where are you going?">
                                                                                                                                        <div class="input-block">
                                                                                                                                            Travels
                                                                                                                                        </div>
                                                                                                                                        <div class="close-icon is-subactivity">
                                                                                                                                            <i data-feather="x"></i>
                                                                                                                                        </div>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                
                                                                                                                            </div>
                                                                                 /Activities suboption 
                                    
                                                                                 Location suboption 
                                                                                                                            <div id="location-suboption" class="is-autocomplete is-suboption is-hidden">
                                                                                                                                <div id="location-autocpl-wrapper" class="control is-location-wrapper has-margin">
                                                                                                                                    <input id="location-autocpl" type="text" class="input" placeholder="Where are you now?">
                                                                                                                                    <div class="icon">
                                                                                                                                        <i data-feather="map-pin"></i>
                                                                                                                                    </div>
                                                                                                                                    <div class="close-icon is-main">
                                                                                                                                        <i data-feather="x"></i>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                            </div>
                                    
                                                                                 Link suboption 
                                                                                                                            <div id="link-suboption" class="is-autocomplete is-suboption is-hidden">
                                                                                                                                <div id="link-autocpl-wrapper" class="control is-location-wrapper has-margin">
                                                                                                                                    <input id="link-autocpl" type="text" class="input" placeholder="Enter the link URL">
                                                                                                                                    <div class="icon">
                                                                                                                                        <i data-feather="link-2"></i>
                                                                                                                                    </div>
                                                                                                                                    <div class="close-icon is-main">
                                                                                                                                        <i data-feather="x"></i>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                            </div>
                                    
                                                                                 GIF suboption 
                                                                                                                            <div id="gif-suboption" class="is-autocomplete is-suboption is-hidden">
                                                                                                                                <div id="gif-autocpl-wrapper" class="control is-gif-wrapper has-margin">
                                                                                                                                    <input id="gif-autocpl" type="text" class="input" placeholder="Search a GIF to add" autofocus>
                                                                                                                                    <div class="icon">
                                                                                                                                        <i data-feather="search"></i>
                                                                                                                                    </div>
                                                                                                                                    <div class="close-icon is-main">
                                                                                                                                        <i data-feather="x"></i>
                                                                                                                                    </div>
                                                                                                                                    <div class="gif-dropdown">
                                                                                                                                        <div class="inner">
                                                                                                                                            <div class="gif-block">
                                                                                                                                                <img src="https://via.placeholder.com/478x344" data-demo-src="../Assets/Template/friendkit/assets/img/demo/gif/1.gif" alt="">
                                                                                                                                                <img src="https://via.placeholder.com/478x344" data-demo-src="../Assets/Template/friendkit/assets/img/demo/gif/2.gif" alt="">
                                                                                                                                                <img src="https://via.placeholder.com/478x344" data-demo-src="../Assets/Template/friendkit/assets/img/demo/gif/3.gif" alt="">
                                                                                                                                                <img src="https://via.placeholder.com/478x344" data-demo-src="../Assets/Template/friendkit/assets/img/demo/gif/4.gif" alt="">
                                                                                                                                            </div>
                                                                                                                                            <div class="gif-block">
                                                                                                                                                <img src="https://via.placeholder.com/478x344" data-demo-src="../Assets/Template/friendkit/assets/img/demo/gif/5.gif" alt="">
                                                                                                                                                <img src="https://via.placeholder.com/478x344" data-demo-src="../Assets/Template/friendkit/assets/img/demo/gif/6.gif" alt="">
                                                                                                                                                <img src="https://via.placeholder.com/478x344" data-demo-src="../Assets/Template/friendkit/assets/img/demo/gif/7.gif" alt="">
                                                                                                                                                <img src="https://via.placeholder.com/478x344" data-demo-src="../Assets/Template/friendkit/assets/img/demo/gif/8.gif" alt="">
                                                                                                                                            </div>
                                                                                                                                            <div class="gif-block">
                                                                                                                                                <img src="https://via.placeholder.com/478x344" data-demo-src="../Assets/Template/friendkit/assets/img/demo/gif/9.gif" alt="">
                                                                                                                                                <img src="https://via.placeholder.com/478x344" data-demo-src="../Assets/Template/friendkit/assets/img/demo/gif/10.gif" alt="">
                                                                                                                                                <img src="https://via.placeholder.com/478x344" data-demo-src="../Assets/Template/friendkit/assets/img/demo/gif/11.gif" alt="">
                                                                                                                                                <img src="https://via.placeholder.com/478x344" data-demo-src="../Assets/Template/friendkit/assets/img/demo/gif/12.gif" alt="">
                                                                                                                                            </div>
                                                                                                                                        </div>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                            </div>
                                                                             /Compose form 
                                    
                                                                             General extended options 
                                                                            <div id="extended-options" class="compose-options is-hidden">
                                                                                                                            <div class="columns is-multiline is-full">
                                                                                                                                 Upload action 
                                                                                                                                <div class="column is-6 is-narrower">
                                                                                                                                    <div class="compose-option is-centered">
                                                                                                                                        <i data-feather="camera"></i>
                                                                                                                                        <span>Photo/Video</span>
                                                                                                                                        <input id="feed-upload-input-1" type="file" accept=".png, .jpg, .jpeg" onchange="readURL(this)">
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                                 Mood action 
                                                                                                                                <div class="column is-6 is-narrower">
                                                                                                                                    <div id="extended-show-activities" class="compose-option is-centered">
                                                                                                                                        <img src="../Assets/Template/friendkit/assets/img/icons/emoji/emoji-1.svg" alt="">
                                                                                                                                        <span>Mood/Activity</span>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                                 Tag friends action 
                                                                                                                                <div class="column is-6 is-narrower">
                                                                                                                                    <div id="open-tag-suboption" class="compose-option is-centered">
                                                                                                                                        <i data-feather="tag"></i>
                                                                                                                                        <span>Tag friends</span>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                                 Post location action 
                                                                                                                                <div class="column is-6 is-narrower">
                                                                                                                                    <div id="open-location-suboption" class="compose-option is-centered">
                                                                                                                                        <i data-feather="map-pin"></i>
                                                                                                                                        <span>Post location</span>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                                 Share link action 
                                                                                                                                <div class="column is-6 is-narrower">
                                                                                                                                    <div id="open-link-suboption" class="compose-option is-centered">
                                                                                                                                        <i data-feather="link-2"></i>
                                                                                                                                        <span>Share link</span>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                                 Post GIF action 
                                                                                                                                <div class="column is-6 is-narrower">
                                                                                                                                    <div id="open-gif-suboption" class="compose-option is-centered">
                                                                                                                                        <i data-feather="image"></i>
                                                                                                                                        <span>Post GIF</span>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                            </div>
                                                                             /General extended options 
                                    
                                                                             General basic options 
                                                                            <div id="basic-options" class="compose-options">
                                                                                 Upload action 
                                                                                                                            <div class="compose-option">
                                                                                                                                <i data-feather="camera"></i>
                                                                                                                                <span>Search</span>
                                                                                                                                <input id="feed-upload-input-2" type="file" type="file" accept=".png, .jpg, .jpeg" onchange="readURL(this)">
                                                                                                                            </div>
                                                                                 Mood action 
                                                                                <div id="show-activities" class="compose-option">
                                                                                    <img src="../Assets/Template/friendkit/assets/img/icons/emoji/emoji-1.svg" alt="">
                                                                                    <span>Search</span>
                                                                                </div>
                                                                                 Expand action 
                                                                                                                            <div id="open-extended-options" class="compose-option">
                                                                                                                                <i data-feather="more-horizontal"></i>
                                                                                                                            </div>
                                                                            </div>
                                                                             /General basic options 
                                    
                                                                             Hidden Options 
                                                                            <div class="hidden-options">
                                                                                <div class="target-channels">
                                                                                     Publication Channel 
                                                                                    <div class="channel">
                                                                                        <div class="round-checkbox is-small">
                                                                                            <div>
                                                                                                <input type="checkbox" id="checkbox-1" checked>
                                                                                                <label for="checkbox-1"></label>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="channel-icon">
                                                                                            <i data-feather="bell"></i>
                                                                                        </div>
                                                                                        <div class="channel-name">Activity Feed</div>
                                                                                         Dropdown menu 
                                                                                        <div class="dropdown is-spaced is-modern is-right is-neutral dropdown-trigger">
                                                                                                                                                    <div>
                                                                                                                                                        <button class="button" aria-haspopup="true">
                                                                                                                                                            <i class="main-icon" data-feather="smile"></i>
                                                                                                                                                            <span>Friends</span>
                                                                                                                                                            <i class="caret" data-feather="chevron-down"></i>
                                                                                                                                                        </button>
                                                                                                                                                    </div>
                                                                                            <div class="dropdown-menu" role="menu">
                                                                                                                                                            <div class="dropdown-content">
                                                                                                                                                                <a href="#" class="dropdown-item">
                                                                                                                                                                    <div class="media">
                                                                                                                                                                        <i data-feather="globe"></i>
                                                                                                                                                                        <div class="media-content">
                                                                                                                                                                            <h3>Public</h3>
                                                                                                                                                                            <small>Anyone can see this publication.</small>
                                                                                                                                                                        </div>
                                                                                                                                                                    </div>
                                                                                                                                                                </a>
                                                                                                                                                                <a class="dropdown-item">
                                                                                                                                                                    <div class="media">
                                                                                                                                                                        <i data-feather="users"></i>
                                                                                                                                                                        <div class="media-content">
                                                                                                                                                                            <h3>Friends</h3>
                                                                                                                                                                            <small>only friends can see this publication.</small>
                                                                                                                                                                        </div>
                                                                                                                                                                    </div>
                                                                                                                                                                </a>
                                                                                                                                                                <a class="dropdown-item">
                                                                                                                                                                    <div class="media">
                                                                                                                                                                        <i data-feather="user"></i>
                                                                                                                                                                        <div class="media-content">
                                                                                                                                                                            <h3>Specific friends</h3>
                                                                                                                                                                            <small>Don't show it to some friends.</small>
                                                                                                                                                                        </div>
                                                                                                                                                                    </div>
                                                                                                                                                                </a>
                                                                                                                                                                <hr class="dropdown-divider">
                                                                                                                                                                <a class="dropdown-item">
                                                                                                                                                                    <div class="media">
                                                                                                                                                                        <i data-feather="lock"></i>
                                                                                                                                                                        <div class="media-content">
                                                                                                                                                                            <h3>Only me</h3>
                                                                                                                                                                            <small>Only me can see this publication.</small>
                                                                                                                                                                        </div>
                                                                                                                                                                    </div>
                                                                                                                                                                </a>
                                                                                                                                                            </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                     Publication Channel 
                                                                                    <div class="channel">
                                                                                                                                            <div class="round-checkbox is-small">
                                                                                                                                                <div>
                                                                                                                                                    <input type="checkbox" id="checkbox-2">
                                                                                                                                                    <label for="checkbox-2"></label>
                                                                                                                                                </div>
                                                                                                                                            </div>
                                                                                                                                            <div class="story-icon">
                                                                                                                                                <div class="plus-icon">
                                                                                                                                                    <i data-feather="plus"></i>
                                                                                                                                                </div>
                                                                                                                                            </div>
                                    
                                                                                                                                            <div class="channel-name">My Story</div>
                                                                                         Dropdown menu 
                                                                                        <div class="dropdown is-spaced is-modern is-right is-neutral dropdown-trigger">
                                                                                                                                                    <div>
                                                                                                                                                        <button class="button" aria-haspopup="true">
                                                                                                                                                            <i class="main-icon" data-feather="smile"></i>
                                                                                                                                                            <span>Friends</span>
                                                                                                                                                            <i class="caret" data-feather="chevron-down"></i>
                                                                                                                                                        </button>
                                                                                                                                                    </div>
                                                                                                                                                    <div class="dropdown-menu" role="menu">
                                                                                                                                                        <div class="dropdown-content">
                                                                                                                                                            <a href="#" class="dropdown-item">
                                                                                                                                                                <div class="media">
                                                                                                                                                                    <i data-feather="globe"></i>
                                                                                                                                                                    <div class="media-content">
                                                                                                                                                                        <h3>Public</h3>
                                                                                                                                                                        <small>Anyone can see this publication.</small>
                                                                                                                                                                    </div>
                                                                                                                                                                </div>
                                                                                                                                                            </a>
                                                                                                                                                            <a class="dropdown-item">
                                                                                                                                                                <div class="media">
                                                                                                                                                                    <i data-feather="users"></i>
                                                                                                                                                                    <div class="media-content">
                                                                                                                                                                        <h3>Friends</h3>
                                                                                                                                                                        <small>only friends can see this publication.</small>
                                                                                                                                                                    </div>
                                                                                                                                                                </div>
                                                                                                                                                            </a>
                                                                                                                                                            <a class="dropdown-item">
                                                                                                                                                                <div class="media">
                                                                                                                                                                    <i data-feather="users"></i>
                                                                                                                                                                    <div class="media-content">
                                                                                                                                                                        <h3>Friends and contacts</h3>
                                                                                                                                                                        <small>Your friends and contacts.</small>
                                                                                                                                                                    </div>
                                                                                                                                                                </div>
                                                                                                                                                            </a>
                                                                                                                                                        </div>
                                                                                                                                                    </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                    
                                                                                 Friends list 
                                                                                                                            <div class="friends-list is-hidden">
                                                                                                                                 Header 
                                                                                                                                <div class="list-header">
                                                                                                                                    <span>Send in a message</span>
                                                                                                                                    <div class="actions">
                                                                                                                                        <a id="open-compose-search" href="javascript:void(0);" class="search-trigger">
                                                                                                                                            <i data-feather="search"></i>
                                                                                                                                        </a>
                                                                                                                                         Hidden filter input 
                                                                                                                                        <div id="compose-search" class="control is-hidden">
                                                                                                                                            <input type="text" class="input" placeholder="Search People">
                                                                                                                                            <span>
                                                                                                                                                <i data-feather="search"></i>
                                                                                                                                            </span>
                                                                                                                                        </div>
                                                                                                                                        <a href="javascript:void(0);" class="is-inverted modal-trigger" data-modal="create-group-modal">Create group</a>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                                 List body 
                                                                                                                                <div class="list-body">
                                                                                
                                                                                                                                     Friend 
                                                                                                                                    <div class="friend-block">
                                                                                                                                        <div class="round-checkbox is-small">
                                                                                                                                            <div>
                                                                                                                                                <input type="checkbox" id="checkbox-3">
                                                                                                                                                <label for="checkbox-3"></label>
                                                                                                                                            </div>
                                                                                                                                        </div>
                                                                                                                                        <img class="friend-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/dan.jpg" alt="">
                                                                                                                                        <div class="friend-name">Dan Walker</div>
                                                                                                                                    </div>
                                                                                                                                     Friend 
                                                                                                                                    <div class="friend-block">
                                                                                                                                        <div class="round-checkbox is-small">
                                                                                                                                            <div>
                                                                                                                                                <input type="checkbox" id="checkbox-4">
                                                                                                                                                <label for="checkbox-4"></label>
                                                                                                                                            </div>
                                                                                                                                        </div>
                                                                                                                                        <img class="friend-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/daniel.jpg" alt="">
                                                                                                                                        <div class="friend-name">Daniel Wellington</div>
                                                                                                                                    </div>
                                                                                                                                     Friend 
                                                                                                                                    <div class="friend-block">
                                                                                                                                        <div class="round-checkbox is-small">
                                                                                                                                            <div>
                                                                                                                                                <input type="checkbox" id="checkbox-5">
                                                                                                                                                <label for="checkbox-5"></label>
                                                                                                                                            </div>
                                                                                                                                        </div>
                                                                                                                                        <img class="friend-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/stella.jpg" alt="">
                                                                                                                                        <div class="friend-name">Stella Bergmann</div>
                                                                                                                                    </div>
                                                                                                                                     Friend 
                                                                                                                                    <div class="friend-block">
                                                                                                                                        <div class="round-checkbox is-small">
                                                                                                                                            <div>
                                                                                                                                                <input type="checkbox" id="checkbox-6">
                                                                                                                                                <label for="checkbox-6"></label>
                                                                                                                                            </div>
                                                                                                                                        </div>
                                                                                                                                        <img class="friend-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/david.jpg" alt="">
                                                                                                                                        <div class="friend-name">David Kim</div>
                                                                                                                                    </div>
                                                                                                                                     Friend 
                                                                                                                                    <div class="friend-block">
                                                                                                                                        <div class="round-checkbox is-small">
                                                                                                                                            <div>
                                                                                                                                                <input type="checkbox" id="checkbox-7">
                                                                                                                                                <label for="checkbox-7"></label>
                                                                                                                                            </div>
                                                                                                                                        </div>
                                                                                                                                        <img class="friend-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/nelly.png" alt="">
                                                                                                                                        <div class="friend-name">Nelly Schwartz</div>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                            </div>
                                                                             Footer buttons 
                                                                            <div class="more-wrap">
                                                                                 View more button 
                                                                                <button id="show-compose-friends" type="button" class="button is-more" aria-haspopup="true">
                                                                                    <i data-feather="more-vertical"></i>
                                                                                    <span>View More</span>
                                                                                </button>
                                                                                 Publish button 
                                                                                <button id="publish-button" type="button" class="button is-solid accent-button is-fullwidth is-disabled">
                                                                                    Publish
                                                                                </button>
                                                                            </div>
                                                                        </div>-->
                                </div>
                            </div>
                            <!-- Post 1 -->
                            <!-- /partials/pages/feed/posts/feed-post1.html -->
                            <!-- POST #1 -->

                            <!-- Main wrap -->
                            <div id="resultTab">
                                <%

                                    String selQry = "select * from tbl_code ORDER BY rand()";
                                    ResultSet rs = con.selectCommand(selQry);

                                    while (rs.next()) {

                                %>
                                <div id="feed-post-1" class="card is-post">
                                    <div class="content-wrap">
                                        <!-- Post header -->
                                        <div class="card-heading">
                                            <!-- User meta -->
                                            <div class="user-block">
                                                <div class="image">
                                                </div>
                                                <div class="user-info">
                                                    <a href="#"><%=rs.getString("code_title")%></a>
                                                    <span class="time"><%=rs.getString("code_date")%></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div class="post-text">
                                            </div>
                                            <div class="post-image">
                                                <iframe src="FrameSet.jsp?id=<%=rs.getString("code_id")%>" ></iframe>
                                            </div>
                                        </div>
                                        <div class="card-footer">
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }


                                %>
                            </div>


                            <!--splitted-->
                        </div>
                        <!-- /Middle column -->

                        <!-- Right side column -->
                        <div class="column is-3">

                            <!-- Stories widget -->
                            <!-- /partials/widgets/stories-widget.html -->
                            <div class="card">
                                <div class="card-heading is-bordered">
                                    <h4>Meet Your Instructors</h4>
                                    <!--drop down commented-->

                                </div>
                                <div class="card-body no-padding">
                                    <!-- Story block -->
                                    <!--<div class="story-block">-->
                                    <!--                                    <a id="add-story-button" href="#" class="add-story">
                                                                            <i data-feather="plus"></i>
                                                                        </a>
                                                                        <div class="story-meta">
                                                                            <span>Add a new Story</span>
                                                                            <span>Share an image, a video or some text</span>
                                                                        </div>-->
                                    <!--</div>-->
                                    <!-- Story block -->
                                    <!--meet instructors-->
                                    <%                                        String selG = "select * from tbl_guide";
                                        ResultSet rsg = con.selectCommand(selG);
                                        while (rsg.next()) {
                                    %>
                                    <div class="story-block">
                                        <div class="img-wrapper">
                                            <img src="<%=rsg.getString("guide_photo")%>" alt="">
                                        </div>
                                        <div class="story-meta">
                                            <span><%=rsg.getString("guide_name")%></span>
                                            <!--<span>1 hour ago</span>-->
                                        </div>
                                    </div>
                                    <%
                                        }
                                    %>
                                    <!-- Story block -->
                                    <!--                                <div class="story-block">
                                                                        <div class="img-wrapper">
                                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/bobby.jpg" data-user-popover="8" alt="">
                                                                        </div>
                                                                        <div class="story-meta">
                                                                            <span>Bobby Brown</span>
                                                                            <span>3 days ago</span>
                                                                        </div>
                                                                    </div>-->
                                    <!-- Story block -->
                                    <!--                                <div class="story-block">
                                                                        <div class="img-wrapper">
                                                                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/elise.jpg" data-user-popover="6" alt="">
                                                                        </div>
                                                                        <div class="story-meta">
                                                                            <span>Elise Walker</span>
                                                                            <span>Last week</span>
                                                                        </div>
                                                                    </div>-->
                                </div>
                            </div>
                            <!--                            <div class="card">
                                                            <div class="card-heading is-bordered">
                                                                <h4>Meet Your Instructors</h4>
                                                                drop down commented
                            
                                                            </div>
                                                            <div class="card-body no-padding">
                                                                 Story block 
                                                                <div class="story-block">
                                                                                                    <a id="add-story-button" href="#" class="add-story">
                                                                                                        <i data-feather="plus"></i>
                                                                                                    </a>
                                                                                                    <div class="story-meta">
                                                                                                        <span>Add a new Story</span>
                                                                                                        <span>Share an image, a video or some text</span>
                                                                                                    </div>
                                                                </div>
                                                                 Story block 
                                                                meet instructors
                            <%
                                String sel4 = "select * from tbl_guide";
                                ResultSet rs4 = con.selectCommand(sel4);
                                while (rs4.next()) {
                            %>
                            <div class="story-block">
                                <div class="img-wrapper">
                                    <img src="<%=rs4.getString("guide_photo")%>" alt="">
                                </div>
                                <div class="story-meta">
                                    <span><%=rs4.getString("guide_name")%></span>
                                    <span>1 hour ago</span>
                                </div>
                            </div>
                            <%
                                }
                            %>

                        </div>
                    </div>-->

                        </div>
                        <!-- /Right side column -->
                    </div>
                </div>
                <!-- /Feed page main wrapper -->
            </div>
            <!-- /Container -->

            <!-- Create group modal in compose card -->
            <!-- /partials/pages/feed/modals/create-group-modal.html -->
            <div id="create-group-modal" class="modal create-group-modal is-light-bg">
                <div class="modal-background"></div>
                <div class="modal-content">

                    <div class="card">
                        <div class="card-heading">
                            <h3>Create group</h3>
                            <!-- Close X button -->
                            <div class="close-wrap">
                                <span class="close-modal">
                                    <i data-feather="x"></i>
                                </span>
                            </div>
                        </div>
                        <!-- Modal subheading -->
                        <div class="subheading">
                            <!-- Group avatar -->
                            <div class="group-avatar">
                                <input id="group-avatar-upload" type="file">
                                <div class="add-photo">
                                    <i data-feather="plus"></i>
                                </div>
                            </div>
                            <!-- Group name -->
                            <div class="control">
                                <input type="text" class="input" placeholder="Give the group a name">
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="inner">
                                <div class="left-section">
                                    <div class="search-subheader">
                                        <div class="control">
                                            <input type="text" class="input" placeholder="Search for friends to add">
                                            <span class="icon">
                                                <i data-feather="search"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div id="new-group-list" class="user-list has-slimscroll">


                                    </div>
                                </div>
                                <div class="right-section has-slimscroll">
                                    <div class="selected-count">
                                        <span>Selected</span>
                                        <span id="selected-friends-count">0</span>
                                    </div>

                                    <div id="selected-list" class="selected-list"></div>

                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <!--                        <button type="button" class="button is-solid grey-button close-modal">Cancel</button>
                                                    <button type="button" class="button is-solid accent-button close-modal">Create a Group</button>-->
                        </div>
                    </div>

                </div>
            </div>
            <!-- Albums onboarding modal -->
            <!-- /partials/pages/feed/modals/albums-help-modal.html -->
            <div id="albums-help-modal" class="modal albums-help-modal is-xsmall has-light-bg">
                <div class="modal-background"></div>
                <div class="modal-content">

                    <div class="card">
                        <!--                    <div class="card-heading">
                                                <h3>Add Photos</h3>
                                                 Close X button 
                                                <div class="close-wrap">
                                                    <span class="close-modal">
                                                        <i data-feather="x"></i>
                                                    </span>
                                                </div>
                                            </div>-->
                        <div class="card-body">
                            <!--                        <div class="content-block is-active">
                                                        <img src="../Assets/Template/friendkit/assets/img/illustrations/cards/albums.svg" alt="">
                                                        <div class="help-text">
                                                            <h3>Manage your photos</h3>
                                                            <p>Lorem ipsum sit dolor amet is a dummy text used by the typography industry and the web industry.</p>
                                                        </div>
                                                    </div>
                            
                                                    <div class="content-block">
                                                        <img src="../Assets/Template/friendkit/assets/img/illustrations/cards/upload.svg" alt="">
                                                        <div class="help-text">
                                                            <h3>Upload your photos</h3>
                                                            <p>Lorem ipsum sit dolor amet is a dummy text used by the typography industry and the web industry.</p>
                                                        </div>
                                                    </div>
                            
                                                    <div class="slide-dots">
                                                        <div class="dot is-active"></div>
                                                        <div class="dot"></div>
                                                    </div>
                                                    <div class="action">
                                                        <button type="button" class="button is-solid accent-button next-modal raised" data-modal="albums-modal">Next</button>
                                                    </div>-->
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!--    <div id="add-conversation-modal" class="modal add-conversation-modal is-xsmall has-light-bg">
                <div class="modal-background"></div>
                <div class="modal-content">
        
                    <div class="card">
                        <div class="card-heading">
                            <h3>New Conversation</h3>
                             Close X button 
                            <div class="close-wrap">
                                <span class="close-modal">
                                    <i data-feather="x"></i>
                                </span>
                            </div>
                        </div>
                        <div class="card-body">
        
                            <img src="../Assets/Template/friendkit/assets/img/icons/chat/bubbles.svg" alt="">
        
                            <div class="field is-autocomplete">
                                <div class="control has-icon">
                                    <input type="text" class="input simple-users-autocpl" placeholder="Search a user">
                                    <div class="form-icon">
                                        <i data-feather="search"></i>
                                    </div>
                                </div>
                            </div>
        
                            <div class="help-text">
                                Select a user to start a new conversation. You'll be able to add other users later.
                            </div>
        
                            <div class="action has-text-centered">
                                <button type="button" class="button is-solid accent-button raised">Start conversation</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->
        <!--explorer start-->
        <div class="explorer-menu">
            <div class="explorer-inner">
                <div class="explorer-container">
                    <!--Header-->
                    <div class="explorer-header">
                        <h3>Explore</h3>
                        <!--                        <div class="control">
                                                    <input type="text" class="input is-rounded is-fade" placeholder="Filter">
                                                    <div class="form-icon">
                                                        <i data-feather="filter"></i>
                                                    </div>
                                                </div>-->
                    </div>
                    <!--List-->
                    <div class="explore-list has-slimscroll">

                        <!--item-->
                        <a href="HomePage.jsp" class="explore-item">
                            <img src="../Assets/Template/friendkit/assets/img/icons/explore/house.svg" alt="">
                            <h4>Home</h4>
                        </a>

                        <!--item-->
                        <a href="CodeView.jsp" class="explore-item">
                            <img src="../Assets/Template/friendkit/assets/img/icons/explore/clover.svg" alt="">
                            <h4>Codes</h4>
                        </a>
                        <!--item-->
                        <a href="ViewBasics.jsp" class="explore-item">
                            <img src="../Assets/Template/friendkit/assets/img/icons/explore/idea.svg" alt="">
                            <h4>Basics</h4>
                        </a>
                        <!--item-->
                        <a href="ViewSubscriptions.jsp" class="explore-item">
                            <img src="../Assets/Template/friendkit/assets/img/icons/explore/tag-euro.svg" alt="">
                            <h4>Subscriptions</h4>
                        </a>
                        <!--item-->
                        <a href="MySubscriptions.jsp" class="explore-item">
                            <img src="../Assets/Template/friendkit/assets/img/icons/explore/calendar.svg" alt="">
                            <h4>My subscriptions</h4>
                        </a>
                        <!--item-->
                        <a href="Questions.jsp" class="explore-item">
                            <img src="../Assets/Template/friendkit/assets/img/icons/explore/question.svg" alt="">
                            <h4>Questions</h4>
                        </a>
                        <!--item-->
                        <a href="Chat/Chat.jsp" class="explore-item">
                            <img src="../Assets/Template/friendkit/assets/img/icons/explore/news.svg" alt="">
                            <h4>Community</h4>
                        </a>
                        <!--item-->
                        <a href="SChat/Chat.jsp" class="explore-item">
                            <img src="../Assets/Template/friendkit/assets/img/icons/explore/envato.svg" alt="">
                            <h4>Chat</h4>
                        </a>
                        <!--item-->
                        <a href="UserFeedback.jsp   " class="explore-item">
                            <img src="../Assets/Template/friendkit/assets/img/icons/explore/cake.svg" alt="">
                            <h4>Feedback</h4>
                        </a>

                        <!--item-->
                        <a href="UserComplaint.jsp" class="explore-item">
                            <img src="../Assets/Template/friendkit/assets/img/icons/explore/chrono.svg" alt="">
                            <h4>Complaints</h4>
                        </a>

                        <!--item-->
                        <a href="UserSettings.jsp" class="explore-item">
                            <img src="../Assets/Template/friendkit/assets/img/icons/explore/settings.svg" alt="">
                            <h4>Settings</h4>
                        </a>
                        <!--                        item
                                                <a href="/navbar-v1-profile-friends.html" class="explore-item">
                                                    <img src="../Assets/Template/friendkit/assets/img/icons/explore/friends.svg" alt="">
                                                    <h4>Friends</h4>
                                                </a>
                                                item
                                                <a href="/navbar-v1-videos-home.html" class="explore-item">
                                                    <img src="../Assets/Template/friendkit/assets/img/icons/explore/videos.svg" alt="">
                                                    <h4>Videos</h4>
                                                </a>
                                              
                                                item
                                                <a href="UserComplaint.jsp" class="explore-item">
                                                    <img src="../Assets/Template/friendkit/assets/img/icons/explore/cart.svg" alt="">
                                                    <h4>cart</h4>
                                                </a>
                                               
                                                
                                                item
                                                <a href="UserComplaint.jsp" class="explore-item">
                                                    <img src="../Assets/Template/friendkit/assets/img/icons/explore/news.svg" alt="">
                                                    <h4>Complaint</h4>
                                                </a>
                                              
                                              
                                               
                                                item
                                                <a href="https://cssninja.io" target="_blank" class="explore-item">
                                                    <img src="../Assets/Template/friendkit/assets/img/icons/explore/pin.svg" alt="">
                                                    <h4>Css Ninja</h4>
                                                </a>
                        -->

                    </div>
                </div>
            </div>
        </div>
        <!--explorer end-->
        <div id="end-tour-modal" class="modal end-tour-modal is-xsmall has-light-bg">
            <div class="modal-background"></div>
            <div class="modal-content">

                <div class="card">
                    <div class="card-heading">
                        <h3></h3>
                        <!-- Close X button -->
                        <div class="close-wrap">
                            <span class="close-modal">
                                <i data-feather="x"></i>
                            </span>
                        </div>
                    </div>
                    <div class="card-body has-text-centered">

                        <div class="image-wrap">
                            <img src="../Assets/Template/friendkit/assets/img/logo/friendkit.svg" alt="">
                        </div>

                        <h3>That's all folks!</h3>
                        <p>Thanks for taking the friendkit tour. There are still tons of other features for you to discover!</p>

                        <div class="action">
                            <a href="/#demos-section" class="button is-solid accent-button raised is-fullwidth">Explore</a>
                        </div>
                    </div>

                </div>

            </div>

        </div>

        <!--div enter-->

        <!--div end-->

        <!-- Concatenated js plugins and jQuery -->
        <script src="../Assets/Template/friendkit/assets/js/app.js"></script>
        <script src="https://js.stripe.com/v3/"></script>
        <script>
                                    var elements = document.getElementsByClassName("code-textarea");
                                    console.log(elements.length);
                                    for (var i = 0; i < elements.length; i++) {
                                        console.log(i);
                                        CodeMirror.fromTextArea(elements[i], {
                                            mode: "javascript",
                                            lineNumbers: true,
                                            theme: "dracula"
                                        });
                                        elements[i].classList.add("CodeMirror");
                                    }
        </script>
        <script>
            function getSug(val)
            {
               
                var text = val;
                $.ajax({
                    url: "AjaxMobileCode.jsp?text=" + text,
                    success: function(html) {
                        if (html !== "")
                        {
                            document.getElementById("tipue_drop_content").style = "display:block";
                        }
                        $("#resultTab").html(html);
                    }
                });
            }
        </script>

        <!-- Core js -->
        <script src="../Assets/Template/friendkit/assets/js/global.js"></script>

        <!-- Navigation options js -->
        <script src="../Assets/Template/friendkit/assets/js/navbar-v1.js"></script>
        <script src="../Assets/Template/friendkit/assets/js/navbar-v2.js"></script>
        <script src="../Assets/Template/friendkit/assets/js/navbar-mobile.js"></script>
        <script src="../Assets/Template/friendkit/assets/js/navbar-options.js"></script>
        <script src="../Assets/Template/friendkit/assets/js/sidebar-v1.js"></script>

        <!-- Core instance js -->
        <script src="../Assets/Template/friendkit/assets/js/main.js"></script>
        <script src="../Assets/Template/friendkit/assets/js/chat.js"></script>
        <script src="../Assets/Template/friendkit/assets/js/touch.js"></script>
        <script src="../Assets/Template/friendkit/assets/js/tour.js"></script>

        <!-- Components js -->
        <script src="../Assets/Template/friendkit/assets/js/explorer.js"></script>
        <script src="../Assets/Template/friendkit/assets/js/widgets.js"></script>
        <script src="../Assets/Template/friendkit/assets/js/modal-uploader.js"></script>
        <script src="../Assets/Template/friendkit/assets/js/popovers-users.js"></script>
        <script src="../Assets/Template/friendkit/assets/js/popovers-pages.js"></script>
        <script src="../Assets/Template/friendkit/assets/js/lightbox.js"></script>

        <!-- Landing page js -->

        <!-- Signup page js -->

        <!-- Feed pages js -->
        <script src="../Assets/Template/friendkit/assets/js/feed.js"></script>

        <script src="../Assets/Template/friendkit/assets/js/webcam.js"></script>
        <script src="../Assets/Template/friendkit/assets/js/compose.js"></script>
        <!--<script src="../Assets/Template/friendkit/assets/js/autocompletes.js"></script>-->

        <script>
            var elements = document.getElementsByClassName("codelist");
            for (var i = 0; i < elements.length; i++) {
                CodeMirror.fromTextArea(elements[i], {
                    mode: "javascript",
                    lineNumbers: true,
                });
                elements[i].classList.add("CodeMirror");
            }
        </script>
    </body>

</html>