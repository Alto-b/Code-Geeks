<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    String search_query = request.getParameter("text");
    String[] search_words = search_query.split("\\s+");
    String sel = "select * from tbl_code c inner join tbl_guide g on g.guide_id=c.guide_id inner join tbl_language l on l.language_id=c.language_id  where true ";

    for (String word : search_words) {
        sel += " and c.code_title like '%" + word + "%'";
    }

    ResultSet rs = con.selectCommand(sel);

    while (rs.next()) {

%>
<div id="feed-post-1" class="card is-post" >
    <div class="content-wrap">
        <!-- Post header -->
        <div class="card-heading">
            <!-- User meta -->
            <div class="user-block">
                <div class="image">
                    <!--<img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/dan.jpg" data-user-popover="1" alt="">-->
                </div>
                <div class="user-info">
                    <a href="#"><%=rs.getString("code_title")%></a>
                    <span class="time"><%=rs.getString("code_date")%></span>
                </div>
            </div>
            <!-- Right side dropdown -->
            <!-- /partials/pages/feed/dropdowns/feed-post-dropdown.html -->
            <!--                                    <div class="dropdown is-spaced is-right is-neutral dropdown-trigger">
                                                    <div>
                                                        <div class="button">
                                                            <i data-feather="more-vertical"></i>
                                                        </div>
                                                    </div>
                                                    <div class="dropdown-menu" role="menu">
                                                        <div class="dropdown-content">
                                                            <a href="#" class="dropdown-item">
                                                                <div class="media">
                                                                    <i data-feather="bookmark"></i>
                                                                    <div class="media-content">
                                                                        <h3>Bookmark</h3>
                                                                        <small>Add this post to your bookmarks.</small>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                            <a class="dropdown-item">
                                                                <div class="media">
                                                                    <i data-feather="bell"></i>
                                                                    <div class="media-content">
                                                                        <h3>Notify me</h3>
                                                                        <small>Send me the updates.</small>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                            <hr class="dropdown-divider">
                                                            <a href="#" class="dropdown-item">
                                                                <div class="media">
                                                                    <i data-feather="flag"></i>
                                                                    <div class="media-content">
                                                                        <h3>Flag</h3>
                                                                        <small>In case of inappropriate content.</small>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>-->
        </div>
        <!-- /Post header -->

        <!-- Post body -->
        <div class="card-body">
            <!-- Post body text -->
            <div class="post-text">
                <!--                                        <p>Yesterday with
                                                            <a href="#">@Karen Miller</a> and
                                                            <a href="#">@Marvin Stemperd</a> at the
                                                            <a href="#">#Rock'n'Rolla</a> concert in LA. Was totally fantastic! People were really excited about this one!
                                                        </p>-->
            </div>
            <!-- Featured image -->
            <div>
                <iframe src="FrameSet.jsp?id=<%=rs.getString("code_id")%>" ></iframe>

            </div>
        </div>
        <!-- /Post body -->

        <!-- Post footer -->
        <div class="card-footer">
            <!-- Followers avatars -->
            <!--                                    <div class="likers-group">
                                                    <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/dan.jpg" data-user-popover="1" alt="">
                                                    <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/david.jpg" data-user-popover="4" alt="">
                                                    <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/edward.jpeg" data-user-popover="5" alt="">
                                                    <img src="https://via.placeholder.com/300x300" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/milly.jpg" data-user-popover="7" alt="">
                                                </div>-->
            <!-- Followers text -->
            <!--                                    <div class="likers-text">
                                                    <p>
                                                        <a href="#">Milly</a>,
                                                        <a href="#">David</a>
                                                    </p>
                                                    <p>and 23 more liked this</p>
                                                </div>-->
            <!-- Post statistics -->
            <!--                                    <div class="social-count">
                                                    <div class="likes-count">
                                                        <i data-feather="heart"></i>
                                                        <span>27</span>
                                                    </div>
                                                    <div class="shares-count">
                                                        <i data-feather="link-2"></i>
                                                        <span>9</span>
                                                    </div>
                                                    <div class="comments-count">
                                                        <i data-feather="message-circle"></i>
                                                        <span>3</span>
                                                    </div>
                                                </div>-->
        </div>
        <!-- /Post footer -->
    </div>
</div>

<%
    }


%>