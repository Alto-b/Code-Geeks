
<!DOCTYPE html>
<html lang="en">
    <%@page import="java.sql.ResultSet" %>
    <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        <head>
             <%@include file="SessionValidator.jsp"%>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta http-equiv="x-ua-compatible" content="ie=edge">

            <title> Friendkit | Questions Home</title>
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
            <!-- End Google Tag Manager -->

            <!-- Fonts -->
            <link href="https://fonts.googleapis.com/css?family=Montserrat:600,700,800,900" rel="stylesheet">
            <link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
            <!-- Core CSS -->
            <link rel="stylesheet" href="../Assets/Template/friendkit/assets/css/app.css">
            <link rel="stylesheet" href="../Assets/Template/friendkit/assets/css/core.css">

        <%
            String selu = "select * from tbl_user where  user_id='" + session.getAttribute("uid") + "'";
            ResultSet rsu = con.selectCommand(selu);
            rsu.next();

        %>
    </head>

    <body class="is-white">
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
                    <a class="navbar-item">
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
                                                </div>-->
                        <!--                        <div class="navbar-item is-icon drop-trigger">
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
                                                </div>
                        
                                                <div id="explorer-trigger" class="navbar-item is-icon">
                                                    <a class="icon-link is-primary">
                                                        <i class="mdi mdi-apps"></i>
                                                    </a>
                                                </div>-->
                    </div>

                    <div class="navbar-end">

                        <!--                        <div class="navbar-item">
                                                    <div id="global-search" class="control">
                                                        <input id="tipue_drop_input" class="input is-rounded" type="text" placeholder="Search" required>
                                                        <span id="clear-search" class="reset-search">
                                                            <i data-feather="x"></i>
                                                        </span>
                                                        <span class="search-icon">
                                                            <i data-feather="search"></i>
                                                        </span>
                        
                                                        <div id="tipue_drop_content" class="tipue-drop-content"></div>
                                                    </div>
                        
                                                </div>-->
                        <!--                        <div class="navbar-item is-cart">
                                                    <div class="cart-button">
                                                        <i data-feather="shopping-cart"></i>
                                                        <div class="cart-count">
                                                        </div>
                                                    </div>
                        
                                                     Cart dropdown 
                                                    <div class="shopping-cart">
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
                                                    </div>
                                                </div>-->
                        <div id="account-dropdown" class="navbar-item is-account drop-trigger has-caret">
                            <div class="user-image">
                                <img src="<%=rsu.getString("user_photo")%>" alt="">
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
                                        <hr class="account-divider">
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
                    <img class="light-image" src="../Assets/Template/friendkit/assets/img/logo/friendkit-bold.svg" alt="">
                    <img class="dark-image" src="../Assets/Template/friendkit/assets/img/logo/friendkit-white.svg" alt="">
                </a>

                <!--                <div class="navbar-item is-icon drop-trigger">
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
                <!--                <div class="navbar-item is-icon drop-trigger">
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
                                </div>-->
                <!--                <div class="navbar-item is-icon drop-trigger">
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
                <div id="mobile-explorer-trigger" class="navbar-item is-icon">
                    <a class="icon-link is-primary">
                        <i class="mdi mdi-apps"></i>
                    </a>
                </div>

                <!--                <div id="open-mobile-search" class="navbar-item is-icon">
                                    <a class="icon-link is-primary" href="javascript:void(0);">
                                        <i data-feather="search"></i>
                                    </a>
                                </div>-->

                <!-- Mobile menu toggler icon -->
                <div class="navbar-burger">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
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
                            <!--<span class="menu-badge">87</span>-->
                        </a>
                        <a href="/navbar-v1-videos-home-v2.html" class="navbar-item is-flex is-mobile-icon">
                            <span><i data-feather="play-circle"></i>Watch</span>
                            <!--<span class="menu-badge">21</span>-->
                        </a>
                        <a href="/navbar-v1-profile-friends.html" class="navbar-item is-flex is-mobile-icon">
                            <span><i data-feather="heart"></i>Friend Requests</span>
                            <!--<span class="menu-badge">3</span>-->
                        </a>
                        <a href="/navbar-v1-profile-main.html" class="navbar-item is-flex is-mobile-icon">
                            <!--<span><i data-feather="user"></i>Profile</span>-->
                        </a>
                        <a href="/navbar-v1-ecommerce-cart.html" class="navbar-item is-flex is-mobile-icon">
                            <span><i data-feather="shopping-cart"></i>Cart</span>
                            <!--<span class="menu-badge">3</span>-->
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

            <!-- /html/partials/pages/questions/questions-nav-menu.html -->
            <div class="questions-nav">
                <div class="inner is-scrollable">
                    <div class="container">
                        <div class="questions-nav-menu">
                            <a href="HomePage.jsp" class="menu-item">
                                <i data-feather="home"></i>
                                <span>Home</span>
                            </a>
                            <a href="Chat/Chat.jsp" class="menu-item">
                                <i data-feather="message-circle"></i>
                                <span>Community</span>
                            </a>
                            <a href="CodeView.jsp" class="menu-item">
                                <i data-feather="hexagon"></i>
                                <span>Codes</span>
                            </a>
                            <a href="ViewSubscriptions.jsp" class="menu-item">
                                <i data-feather="layers"></i>
                                <span>Subscriptions</span>
                            </a>
                            <a href="UserSettings.jsp" class="menu-item">
                                <i data-feather="settings"></i>
                                <span>Settings</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Question wrap -->
            <div class="questions-wrap is-smaller">
                <!-- Container -->
                <div class="stories-list">

                    <div class="container-inner" >

                        <!--languagelogo for c--> 
                        <a class="story" onclick="getTut('cstart')">
                            <div class="story-avatar">
                                <img class="avatar" src="../Assets/Files/LangLogo/C.png"  data-user-popover="1" alt="">

                            </div>
                        </a>

                        <!--languagelogo for c++--> 
                        <a onclick="getTut('cppstart')" class="story">
                            <div class="story-avatar">
                                <img class="avatar" src="../Assets/Files/LangLogo/cpp.png"  data-user-popover="1" alt="">

                            </div>
                        </a>

                        <!--languagelogo for MySQL--> 
                        <a onclick="getTut('mysqlstart')" class="story">
                            <div class="story-avatar">
                                <img class="avatar" src="../Assets/Files/LangLogo/mysql.png"  data-user-popover="1" alt="">



                            </div>
                        </a>

                        <!--languagelogo for PHP--> 
                        <a onclick="getTut('htmlstart')" class="story">
                            <div class="story-avatar">
                                <img class="avatar" src="../Assets/Files/LangLogo/HTML.png"  data-user-popover="1" alt="">



                            </div>
                        </a>

                        <!--languagelogo for java--> 
                        <a onclick="getTut('javastart')" class="story">
                            <div class="story-avatar">
                                <img class="avatar" src="../Assets/Files/LangLogo/java.png"  data-user-popover="1" alt="">



                            </div>
                        </a>

                    </div>

                </div>
                <div class="container">

                    <!-- Categories -->


                    <!-- /html/partials/global/placeload/questions/questions-shadow-dom-home.html -->
                    <div id="questions-shadow-dom-home" class="columns">
                        <div class="column">
                            <!-- /html/partials/global/placeload/placeloads/questions-home-placeload.html -->
                            <div class="placeload is-bold questions-single-placeload is-header">
                                <div class="inner-wrap">
                                    <div class="content-shape loads"></div>
                                </div>
                            </div>

                            <div class="placeload questions-single-placeload is-card">
                                <div class="inner-wrap">
                                    <div class="card-head">
                                        <div class="img loads"></div>
                                        <div class="content-shape loads"></div>
                                    </div>
                                    <div class="content-shape is-body loads"></div>
                                    <div class="content-shape is-body loads"></div>
                                    <div class="content-shape is-body loads"></div>
                                </div>
                            </div>

                            <div class="placeload is-bold questions-single-placeload is-header is-spaced">
                                <div class="inner-wrap">
                                    <div class="content-shape loads"></div>
                                </div>
                            </div>

                            <div class="placeload questions-single-placeload is-card">
                                <div class="inner-wrap">
                                    <div class="card-head">
                                        <div class="img loads"></div>
                                        <div class="content-shape loads"></div>
                                    </div>
                                    <div class="content-shape is-body loads"></div>
                                    <div class="content-shape is-body loads"></div>
                                    <div class="content-shape is-body loads"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="columns true-dom is-hidden">
                        <div class="column">
                            <div class="question-content" id="tutContent">
                                <!-- c Question 1 start-->
                                <div class="question-block" >
                                    <!-- Title -->
                                    <a  class="question-title is-link">What is C?</a>
                                    <!-- Author -->
                                    <!--                                <div class="question-author">
                                                                        <img src="https://via.placeholder.com/150x150" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" data-user-popover="7" alt="">
                                                                        <div class="meta">
                                                                            <span>Milly Augustine</span>
                                                                            <span>54 minutes ago</span>
                                                                        </div>
                                                                    </div>-->
                                    <!-- Content -->
                                    <div  class="question-text" >
                                        <br>
                                        <p>C is a general-purpose programming language created by Dennis Ritchie at the Bell Laboratories in 1972.

                                            It is a very popular language, despite being old.

                                            C is strongly associated with UNIX, as it was developed to write the UNIX operating system.

                                        </p>
                                        <br>
                                        <p>
                                            Why Learn C? 
                                            <br>

                                            It is one of the most popular programming language in the world
                                            If you know C, you will have no problem learning other popular programming languages such as Java, Python, C++, C#, etc, as the syntax is similar
                                            C is very fast, compared to other programming languages, like Java and Python
                                            C is very versatile; it can be used in both applications and technologies

                                        </p>
                                        <!--                                    <div class="tags">
                                                                                <span class="tag">javascript</span>
                                                                                <span class="tag">mutations</span>
                                                                                <span class="tag">observers</span>
                                                                            </div>-->
                                    </div>
                                    <!-- Footer -->
                                    <div class="question-footer">
                                        <div class="likes">

                                        </div>
                                        <div class="report">
                                            <div class="report-icon">
                                                <i data-feather="alert-octagon"></i>
                                            </div>
                                            <span>Report Topic</span>
                                        </div>
                                    </div>
                                    <div class="answers-count">

                                    </div>
                                </div>
                                <!-- c Question 1 end -->

                                <!-- c Question 2 end -->
                                <div class="question-block">
                                    <!-- Title -->
                                    <br>
                                    <a  class="question-title is-link"> C Data Types</a>
                                    <!-- Author -->
                                    <!--                                <div class="question-author">
                                                                        <img src="https://via.placeholder.com/150x150" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" data-user-popover="7" alt="">
                                                                        <div class="meta">
                                                                            <span>Milly Augustine</span>
                                                                            <span>54 minutes ago</span>
                                                                        </div>
                                                                    </div>-->
                                    <!-- Content -->
                                    <div class="question-text">
                                        <br>
                                        <p>
                                        <table class="ws-table-all notranslate">
                                            <tbody><tr>
                                                    <th style="width:15%">Data Type</th>
                                                    <th style="width:15%">Size</th>
                                                    <th style="width:70%">Description</th>
                                                </tr>
                                                <tr>
                                                    <td><code class="w3-codespan" style="padding-left:0">int</code></td>
                                                    <td>2 or 4 bytes</td>
                                                    <td>Stores whole numbers, without decimals</td>
                                                </tr>
                                                <tr>
                                                    <td><code class="w3-codespan" style="padding-left:0;">float</code></td>
                                                    <td>4 bytes</td>
                                                    <td>Stores fractional numbers, containing one or more decimals. Sufficient for 
                                                        storing 6-7 decimal digits</td>
                                                </tr>
                                                <tr>
                                                    <td><code class="w3-codespan" style="padding-left:0">double</code></td>
                                                    <td>8 bytes</td>
                                                    <td>Stores fractional numbers, containing one or more decimals. Sufficient for 
                                                        storing 15 decimal digits</td>
                                                </tr>
                                                <tr>
                                                    <td><code class="w3-codespan" style="padding-left:0">char</code></td>
                                                    <td>1 byte</td>
                                                    <td>Stores a single character/letter/number, or ASCII values</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        </p>
                                        <!--                                    <div class="tags">
                                                                                <span class="tag">javascript</span>
                                                                                <span class="tag">mutations</span>
                                                                                <span class="tag">observers</span>
                                                                            </div>-->
                                    </div>
                                    <!-- Footer -->
                                    <div class="question-footer">
                                        <div class="likes">

                                        </div>
                                        <div class="report">
                                            <div class="report-icon">
                                                <i data-feather="alert-octagon"></i>
                                            </div>
                                            <span>Report Topic</span>
                                        </div>
                                    </div>
                                    <div class="answers-count">

                                    </div>
                                </div>
                                <!-- c Question 2 end -->

                                <!-- c Question 3 start -->
                                <div class="question-block">
                                    <!-- Title -->
                                    <a href="questions-single.html" class="question-title is-link">C Operators</a>
                                    <!-- Author -->
                                    <!--                                <div class="question-author">
                                                                        <img src="https://via.placeholder.com/150x150" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" data-user-popover="7" alt="">
                                                                        <div class="meta">
                                                                            <span>Milly Augustine</span>
                                                                            <span>54 minutes ago</span>
                                                                        </div>
                                                                    </div>-->
                                    <!-- Content -->
                                    <div class="question-text">
                                        <p><br>
                                        <table class="ws-table-all notranslate">
                                            <tbody><tr>
                                                    <th style="width:15%">Operator</th>
                                                    <th style="width:18%">Name</th>
                                                    <th style="width:40%">Description</th>
                                                    <th style="width:17%;">Example</th>

                                                </tr>
                                                <tr>
                                                    <td>+</td>
                                                    <td>Addition</td>
                                                    <td>Adds together two values</td>
                                                    <td>x + y</td>

                                                </tr>
                                                <tr>
                                                    <td>-</td>
                                                    <td>Subtraction</td>
                                                    <td>Subtracts one value from another</td>
                                                    <td>x - y</td>

                                                </tr>
                                                <tr>
                                                    <td>*</td>
                                                    <td>Multiplication</td>
                                                    <td>Multiplies two values</td>
                                                    <td>x * y</td>

                                                </tr>
                                                <tr>
                                                    <td>/</td>
                                                    <td>Division</td>
                                                    <td>Divides one value by another</td>
                                                    <td>x / y</td>

                                                </tr>
                                                <tr>
                                                    <td>%</td>
                                                    <td>Modulus</td>
                                                    <td>Returns the division remainder</td>
                                                    <td>x % y</td>

                                                </tr>
                                                <tr>
                                                    <td>++</td>
                                                    <td>Increment</td>
                                                    <td>Increases the value of a variable by 1</td>
                                                    <td>++x</td>

                                                </tr>
                                                <tr>
                                                    <td>--</td>
                                                    <td>Decrement</td>
                                                    <td>Decreases the value of a variable by 1</td>
                                                    <td>--x</td>

                                                </tr>
                                            </tbody>
                                        </table>
                                        </p>
                                        <!--                                    <div class="tags">
                                                                                <span class="tag">javascript</span>
                                                                                <span class="tag">mutations</span>
                                                                                <span class="tag">observers</span>
                                                                            </div>-->
                                    </div>
                                    <!-- Footer -->
                                    <div class="question-footer">
                                        <div class="likes">

                                        </div>
                                        <div class="report">
                                            <div class="report-icon">
                                                <i data-feather="alert-octagon"></i>
                                            </div>
                                            <span>Report Topic</span>
                                        </div>
                                    </div>
                                    <div class="answers-count">

                                    </div>
                                </div>
                                <!-- c Question 3 end -->

                                <!-- c Question 4 start -->
                                <div class="question-block">
                                    <!-- Title -->
                                    <a href="questions-single.html" class="question-title is-link">C Condition statements</a>
                                    <!-- Author -->
                                    <!--                                <div class="question-author">
                                                                        <img src="https://via.placeholder.com/150x150" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" data-user-popover="7" alt="">
                                                                        <div class="meta">
                                                                            <span>Milly Augustine</span>
                                                                            <span>54 minutes ago</span>
                                                                        </div>
                                                                    </div>-->
                                    <!-- Content -->
                                    <div class="question-text">
                                        <P><br>
                                        <p>C has the following conditional statements:</p>
                                        <ul>
                                            <li>Use <code class="w3-codespan">if</code> to specify a block of code to be executed, if a specified condition is 
                                                <code class="w3-codespan">true</code></li>
                                            <li>Use <code class="w3-codespan">else</code> to specify a block of code to be executed, if the same condition is 
                                                <code class="w3-codespan">false</code></li>
                                            <li>Use <code class="w3-codespan">else if</code> to specify a new condition to test, if the first condition is 
                                                <code class="w3-codespan">false</code></li>
                                            <li>Use <code class="w3-codespan">switch</code> to specify many alternative blocks of code to be executed</li>
                                        </ul>

                                        </P>
                                        <p>
                                            <br>
                                            <b>The if Statement</b>
                                            <br>
                                            <code> if (condition) {<br>
                                                // block of code to be executed if the condition is true<br>
                                                }<br>
                                            </code>
                                        </p>
                                        <br>
                                        <p>
                                            <b>The else Statement</b>
                                            <br>
                                            <code> if (condition) {<br>
                                                // block of code to be executed if the condition is true<br>
                                                } else {<br>
                                                // block of code to be executed if the condition is false<br>
                                                }<br></code>
                                            <br>
                                        </p>
                                        <br>
                                        <p>
                                            <b>The else if Statement</b>
                                            <br>
                                            <code>  if (condition1) {<br>
                                                // block of code to be executed if condition1 is true<br>
                                                } else if (condition2) {<br>
                                                // block of code to be executed if the condition1 is false and condition2 is true<br>
                                                } else {<br>
                                                // block of code to be executed if the condition1 is false and condition2 is false<br>
                                                }<br>
                                            </code
                                        </p>
                                        <br>
                                        <p>
                                            <b> Example</b>
                                            <br>
                                            <code> int time = 22;<br>
                                                if (time < 10) {<br>
                                                printf("Good morning.");<br>
                                                } else if (time < 20) {<br>
                                                printf("Good day.");<br>
                                                } else {<br>
                                                printf("Good evening.");<br>
                                                }<br>
                                                // Outputs "Good evening."<br>
                                            </code>
                                        </p>
                                        <br>
                                        <p>
                                            <b>Short Hand If...Else (Ternary Operator)</b>
                                            <br>
                                            There is also a short-hand if else, which is known as the ternary operator because it consists of three operands. It can be used to replace multiple lines of code with a single line. It is often used to replace simple if else statements.
                                            <br> Syntax:  <br>
                                            <code>variable = (condition) ? expressionTrue : expressionFalse;</code>
                                        </p>
                                        <br>
                                        <p>
                                            <b>  C Switch </b><br>
                                            Instead of writing many if..else statements, you can use the switch statement.
                                            <br>
                                            The switch statement selects one of many code blocks to be executed.
                                            <br>
                                            <b>Syntax: </b><br>
                                            <code>
                                                switch(expression) {<br>
                                                case x:<br>
                                                // code block<br>
                                                break;<br>
                                                case y:<br>
                                                // code block<br>
                                                break;<br>
                                                default:<br>
                                                // code block<br>
                                                }<br>
                                            </code>
                                        </p>
                                        <!--                                    <div class="tags">
                                                                                <span class="tag">javascript</span>
                                                                                <span class="tag">mutations</span>
                                                                                <span class="tag">observers</span>
                                                                            </div>-->
                                    </div>
                                    <!-- Footer -->
                                    <div class="question-footer">
                                        <div class="likes">

                                        </div>
                                        <div class="report">
                                            <div class="report-icon">
                                                <i data-feather="alert-octagon"></i>
                                            </div>
                                            <span>Report Topic</span>
                                        </div>
                                    </div>
                                    <div class="answers-count">

                                    </div>
                                </div>
                                <!-- c Question 4 end -->

                                <!-- c Question 5 start -->
                                <div class="question-block">
                                    <!-- Title --><br>
                                    <a  class="question-title is-link">C looping statements</a><br>
                                    <!-- Author -->
                                    <!--                                <div class="question-author">
                                                                        <img src="https://via.placeholder.com/150x150" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" data-user-popover="7" alt="">
                                                                        <div class="meta">
                                                                            <span>Milly Augustine</span>
                                                                            <span>54 minutes ago</span>
                                                                        </div>
                                                                    </div>-->
                                    <!-- Content -->
                                    <div class="question-text">
                                        <br>
                                        <p>Loops can execute a block of code as long as a specified condition is reached.<br>

                                            Loops are handy because they save time, reduce errors, and they make code more readable.<br>
                                        </p>
                                        <p>
                                            <br>    
                                            <b>  While Loop </b><br>
                                            The while loop loops through a block of code as long as a specified condition is true<br>
                                            <br>
                                            Syntax:<br>
                                            <code>while (condition) {<br>
                                                // code block to be executed/<br>
                                                }<br></code>
                                        </p>
                                        <br>
                                        <p>
                                            <b>The Do/While Loop</b><br>
                                            The do/while loop is a variant of the while loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true.<br>
                                            <br>
                                            Syntax:<br>
                                            <code> do {<br>
                                                // code block to be executed<br>
                                                }<br>
                                                while (condition);<br>  
                                            </code>


                                        </p>
                                        <br>
                                        <p>
                                            <b>  For Loop<br></b>
                                            When you know exactly how many times you want to loop through a block of code, use the for loop instead of a while loop.<br>
                                            Syntax:<br>
                                            <code> for (statement 1; statement 2; statement 3) {<br>
                                                // code block to be executed<br>
                                                }   <br>
                                            </code>
                                        </p>
                                        <p><br>
                                        <u>Break</u><br>
                                        You have already seen the break statement used in an earlier chapter of this tutorial. It was used to "jump out" of a switch statement.<br>

                                        The break statement can also be used to jump out of a loop.<br>
                                        <br>Example: <br>
                                        <code>    int i;<br>
                                            <br>
                                            for (i = 0; i < 10; i++) {<br>
                                            if (i == 4) {<br>
                                            break;<br>
                                            }<br>
                                            printf("%d\n", i);<br>
                                            }  </code> <br>

                                        </p>
                                        <br>
                                        <p>
                                        <u>Continue</u><br>
                                        The continue statement breaks one iteration (in the loop), if a specified condition occurs, and continues with the next iteration in the loop.<br>
                                        <br>Example:<br>
                                        int i;<br>
                                        <br>
                                        <code>for (i = 0; i < 10; i++) {<br>
                                            if (i == 4) {<br>
                                            continue;<br>
                                            }<br>
                                            printf("%d\n", i);<br>
                                            }</code>
                                        </p>
                                        <!--                                    <div class="tags">
                                                                                <span class="tag">javascript</span>
                                                                                <span class="tag">mutations</span>
                                                                                <span class="tag">observers</span>
                                                                            </div>-->
                                    </div>
                                    <!-- Footer -->
                                    <div class="question-footer">
                                        <div class="likes">

                                        </div>
                                        <div class="report">
                                            <div class="report-icon">
                                                <i data-feather="alert-octagon"></i>
                                            </div>
                                            <span>Report Topic</span>
                                        </div>
                                    </div>
                                    <div class="answers-count">

                                    </div>
                                </div>
                                <!-- c Question 5 end -->

                                <!-- c Question 6 start -->
                                <div class="question-block">
                                    <!-- Title -->
                                    <br>
                                    <a href="questions-single.html" class="question-title is-link">C Arrays</a><br>
                                    <!-- Author -->
                                    <!--                                <div class="question-author">
                                                                        <img src="https://via.placeholder.com/150x150" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" data-user-popover="7" alt="">
                                                                        <div class="meta">
                                                                            <span>Milly Augustine</span>
                                                                            <span>54 minutes ago</span>
                                                                        </div>
                                                                    </div>-->
                                    <!-- Content -->
                                    <div class="question-text">
                                        <br>
                                        <p>Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each value.<br>

                                            To create an array, define the data type (like int) and specify the name of the array followed by square brackets [].<br>

                                            To insert values to it, use a comma-separated list, inside curly braces.<br>
                                            <br>
                                        <u>One Dimensional Arrays</u><br>
                                        <code>int myNumbers[] = {25, 50, 75, 100};
                                        </code><br>

                                        </p>
                                        <p>
                                        <br><u>Two-Dimensional Arrays</u></br>
                                        <code>int matrix[2][3] = { {1, 4, 2}, {3, 6, 8} };
                                        </code><br>
                                        </p>
                                        <!--                                    <div class="tags">
                                                                                <span class="tag">javascript</span>
                                                                                <span class="tag">mutations</span>
                                                                                <span class="tag">observers</span>
                                                                            </div>-->
                                    </div>
                                    <!-- Footer -->
                                    <div class="question-footer">
                                        <div class="likes">

                                        </div>
                                        <div class="report">
                                            <div class="report-icon">
                                                <i data-feather="alert-octagon"></i>
                                            </div>
                                            <span>Report Topic</span>
                                        </div>
                                    </div>
                                    <div class="answers-count">

                                    </div>
                                </div>
                                <!--  c Question 6 end -->

                                <!--c questions end-->
                                <!--cpp questions start-->


                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="chat-wrapper">
            <div class="chat-inner">

                <!-- Chat top navigation -->
                <div class="chat-nav">
                    <div class="nav-start">
                        <div class="recipient-block">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/dan.jpg" alt="">
                            </div>
                            <div class="username">
                                <span>Dan Walker</span>
                                <span><i data-feather="star"></i> <span>| Online</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="nav-end">

                        <!-- Settings icon dropdown -->
                        <div class="dropdown is-spaced is-neutral is-right dropdown-trigger">
                            <div>
                                <a class="chat-nav-item is-icon">
                                    <i data-feather="settings"></i>
                                </a>
                            </div>
                            <div class="dropdown-menu" role="menu">
                                <div class="dropdown-content">
                                    <a href="#" class="dropdown-item">
                                        <div class="media">
                                            <i data-feather="message-square"></i>
                                            <div class="media-content">
                                                <h3>Details</h3>
                                                <small>View this conversation's details.</small>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item">
                                        <div class="media">
                                            <i data-feather="settings"></i>
                                            <div class="media-content">
                                                <h3>Preferences</h3>
                                                <small>Define your preferences.</small>
                                            </div>
                                        </div>
                                    </a>
                                    <hr class="dropdown-divider">
                                    <a class="dropdown-item">
                                        <div class="media">
                                            <i data-feather="bell"></i>
                                            <div class="media-content">
                                                <h3>Notifications</h3>
                                                <small>Set notifications settings.</small>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item">
                                        <div class="media">
                                            <i data-feather="bell-off"></i>
                                            <div class="media-content">
                                                <h3>Silence</h3>
                                                <small>Disable notifications.</small>
                                            </div>
                                        </div>
                                    </a>
                                    <hr class="dropdown-divider">
                                    <a class="dropdown-item">
                                        <div class="media">
                                            <i data-feather="box"></i>
                                            <div class="media-content">
                                                <h3>Archive</h3>
                                                <small>Archive this conversation.</small>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item">
                                        <div class="media">
                                            <i data-feather="trash-2"></i>
                                            <div class="media-content">
                                                <h3>Delete</h3>
                                                <small>Delete this conversation.</small>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="chat-search">
                            <div class="control has-icon">
                                <input type="text" class="input" placeholder="Search messages">
                                <div class="form-icon">
                                    <i data-feather="search"></i>
                                </div>
                            </div>
                        </div>
                        <a class="chat-nav-item is-icon is-hidden-mobile">
                            <i data-feather="at-sign"></i>
                        </a>
                        <a class="chat-nav-item is-icon is-hidden-mobile">
                            <i data-feather="star"></i>
                        </a>

                        <!-- More dropdown -->
                        <div class="dropdown is-spaced is-neutral is-right dropdown-trigger">
                            <div>
                                <a class="chat-nav-item is-icon no-margin">
                                    <i data-feather="more-vertical"></i>
                                </a>
                            </div>
                            <div class="dropdown-menu" role="menu">
                                <div class="dropdown-content">
                                    <a href="#" class="dropdown-item">
                                        <div class="media">
                                            <i data-feather="file-text"></i>
                                            <div class="media-content">
                                                <h3>Files</h3>
                                                <small>View all your files.</small>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item">
                                        <div class="media">
                                            <i data-feather="users"></i>
                                            <div class="media-content">
                                                <h3>Users</h3>
                                                <small>View all users you're talking to.</small>
                                            </div>
                                        </div>
                                    </a>
                                    <hr class="dropdown-divider">
                                    <a class="dropdown-item">
                                        <div class="media">
                                            <i data-feather="gift"></i>
                                            <div class="media-content">
                                                <h3>Daily bonus</h3>
                                                <small>Get your daily bonus.</small>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item">
                                        <div class="media">
                                            <i data-feather="download-cloud"></i>
                                            <div class="media-content">
                                                <h3>Downloads</h3>
                                                <small>See all your downloads.</small>
                                            </div>
                                        </div>
                                    </a>
                                    <hr class="dropdown-divider">
                                    <a class="dropdown-item">
                                        <div class="media">
                                            <i data-feather="life-buoy"></i>
                                            <div class="media-content">
                                                <h3>Support</h3>
                                                <small>Reach our support team.</small>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <a class="chat-nav-item is-icon close-chat">
                            <i data-feather="x"></i>
                        </a>
                    </div>
                </div>
                <!-- Chat sidebar -->
                <div id="chat-sidebar" class="users-sidebar">
                    <!-- Header -->
                    <div class="header-item">
                        <img class="light-image" src="../Assets/Template/friendkit/assets/img/logo/friendkit-bold.svg" alt="">
                        <img class="dark-image" src="../Assets/Template/friendkit/assets/img/logo/friendkit-white.svg" alt="">
                    </div>
                    <!-- User list -->
                    <div class="conversations-list has-slimscroll-xs">
                        <!-- User -->
                        <div class="user-item is-active" data-chat-user="dan" data-full-name="Dan Walker" data-status="Online">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/dan.jpg" alt="">
                                <div class="user-status is-online"></div>
                            </div>
                        </div>
                        <!-- User -->
                        <div class="user-item" data-chat-user="stella" data-full-name="Stella Bergmann" data-status="Busy">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/stella.jpg" alt="">
                                <div class="user-status is-busy"></div>
                            </div>
                        </div>
                        <!-- User -->
                        <div class="user-item" data-chat-user="daniel" data-full-name="Daniel Wellington" data-status="Away">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/daniel.jpg" alt="">
                                <div class="user-status is-away"></div>
                            </div>
                        </div>
                        <!-- User -->
                        <div class="user-item" data-chat-user="david" data-full-name="David Kim" data-status="Busy">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/david.jpg" alt="">
                                <div class="user-status is-busy"></div>
                            </div>
                        </div>
                        <!-- User -->
                        <div class="user-item" data-chat-user="edward" data-full-name="Edward Mayers" data-status="Online">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/edward.jpeg" alt="">
                                <div class="user-status is-online"></div>
                            </div>
                        </div>
                        <!-- User -->
                        <div class="user-item" data-chat-user="elise" data-full-name="Elise Walker" data-status="Away">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/elise.jpg" alt="">
                                <div class="user-status is-away"></div>
                            </div>
                        </div>
                        <!-- User -->
                        <div class="user-item" data-chat-user="nelly" data-full-name="Nelly Schwartz" data-status="Busy">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/nelly.png" alt="">
                                <div class="user-status is-busy"></div>
                            </div>
                        </div>
                        <!-- User -->
                        <div class="user-item" data-chat-user="milly" data-full-name="Milly Augustine" data-status="Busy">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" alt="">
                                <div class="user-status is-busy"></div>
                            </div>
                        </div>
                    </div>
                    <!-- Add Conversation -->
                    <div class="footer-item">
                        <div class="add-button modal-trigger" data-modal="add-conversation-modal"><i data-feather="user"></i></div>
                    </div>
                </div>

                <!-- Chat body -->
                <div id="chat-body" class="chat-body is-opened">
                    <!-- Conversation with Dan -->
                    <div id="dan-conversation" class="chat-body-inner has-slimscroll">
                        <div class="date-divider">
                            <hr class="date-divider-line">
                            <span class="date-divider-text">Today</span>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/dan.jpg" alt="">
                            <div class="message-block">
                                <span>8:03am</span>
                                <div class="message-text">Hi Jenna! I made a new design, and i wanted to show it to you.</div>
                            </div>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/dan.jpg" alt="">
                            <div class="message-block">
                                <span>8:03am</span>
                                <div class="message-text">It's quite clean and it's inspired from Bulkit.</div>
                            </div>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>8:12am</span>
                                <div class="message-text">Oh really??! I want to see that.</div>
                            </div>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/dan.jpg" alt="">
                            <div class="message-block">
                                <span>8:13am</span>
                                <div class="message-text">FYI it was done in less than a day.</div>
                            </div>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>8:17am</span>
                                <div class="message-text">Great to hear it. Just send me the PSD files so i can have a look at it.</div>
                            </div>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>8:18am</span>
                                <div class="message-text">And if you have a prototype, you can also send me the link to it.</div>
                            </div>
                        </div>
                    </div>
                    <!-- Conversation with Stella -->
                    <div id="stella-conversation" class="chat-body-inner has-slimscroll is-hidden">
                        <div class="date-divider">
                            <hr class="date-divider-line">
                            <span class="date-divider-text">Today</span>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>10:34am</span>
                                <div class="message-text">Hey Stella! Aren't we supposed to go the theatre after work?.</div>
                            </div>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>10:37am</span>
                                <div class="message-text">Just remembered it.</div>
                            </div>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/stella.jpg" alt="">
                            <div class="message-block">
                                <span>11:22am</span>
                                <div class="message-text">Yeah you always do that, forget about everything.</div>
                            </div>
                        </div>
                    </div>
                    <!-- Conversation with Daniel -->
                    <div id="daniel-conversation" class="chat-body-inner has-slimscroll is-hidden">
                        <div class="date-divider">
                            <hr class="date-divider-line">
                            <span class="date-divider-text">Yesterday</span>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>3:24pm</span>
                                <div class="message-text">Daniel, Amanda told me about your issue, how can I help?</div>
                            </div>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/daniel.jpg" alt="">
                            <div class="message-block">
                                <span>3:42pm</span>
                                <div class="message-text">Hey Jenna, thanks for answering so quickly. Iam stuck, i need a car.</div>
                            </div>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/daniel.jpg" alt="">
                            <div class="message-block">
                                <span>3:43pm</span>
                                <div class="message-text">Can i borrow your car for a quick ride to San Fransisco? Iam running behind and
                                    there' no train in sight.</div>
                            </div>
                        </div>
                    </div>
                    <!-- Conversation with David -->
                    <div id="david-conversation" class="chat-body-inner has-slimscroll is-hidden">
                        <div class="date-divider">
                            <hr class="date-divider-line">
                            <span class="date-divider-text">Today</span>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>12:34pm</span>
                                <div class="message-text">Damn you! Why would you even implement this in the game?.</div>
                            </div>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>12:32pm</span>
                                <div class="message-text">I just HATE aliens.</div>
                            </div>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/david.jpg" alt="">
                            <div class="message-block">
                                <span>13:09pm</span>
                                <div class="message-text">C'mon, you just gotta learn the tricks. You can't expect aliens to behave like
                                    humans. I mean that's how the mechanics are.</div>
                            </div>
                        </div>
                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/david.jpg" alt="">
                            <div class="message-block">
                                <span>13:11pm</span>
                                <div class="message-text">I checked the replay and for example, you always get supply blocked. That's not
                                    the right thing to do.</div>
                            </div>
                        </div>
                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>13:12pm</span>
                                <div class="message-text">I know but i struggle when i have to decide what to make from larvas.</div>
                            </div>
                        </div>
                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/david.jpg" alt="">
                            <div class="message-block">
                                <span>13:17pm</span>
                                <div class="message-text">Join me in game, i'll show you.</div>
                            </div>
                        </div>
                    </div>
                    <!-- Conversation with Edward -->
                    <div id="edward-conversation" class="chat-body-inner has-slimscroll">
                        <div class="date-divider">
                            <hr class="date-divider-line">
                            <span class="date-divider-text">Monday</span>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/edward.jpeg" alt="">
                            <div class="message-block">
                                <span>4:55pm</span>
                                <div class="message-text">Hey Jenna, what's up?</div>
                            </div>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/edward.jpeg" alt="">
                            <div class="message-block">
                                <span>4:56pm</span>
                                <div class="message-text">Iam coming to LA tomorrow. Interested in having lunch?</div>
                            </div>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>5:21pm</span>
                                <div class="message-text">Hey mate, it's been a while. Sure I would love to.</div>
                            </div>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/edward.jpeg" alt="">
                            <div class="message-block">
                                <span>5:27pm</span>
                                <div class="message-text">Ok. Let's say i pick you up at 12:30 at work, works?</div>
                            </div>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>5:43pm</span>
                                <div class="message-text">Yup, that works great.</div>
                            </div>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>5:44pm</span>
                                <div class="message-text">And yeah, don't forget to bring some of my favourite cheese cake.</div>
                            </div>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/edward.jpeg" alt="">
                            <div class="message-block">
                                <span>5:27pm</span>
                                <div class="message-text">No worries</div>
                            </div>
                        </div>
                    </div>
                    <!-- Conversation with Edward -->
                    <div id="elise-conversation" class="chat-body-inner has-slimscroll is-hidden">
                        <div class="date-divider">
                            <hr class="date-divider-line">
                            <span class="date-divider-text">September 28</span>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>11:53am</span>
                                <div class="message-text">Elise, i forgot my folder at your place yesterday.</div>
                            </div>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>11:53am</span>
                                <div class="message-text">I need it badly, it's work stuff.</div>
                            </div>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/elise.jpg" alt="">
                            <div class="message-block">
                                <span>12:19pm</span>
                                <div class="message-text">Yeah i noticed. I'll drop it in half an hour at your office.</div>
                            </div>
                        </div>
                    </div>
                    <!-- Conversation with Nelly -->
                    <div id="nelly-conversation" class="chat-body-inner has-slimscroll is-hidden">
                        <div class="date-divider">
                            <hr class="date-divider-line">
                            <span class="date-divider-text">September 17</span>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>8:22pm</span>
                                <div class="message-text">So you watched the movie?</div>
                            </div>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>8:22pm</span>
                                <div class="message-text">Was it scary?</div>
                            </div>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/nelly.png" alt="">
                            <div class="message-block">
                                <span>9:03pm</span>
                                <div class="message-text">It was so frightening, i felt my heart was about to blow inside my chest.</div>
                            </div>
                        </div>
                    </div>
                    <!-- Conversation with Milly -->
                    <div id="milly-conversation" class="chat-body-inner has-slimscroll">
                        <div class="date-divider">
                            <hr class="date-divider-line">
                            <span class="date-divider-text">Today</span>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" alt="">
                            <div class="message-block">
                                <span>2:01pm</span>
                                <div class="message-text">Hello Jenna, did you read my proposal?</div>
                            </div>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" alt="">
                            <div class="message-block">
                                <span>2:01pm</span>
                                <div class="message-text">Didn't hear from you since i sent it.</div>
                            </div>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>2:02pm</span>
                                <div class="message-text">Hello Milly, Iam really sorry, Iam so busy recently, but i had the time to read
                                    it.</div>
                            </div>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" alt="">
                            <div class="message-block">
                                <span>2:04pm</span>
                                <div class="message-text">And what did you think about it?</div>
                            </div>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>2:05pm</span>
                                <div class="message-text">Actually it's quite good, there might be some small changes but overall it's
                                    great.</div>
                            </div>
                        </div>

                        <div class="chat-message is-sent">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/jenna.png" alt="">
                            <div class="message-block">
                                <span>2:07pm</span>
                                <div class="message-text">I think that i can give it to my boss at this stage.</div>
                            </div>
                        </div>

                        <div class="chat-message is-received">
                            <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" alt="">
                            <div class="message-block">
                                <span>2:09pm</span>
                                <div class="message-text">Crossing fingers then</div>
                            </div>
                        </div>
                    </div>
                    <!-- Compose message area -->
                    <div class="chat-action">
                        <div class="chat-action-inner">
                            <div class="control">
                                <textarea class="textarea comment-textarea" rows="1"></textarea>
                                <div class="dropdown compose-dropdown is-spaced is-accent is-up dropdown-trigger">
                                    <div>
                                        <div class="add-button">
                                            <div class="button-inner">
                                                <i data-feather="plus"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dropdown-menu" role="menu">
                                        <div class="dropdown-content">
                                            <a href="#" class="dropdown-item">
                                                <div class="media">
                                                    <i data-feather="code"></i>
                                                    <div class="media-content">
                                                        <h3>Code snippet</h3>
                                                        <small>Add and paste a code snippet.</small>
                                                    </div>
                                                </div>
                                            </a>
                                            <a class="dropdown-item">
                                                <div class="media">
                                                    <i data-feather="file-text"></i>
                                                    <div class="media-content">
                                                        <h3>Note</h3>
                                                        <small>Add and paste a note.</small>
                                                    </div>
                                                </div>
                                            </a>
                                            <hr class="dropdown-divider">
                                            <a class="dropdown-item">
                                                <div class="media">
                                                    <i data-feather="server"></i>
                                                    <div class="media-content">
                                                        <h3>Remote file</h3>
                                                        <small>Add a file from a remote drive.</small>
                                                    </div>
                                                </div>
                                            </a>
                                            <a class="dropdown-item">
                                                <div class="media">
                                                    <i data-feather="monitor"></i>
                                                    <div class="media-content">
                                                        <h3>Local file</h3>
                                                        <small>Add a file from your computer.</small>
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

                <div id="chat-panel" class="chat-panel is-opened">
                    <div class="panel-inner">
                        <div class="panel-header">
                            <h3>Details</h3>
                            <div class="panel-close">
                                <i data-feather="x"></i>
                            </div>
                        </div>

                        <!-- Dan details -->
                        <div id="dan-details" class="panel-body is-user-details">
                            <div class="panel-body-inner">

                                <div class="subheader">
                                    <div class="action-icon">
                                        <i class="mdi mdi-video"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-camera"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-microphone"></i>
                                    </div>
                                    <div class="dropdown details-dropdown is-spaced is-neutral is-right dropdown-trigger ml-auto">
                                        <div>
                                            <div class="action-icon">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </div>
                                        </div>
                                        <div class="dropdown-menu" role="menu">
                                            <div class="dropdown-content">
                                                <a href="#" class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="user"></i>
                                                        <div class="media-content">
                                                            <h3>View profile</h3>
                                                            <small>View this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="mail"></i>
                                                        <div class="media-content">
                                                            <h3>Send message</h3>
                                                            <small>Send a message to the user's inbox.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <hr class="dropdown-divider">
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="share-2"></i>
                                                        <div class="media-content">
                                                            <h3>Share profile</h3>
                                                            <small>Share this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="x"></i>
                                                        <div class="media-content">
                                                            <h3>Block user</h3>
                                                            <small>Block this user permanently.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="details-avatar">
                                    <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/dan.jpg" alt="">
                                    <div class="call-me">
                                        <i class="mdi mdi-phone"></i>
                                    </div>
                                </div>

                                <div class="user-meta has-text-centered">
                                    <h3>Dan Walker</h3>
                                    <h4>IOS Developer</h4>
                                </div>

                                <div class="user-badges">
                                    <div class="hexagon is-red">
                                        <div>
                                            <i class="mdi mdi-heart"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-green">
                                        <div>
                                            <i class="mdi mdi-dog"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-accent">
                                        <div>
                                            <i class="mdi mdi-flash"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-blue">
                                        <div>
                                            <i class="mdi mdi-briefcase"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="user-about">
                                    <label>About Me</label>
                                    <div class="about-block">
                                        <i class="mdi mdi-domain"></i>
                                        <div class="about-text">
                                            <span>Works at</span>
                                            <span><a class="is-inverted" href="#">WebSmash Inc.</a></span>
                                        </div>
                                    </div>
                                    <div class="about-block">
                                        <i class="mdi mdi-school"></i>
                                        <div class="about-text">
                                            <span>Studied at</span>
                                            <span><a class="is-inverted" href="#">Riverdale University</a></span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- Stella details -->
                        <div id="stella-details" class="panel-body is-user-details is-hidden">
                            <div class="panel-body-inner">

                                <div class="subheader">
                                    <div class="action-icon">
                                        <i class="mdi mdi-video"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-camera"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-microphone"></i>
                                    </div>
                                    <div class="dropdown details-dropdown is-spaced is-neutral is-right dropdown-trigger ml-auto">
                                        <div>
                                            <div class="action-icon">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </div>
                                        </div>
                                        <div class="dropdown-menu" role="menu">
                                            <div class="dropdown-content">
                                                <a href="#" class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="user"></i>
                                                        <div class="media-content">
                                                            <h3>View profile</h3>
                                                            <small>View this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="mail"></i>
                                                        <div class="media-content">
                                                            <h3>Send message</h3>
                                                            <small>Send a message to the user's inbox.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <hr class="dropdown-divider">
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="share-2"></i>
                                                        <div class="media-content">
                                                            <h3>Share profile</h3>
                                                            <small>Share this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="x"></i>
                                                        <div class="media-content">
                                                            <h3>Block user</h3>
                                                            <small>Block this user permanently.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="details-avatar">
                                    <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/stella.jpg" alt="">
                                    <div class="call-me">
                                        <i class="mdi mdi-phone"></i>
                                    </div>
                                </div>

                                <div class="user-meta has-text-centered">
                                    <h3>Stella Bergmann</h3>
                                    <h4>Shop Owner</h4>
                                </div>

                                <div class="user-badges">
                                    <div class="hexagon is-purple">
                                        <div>
                                            <i class="mdi mdi-bomb"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-red">
                                        <div>
                                            <i class="mdi mdi-check-decagram"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-accent">
                                        <div>
                                            <i class="mdi mdi-flash"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="user-about">
                                    <label>About Me</label>
                                    <div class="about-block">
                                        <i class="mdi mdi-domain"></i>
                                        <div class="about-text">
                                            <span>Works at</span>
                                            <span><a class="is-inverted" href="#">Trending Fashions</a></span>
                                        </div>
                                    </div>
                                    <div class="about-block">
                                        <i class="mdi mdi-map-marker"></i>
                                        <div class="about-text">
                                            <span>From</span>
                                            <span><a class="is-inverted" href="#">Oklahoma City</a></span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- Daniel details -->
                        <div id="daniel-details" class="panel-body is-user-details is-hidden">
                            <div class="panel-body-inner">

                                <div class="subheader">
                                    <div class="action-icon">
                                        <i class="mdi mdi-video"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-camera"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-microphone"></i>
                                    </div>
                                    <div class="dropdown details-dropdown is-spaced is-neutral is-right dropdown-trigger ml-auto">
                                        <div>
                                            <div class="action-icon">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </div>
                                        </div>
                                        <div class="dropdown-menu" role="menu">
                                            <div class="dropdown-content">
                                                <a href="#" class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="user"></i>
                                                        <div class="media-content">
                                                            <h3>View profile</h3>
                                                            <small>View this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="mail"></i>
                                                        <div class="media-content">
                                                            <h3>Send message</h3>
                                                            <small>Send a message to the user's inbox.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <hr class="dropdown-divider">
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="share-2"></i>
                                                        <div class="media-content">
                                                            <h3>Share profile</h3>
                                                            <small>Share this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="x"></i>
                                                        <div class="media-content">
                                                            <h3>Block user</h3>
                                                            <small>Block this user permanently.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="details-avatar">
                                    <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/daniel.jpg" alt="">
                                    <div class="call-me">
                                        <i class="mdi mdi-phone"></i>
                                    </div>
                                </div>

                                <div class="user-meta has-text-centered">
                                    <h3>Daniel Wellington</h3>
                                    <h4>Senior Executive</h4>
                                </div>

                                <div class="user-badges">
                                    <div class="hexagon is-accent">
                                        <div>
                                            <i class="mdi mdi-google-cardboard"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-blue">
                                        <div>
                                            <i class="mdi mdi-pizza"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-accent">
                                        <div>
                                            <i class="mdi mdi-linux"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-red">
                                        <div>
                                            <i class="mdi mdi-puzzle"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="user-about">
                                    <label>About Me</label>
                                    <div class="about-block">
                                        <i class="mdi mdi-domain"></i>
                                        <div class="about-text">
                                            <span>Works at</span>
                                            <span><a class="is-inverted" href="#">Peelman & Sons</a></span>
                                        </div>
                                    </div>
                                    <div class="about-block">
                                        <i class="mdi mdi-map-marker"></i>
                                        <div class="about-text">
                                            <span>From</span>
                                            <span><a class="is-inverted" href="#">Los Angeles</a></span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- David details -->
                        <div id="david-details" class="panel-body is-user-details is-hidden">
                            <div class="panel-body-inner">

                                <div class="subheader">
                                    <div class="action-icon">
                                        <i class="mdi mdi-video"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-camera"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-microphone"></i>
                                    </div>
                                    <div class="dropdown details-dropdown is-spaced is-neutral is-right dropdown-trigger ml-auto">
                                        <div>
                                            <div class="action-icon">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </div>
                                        </div>
                                        <div class="dropdown-menu" role="menu">
                                            <div class="dropdown-content">
                                                <a href="#" class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="user"></i>
                                                        <div class="media-content">
                                                            <h3>View profile</h3>
                                                            <small>View this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="mail"></i>
                                                        <div class="media-content">
                                                            <h3>Send message</h3>
                                                            <small>Send a message to the user's inbox.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <hr class="dropdown-divider">
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="share-2"></i>
                                                        <div class="media-content">
                                                            <h3>Share profile</h3>
                                                            <small>Share this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="x"></i>
                                                        <div class="media-content">
                                                            <h3>Block user</h3>
                                                            <small>Block this user permanently.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="details-avatar">
                                    <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/david.jpg" alt="">
                                    <div class="call-me">
                                        <i class="mdi mdi-phone"></i>
                                    </div>
                                </div>

                                <div class="user-meta has-text-centered">
                                    <h3>David Kim</h3>
                                    <h4>Senior Developer</h4>
                                </div>

                                <div class="user-badges">
                                    <div class="hexagon is-red">
                                        <div>
                                            <i class="mdi mdi-heart"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-green">
                                        <div>
                                            <i class="mdi mdi-dog"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-accent">
                                        <div>
                                            <i class="mdi mdi-flash"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-blue">
                                        <div>
                                            <i class="mdi mdi-briefcase"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="user-about">
                                    <label>About Me</label>
                                    <div class="about-block">
                                        <i class="mdi mdi-domain"></i>
                                        <div class="about-text">
                                            <span>Works at</span>
                                            <span><a class="is-inverted" href="#">Frost Entertainment</a></span>
                                        </div>
                                    </div>
                                    <div class="about-block">
                                        <i class="mdi mdi-map-marker"></i>
                                        <div class="about-text">
                                            <span>From</span>
                                            <span><a class="is-inverted" href="#">Chicago</a></span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- Edward details -->
                        <div id="edward-details" class="panel-body is-user-details is-hidden">
                            <div class="panel-body-inner">

                                <div class="subheader">
                                    <div class="action-icon">
                                        <i class="mdi mdi-video"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-camera"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-microphone"></i>
                                    </div>
                                    <div class="dropdown details-dropdown is-spaced is-neutral is-right dropdown-trigger ml-auto">
                                        <div>
                                            <div class="action-icon">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </div>
                                        </div>
                                        <div class="dropdown-menu" role="menu">
                                            <div class="dropdown-content">
                                                <a href="#" class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="user"></i>
                                                        <div class="media-content">
                                                            <h3>View profile</h3>
                                                            <small>View this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="mail"></i>
                                                        <div class="media-content">
                                                            <h3>Send message</h3>
                                                            <small>Send a message to the user's inbox.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <hr class="dropdown-divider">
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="share-2"></i>
                                                        <div class="media-content">
                                                            <h3>Share profile</h3>
                                                            <small>Share this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="x"></i>
                                                        <div class="media-content">
                                                            <h3>Block user</h3>
                                                            <small>Block this user permanently.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="details-avatar">
                                    <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/edward.jpeg" alt="">
                                    <div class="call-me">
                                        <i class="mdi mdi-phone"></i>
                                    </div>
                                </div>

                                <div class="user-meta has-text-centered">
                                    <h3>Edward Mayers</h3>
                                    <h4>Financial analyst</h4>
                                </div>

                                <div class="user-badges">
                                    <div class="hexagon is-red">
                                        <div>
                                            <i class="mdi mdi-heart"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-green">
                                        <div>
                                            <i class="mdi mdi-dog"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-accent">
                                        <div>
                                            <i class="mdi mdi-flash"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="user-about">
                                    <label>About Me</label>
                                    <div class="about-block">
                                        <i class="mdi mdi-domain"></i>
                                        <div class="about-text">
                                            <span>Works at</span>
                                            <span><a class="is-inverted" href="#">Brettmann Bank</a></span>
                                        </div>
                                    </div>
                                    <div class="about-block">
                                        <i class="mdi mdi-map-marker"></i>
                                        <div class="about-text">
                                            <span>From</span>
                                            <span><a class="is-inverted" href="#">Santa Fe</a></span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- Elise details -->
                        <div id="elise-details" class="panel-body is-user-details is-hidden">
                            <div class="panel-body-inner">

                                <div class="subheader">
                                    <div class="action-icon">
                                        <i class="mdi mdi-video"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-camera"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-microphone"></i>
                                    </div>
                                    <div class="dropdown details-dropdown is-spaced is-neutral is-right dropdown-trigger ml-auto">
                                        <div>
                                            <div class="action-icon">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </div>
                                        </div>
                                        <div class="dropdown-menu" role="menu">
                                            <div class="dropdown-content">
                                                <a href="#" class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="user"></i>
                                                        <div class="media-content">
                                                            <h3>View profile</h3>
                                                            <small>View this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="mail"></i>
                                                        <div class="media-content">
                                                            <h3>Send message</h3>
                                                            <small>Send a message to the user's inbox.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <hr class="dropdown-divider">
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="share-2"></i>
                                                        <div class="media-content">
                                                            <h3>Share profile</h3>
                                                            <small>Share this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="x"></i>
                                                        <div class="media-content">
                                                            <h3>Block user</h3>
                                                            <small>Block this user permanently.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="details-avatar">
                                    <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/elise.jpg" alt="">
                                    <div class="call-me">
                                        <i class="mdi mdi-phone"></i>
                                    </div>
                                </div>

                                <div class="user-meta has-text-centered">
                                    <h3>Elise Walker</h3>
                                    <h4>Social influencer</h4>
                                </div>

                                <div class="user-badges">
                                    <div class="hexagon is-red">
                                        <div>
                                            <i class="mdi mdi-heart"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-accent">
                                        <div>
                                            <i class="mdi mdi-flash"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="user-about">
                                    <label>About Me</label>
                                    <div class="about-block">
                                        <i class="mdi mdi-domain"></i>
                                        <div class="about-text">
                                            <span>Works at</span>
                                            <span><a class="is-inverted" href="#">Social Media</a></span>
                                        </div>
                                    </div>
                                    <div class="about-block">
                                        <i class="mdi mdi-map-marker"></i>
                                        <div class="about-text">
                                            <span>From</span>
                                            <span><a class="is-inverted" href="#">London</a></span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- Nelly details -->
                        <div id="nelly-details" class="panel-body is-user-details is-hidden">
                            <div class="panel-body-inner">

                                <div class="subheader">
                                    <div class="action-icon">
                                        <i class="mdi mdi-video"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-camera"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-microphone"></i>
                                    </div>
                                    <div class="dropdown details-dropdown is-spaced is-neutral is-right dropdown-trigger ml-auto">
                                        <div>
                                            <div class="action-icon">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </div>
                                        </div>
                                        <div class="dropdown-menu" role="menu">
                                            <div class="dropdown-content">
                                                <a href="#" class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="user"></i>
                                                        <div class="media-content">
                                                            <h3>View profile</h3>
                                                            <small>View this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="mail"></i>
                                                        <div class="media-content">
                                                            <h3>Send message</h3>
                                                            <small>Send a message to the user's inbox.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <hr class="dropdown-divider">
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="share-2"></i>
                                                        <div class="media-content">
                                                            <h3>Share profile</h3>
                                                            <small>Share this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="x"></i>
                                                        <div class="media-content">
                                                            <h3>Block user</h3>
                                                            <small>Block this user permanently.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="details-avatar">
                                    <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/nelly.png" alt="">
                                    <div class="call-me">
                                        <i class="mdi mdi-phone"></i>
                                    </div>
                                </div>

                                <div class="user-meta has-text-centered">
                                    <h3>Nelly Schwartz</h3>
                                    <h4>HR Manager</h4>
                                </div>

                                <div class="user-badges">
                                    <div class="hexagon is-red">
                                        <div>
                                            <i class="mdi mdi-heart"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-green">
                                        <div>
                                            <i class="mdi mdi-dog"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-accent">
                                        <div>
                                            <i class="mdi mdi-flash"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-blue">
                                        <div>
                                            <i class="mdi mdi-briefcase"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="user-about">
                                    <label>About Me</label>
                                    <div class="about-block">
                                        <i class="mdi mdi-domain"></i>
                                        <div class="about-text">
                                            <span>Works at</span>
                                            <span><a class="is-inverted" href="#">Carrefour</a></span>
                                        </div>
                                    </div>
                                    <div class="about-block">
                                        <i class="mdi mdi-map-marker"></i>
                                        <div class="about-text">
                                            <span>From</span>
                                            <span><a class="is-inverted" href="#">Melbourne</a></span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- Milly details -->
                        <div id="milly-details" class="panel-body is-user-details is-hidden">
                            <div class="panel-body-inner">

                                <div class="subheader">
                                    <div class="action-icon">
                                        <i class="mdi mdi-video"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-camera"></i>
                                    </div>
                                    <div class="action-icon">
                                        <i class="mdi mdi-microphone"></i>
                                    </div>
                                    <div class="dropdown details-dropdown is-spaced is-neutral is-right dropdown-trigger ml-auto">
                                        <div>
                                            <div class="action-icon">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </div>
                                        </div>
                                        <div class="dropdown-menu" role="menu">
                                            <div class="dropdown-content">
                                                <a href="#" class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="user"></i>
                                                        <div class="media-content">
                                                            <h3>View profile</h3>
                                                            <small>View this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="mail"></i>
                                                        <div class="media-content">
                                                            <h3>Send message</h3>
                                                            <small>Send a message to the user's inbox.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <hr class="dropdown-divider">
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="share-2"></i>
                                                        <div class="media-content">
                                                            <h3>Share profile</h3>
                                                            <small>Share this user's profile.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item">
                                                    <div class="media">
                                                        <i data-feather="x"></i>
                                                        <div class="media-content">
                                                            <h3>Block user</h3>
                                                            <small>Block this user permanently.</small>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="details-avatar">
                                    <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" alt="">
                                    <div class="call-me">
                                        <i class="mdi mdi-phone"></i>
                                    </div>
                                </div>

                                <div class="user-meta has-text-centered">
                                    <h3>Milly Augustine</h3>
                                    <h4>Sales Manager</h4>
                                </div>

                                <div class="user-badges">
                                    <div class="hexagon is-red">
                                        <div>
                                            <i class="mdi mdi-heart"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-green">
                                        <div>
                                            <i class="mdi mdi-dog"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-accent">
                                        <div>
                                            <i class="mdi mdi-flash"></i>
                                        </div>
                                    </div>
                                    <div class="hexagon is-blue">
                                        <div>
                                            <i class="mdi mdi-briefcase"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="user-about">
                                    <label>About Me</label>
                                    <div class="about-block">
                                        <i class="mdi mdi-domain"></i>
                                        <div class="about-text">
                                            <span>Works at</span>
                                            <span><a class="is-inverted" href="#">Salesforce</a></span>
                                        </div>
                                    </div>
                                    <div class="about-block">
                                        <i class="mdi mdi-map-marker"></i>
                                        <div class="about-text">
                                            <span>From</span>
                                            <span><a class="is-inverted" href="#">Seattle</a></span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="add-conversation-modal" class="modal add-conversation-modal is-xsmall has-light-bg">
            <div class="modal-background"></div>
            <div class="modal-content">

                <div class="card">
                    <div class="card-heading">
                        <h3>New Conversation</h3>
                        <!-- Close X button -->
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
        </div>
        <div class="explorer-menu">
            <div class="explorer-inner">
                <div class="explorer-container">
                    <!--Header-->
                    <div class="explorer-header">
                        <h3>Explore</h3>
                        <div class="control">
                            <input type="text" class="input is-rounded is-fade" placeholder="Filter">
                            <div class="form-icon">
                                <i data-feather="filter"></i>
                            </div>
                        </div>
                    </div>
                    <!--List-->
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
                </div>
            </div>
        </div>
        <!-- Concatenated js plugins and jQuery -->
        <script src="../Assets/Template/friendkit/assets/js/app.js"></script>
        <script src="https://js.stripe.com/v3/"></script>
        <script src="../Assets/Template/friendkit/assets/data/tipuedrop_content.js"></script>

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

        <!-- profile js -->

        <!-- stories js -->

        <!-- friends js -->

        <!-- questions js -->
        <script src="../Assets/Template/friendkit/assets/js/questions.js"></script>

        <!-- video js -->

        <!-- events js -->

        <!-- news js -->

        <!-- shop js -->

        <!-- inbox js -->

        <!-- settings js -->

        <!-- map page js -->

        <!-- elements page js -->
        <script>
                            function getTut(did)
                            {
                                $.ajax({
                                    url: "../Assets/AjaxPages/AjaxTutorial.jsp?divname=" + did,
                                    success: function(html) {
                                        $("#tutContent").html(html);
                                        //alert(html);
                                    }
                                });
                            }
        </script>
    </body>

</html>