<%-- 
    Document   : Chat
    Created on : May 8, 2021, 4:07:26 PM
    Author     : Pro-TECH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
    <%@include file="../SessionValidator.jsp"%>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">

        <title>Chat</title>
        <link rel="icon" type="image/png" href="../../Assets/Template/friendkit/assets/img/favicon.png" />
        <!-- Fonts -->
        <link href="https://fonts.googleapis. com/css?family=Roboto:400,500" rel="stylesheet">
        <!-- Core CSS -->
        <link rel="stylesheet" href="../../Assets/Template/friendkit/assets/css/app.css">
        <link rel="stylesheet" href="../../Assets/Template/friendkit/assets/css/core.css">

        <%
    String sel = "select * from tbl_guide where guide_id='" + session.getAttribute("gid") + "'";
    ResultSet rs=con.selectCommand(sel);
    rs.next();
%>
    </head>

    <body>

        <!-- Pageloader -->
        <div class="pageloader"></div>
        <div class="infraloader is-active"></div>

        <div class="chat-wrapper is-standalone">
            <div class="chat-inner">

                <!-- Chat top navigation -->
                <div class="chat-nav">
                    <div class="nav-start">
                        <div class="recipient-block">
                            <div class="avatar-container">
                                <img class="user-avatar" src="<%=rs.getString("guide_photo")%>" alt="">
                            </div>
                            <div class="username">
                                <span><%=rs.getString("guide_name")%></span>
                                <span><i data-feather="star"></i> <span>| Online</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="nav-end">

                        <a href="../GuideDashboard.jsp" class="chat-nav-item is-icon is-hidden-mobile">
                            <i data-feather="home"></i>
                        </a>

                    </div>
                </div>

                <!-- Chat sidebar -->
<!--                <div id="chat-sidebar" class="users-sidebar">
                     Header 
                    <a href="/feed.html" class="header-item">
                        <img src="../../Assets/Template/friendkit/assets/img/logo/friendkit-bold.svg" alt="">
                    </a>
                     User list 
                    <div class="conversations-list has-slimscroll-xs">
                         User 
                        <div class="user-item is-active" data-chat-user="dan" data-full-name="Dan Walker" data-status="Online">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../../Assets/Template/friendkit/assets/img/avatars/dan.jpg" alt="">
                                <div class="user-status is-online"></div>
                            </div>
                        </div>
                         User 
                        <div class="user-item" data-chat-user="stella" data-full-name="Stella Bergmann" data-status="Busy">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../../Assets/Template/friendkit/assets/img/avatars/stella.jpg" alt="">
                                <div class="user-status is-busy"></div>
                            </div>
                        </div>
                         User 
                        <div class="user-item" data-chat-user="daniel" data-full-name="Daniel Wellington" data-status="Away">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../../Assets/Template/friendkit/assets/img/avatars/daniel.jpg" alt="">
                                <div class="user-status is-away"></div>
                            </div>
                        </div>
                         User 
                        <div class="user-item" data-chat-user="david" data-full-name="David Kim" data-status="Busy">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../../Assets/Template/friendkit/assets/img/avatars/david.jpg" alt="">
                                <div class="user-status is-busy"></div>
                            </div>
                        </div>
                         User 
                        <div class="user-item" data-chat-user="edward" data-full-name="Edward Mayers" data-status="Online">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../../Assets/Template/friendkit/assets/img/avatars/edward.jpeg" alt="">
                                <div class="user-status is-online"></div>
                            </div>
                        </div>
                         User 
                        <div class="user-item" data-chat-user="elise" data-full-name="Elise Walker" data-status="Away">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../../Assets/Template/friendkit/assets/img/avatars/elise.jpg" alt="">
                                <div class="user-status is-away"></div>
                            </div>
                        </div>
                         User 
                        <div class="user-item" data-chat-user="nelly" data-full-name="Nelly Schwartz" data-status="Busy">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../../Assets/Template/friendkit/assets/img/avatars/nelly.png" alt="">
                                <div class="user-status is-busy"></div>
                            </div>
                        </div>
                         User 
                        <div class="user-item" data-chat-user="milly" data-full-name="Milly Augustine" data-status="Busy">
                            <div class="avatar-container">
                                <img class="user-avatar" src="https://via.placeholder.com/300x300" data-demo-src="../../Assets/Template/friendkit/assets/img/avatars/milly.jpg" alt="">
                                <div class="user-status is-busy"></div>
                            </div>
                        </div>
                    </div>
                     Add Conversation 
                    <div class="footer-item">
                        <div class="add-button modal-trigger" data-modal="add-conversation-modal"><i data-feather="user"></i>
                        </div>
                    </div>
                </div>
