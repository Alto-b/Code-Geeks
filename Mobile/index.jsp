
<!DOCTYPE html>
<html lang="en">
    <%@page import="java.sql.ResultSet" %>
    <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta http-equiv="x-ua-compatible" content="ie=edge">

            <title> CODE GEEKS | Login</title>
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

            if (request.getParameter("btn_submit") != null) {

                String selQry3 = "select * from tbl_admin where admin_name='" + request.getParameter("txt_name") + "' and admin_password='" + request.getParameter("txt_password") + "'";
                ResultSet rs3 = con.selectCommand(selQry3);

                String selQry1 = "select * from tbl_guide where guide_name='" + request.getParameter("txt_name") + "' and guide_password='" + request.getParameter("txt_password") + "' and guide_status='1'";
                ResultSet rs1 = con.selectCommand(selQry1);
                //                System.out.print(selQry1);

                String selQry2 = "select * from tbl_user where user_email='" + request.getParameter("txt_name") + "' and user_password='" + request.getParameter("txt_password") + "'";
                ResultSet rs2 = con.selectCommand(selQry2);

                if (rs1.next()) {
                    String up = "update tbl_guide set online_status='1' where guide_id='" + rs1.getString("guide_id") + "'";
                    con.executeCommand(up);
                    session.setAttribute("gid", rs1.getString("guide_id"));
                    response.sendRedirect("../Guide/GuideDashboard.jsp");
                } else if (rs2.next()) {
                    String up2 = "update tbl_user set online_status='1' where user_id='" + rs2.getString("user_id") + "'";
                    con.executeCommand(up2);
                    session.setAttribute("uid", rs2.getString("user_id"));
                    session.setAttribute("uphoto", rs2.getString("user_photo"));
                    session.setAttribute("uname", rs2.getString("user_name"));
                    response.sendRedirect("HomePageM.jsp");
                } else if (rs3.next()) {
                    session.setAttribute("aid", rs3.getString("admin_id"));
                    response.sendRedirect("../Admin/AdminDashboard.jsp");
                } else {
        %>
        <script>
            alert("Invalid Credetials");
            window.location = "index.jsp";
        </script>
        <%
                }
            }

        %>
        <style>

            @keyframes fade {
                from {
                    opacity: 0.4;
                }
                to {
                    opacity: 1;
                }
            }


            #slider {
                margin: 0 auto;
                width: 80%;
                overflow: hidden;
            }

            .slides {
                overflow: hidden;
                animation-name: fade;
                animation-duration: 1s;
                display: none;
            }

          

            .active {
                background: black;
            }

            @media (max-width: 567px) {
                #slider {
                    width: 100%;
                }
            }


        </style>

    </head>

    <body class="is-white">
        <form method="POST">
            <!-- Google Tag Manager (noscript) -->
            <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KQHJPZP" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
            <!-- End Google Tag Manager (noscript) -->

            <!-- Pageloader -->
            <div class="pageloader"></div>
            <div class="infraloader is-active"></div>
            <div class="login-wrapper">

                <!-- Main Wrapper -->
                <div class="login-wrapper columns is-gapless">
                    <!--Left Side (Desktop Only)-->
                    <div class="column is-6 is-hidden-mobile hero-banner">
                        <div class="hero is-fullheight is-login">
                            <div class="hero-body">
                                <div class="container">
                                    <div class="left-caption">
                                        <h2>CODE GEEKS</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Right Side-->
                    <div class="column is-6">
                        <div class="hero form-hero is-fullheight">
                            <!--Logo-->
                            <div class="logo-wrap">

                                <div id="slider">
                                    <div class="slides">
                                        <img src="../Assets/Files/LangLogo/HTML.png"  />
                                    </div>

                                    <div class="slides">
                                        <img src="../Assets/Files/LangLogo/C.png"  />
                                    </div>

                                    <div class="slides">
                                        <img src="../Assets/Files/LangLogo/cpp.png"  />
                                    </div>

                                    <div class="slides">
                                        <img src="../Assets/Files/LangLogo/java.png"  />
                                    </div>


                                    <div class="slides">
                                        <img src="../Assets/Files/LangLogo/Swift.png" />
                                    </div>

                                    <div class="slides">
                                        <img src="../Assets/Files/LangLogo/php.png" />
                                    </div>
                                </div>
                            </div>
                            <!--Login Form-->
                            <div class="hero-body">
                                <div class="form-wrapper">
                                    <!--Avatar-->
                                    <div class="avatar">
                                        <!--<div class="badge">-->
                                        <!--<i data-feather="check"></i>-->
                                        <!--</div>-->
                                        <img src="../Assets/Files/Posters/0f8b2870896edcde8f6149fe2733faaf.jpg" alt="">
                                    </div>
                                    <!--Form-->
                                    <div class="login-form">
                                        <div class="field">
                                            <div class="control">
                                                <input type="text" name="txt_name" class="input" placeholder="Enter your email address">
                                                <div class="input-icon">
                                                    <i data-feather="user"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="field">
                                            <div class="control">
                                                <input type="password" name="txt_password" class="input" placeholder="Enter your password">
                                                <div class="input-icon">
                                                    <i data-feather="lock"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="field">
                                            <div class="control">
                                                <button type="submit" name="btn_submit" class="button is-solid primary-button is-fullwidth raised">Login</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="section forgot-password">
                                        <div class="has-text-centered">
                                            <a href="../Guest/newRegistration.jsp">Don't have an account? Sign Up</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script>
                var index = 0;
                var slides = document.querySelectorAll(".slides");

                function changeSlide() {
                    if (index < 0) {
                        index = slides.length - 1;
                    }

                    if (index > slides.length - 1) {
                        index = 0;
                    }

                    for (let i = 0; i < slides.length; i++) {
                        slides[i].style.display = "none";

                    }

                    slides[index].style.display = "block";


                    index++;

                    setTimeout(changeSlide, 2000);
                }

                changeSlide();

            </script>
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

            <!-- video js -->

            <!-- events js -->

            <!-- news js -->

            <!-- shop js -->

            <!-- inbox js -->

            <!-- settings js -->

            <!-- map page js -->

            <!-- elements page js -->
        </form>
    </body>

</html>