-->
                <!-- Chat body -->
                <div id="chat-body" class="chat-body">
                    <!-- Conversation -->
                    <div id="conversation" class="chat-body-inner has-slimscroll">

                    </div>
                    <!-- Compose message area -->
                    <div class="chat-action">
                        <div class="chat-action-inner">
                            <div class="control" style="text-align: center">
                                <textarea class="textarea comment-textarea" id="msg" rows="2"></textarea>
                                <input type="button" value="Send" name="btn_send"  id="btn_send" onclick="sendChat()"
                                       style="border: none;background-color: #5082c3;border-radius: 15px 10px; color: white;
                                       margin: 10px; margin-bottom: 30px ; width: 30%; height: 25px">

                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
        <script src="../../Assets/JQuery/jQuery.js"></script>

        <script>

                                    function sendChat()
                                    {

                                        var chat = document.getElementById("msg").value;
                                        if (chat.length <= 35)
                                        {
                                            $.ajax({url: "AjaxChat.jsp?chat=" + chat,
                                                success: function(result) {


                                                    document.getElementById("msg").value = "";

                                                    $('#conversation').animate({scrollTop: $('#conversation')[0].scrollHeight});


                                                }});
                                        }
                                        else
                                        {
                                            alert("Character Length less Than 35 Allowed");
                                            document.getElementById("msg").value = "";

                                            $('#conversation').animate({scrollTop: $('#conversation')[0].scrollHeight});
                                        }

                                    }
                                        $(document).ready(function() {
                                            setInterval(function() {
                                                $("#conversation").load('Load.jsp')
                                            }, 50);
                                        });

        </script>
        <!-- Concatenated js plugins and jQuery -->
        <script src="../../Assets/Template/friendkit/assets/js/app.js"></script>
        <script src="https://js.stripe.com/v3/"></script>
        <script src="../../Assets/Template/friendkit/assets/data/tipuedrop_content.js"></script>

        <!-- Core js -->
        <script src="../../Assets/Template/friendkit/assets/js/global.js"></script>

        <!-- Navigation options js -->
        <script src="../../Assets/Template/friendkit/assets/js/navbar-v1.js"></script>
        <script src="../../Assets/Template/friendkit/assets/js/navbar-v2.js"></script>
        <script src="../../Assets/Template/friendkit/assets/js/navbar-mobile.js"></script>
        <script src="../../Assets/Template/friendkit/assets/js/navbar-options.js"></script>
        <script src="../../Assets/Template/friendkit/assets/js/sidebar-v1.js"></script>

        <!-- Core instance js -->
        <script src="../../Assets/Template/friendkit/assets/js/main.js"></script>
        <!--        <script src="../../Assets/Template/friendkit/assets/js/chat.js"></script>-->
        <script src="../../Assets/Template/friendkit/assets/js/touch.js"></script>
        <script src="../../Assets/Template/friendkit/assets/js/tour.js"></script>

        <!-- Components js -->
        <script src="../../Assets/Template/friendkit/assets/js/explorer.js"></script>
        <script src="../../Assets/Template/friendkit/assets/js/widgets.js"></script>
        <script src="../../Assets/Template/friendkit/assets/js/modal-uploader.js"></script>
        <script src="../../Assets/Template/friendkit/assets/js/popovers-users.js"></script>
        <script src="../../Assets/Template/friendkit/assets/js/popovers-pages.js"></script>
        <script src="../../Assets/Template/friendkit/assets/js/lightbox.js"></script>




    </body>

</html>