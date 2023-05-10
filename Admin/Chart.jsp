<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <%@page import="java.sql.ResultSet" %>
    <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <%@include file="SessionValidator.jsp"%>
   <%@include file="Head.jsp"%>
        <head>
            
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>CodeGeeks Admin</title>
            <!-- plugins:css -->
            <link rel="stylesheet" href="../Assets/Template/skydash/vendors/feather/feather.css">
            <link rel="stylesheet" href="../Assets/Template/skydash/vendors/ti-icons/css/themify-icons.css">
            <link rel="stylesheet" href="../Assets/Template/skydash/vendors/css/vendor.bundle.base.css">
            <!-- endinject -->
            <!-- Plugin css for this page -->
            <!-- End plugin css for this page -->
            <!-- inject:css -->
            <link rel="stylesheet" href="../Assets/Template/skydash/css/vertical-layout-light/style.css">
            <!-- endinject -->
            <link rel="shortcut icon" href="../Assets/Template/skydash/images/favicon.png" />
        </head>

        <body>
            <h1>Statistics</h1>
            <div class="container-scroller">
                <!-- partial:../Assets/Template/skydash/partials/_navbar.html -->
                <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                    <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                        <a class="navbar-brand brand-logo mr-5" href="../Assets/Template/skydash/index.html"><img src="../Assets/Template/skydash/images/logo.svg" class="mr-2" alt="logo"/></a>
                        <a class="navbar-brand brand-logo-mini" href="../Assets/Template/skydash/index.html"><img src="../Assets/Template/skydash/images/logo-mini.svg" alt="logo"/></a>
                    </div>
                    <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                            <span class="icon-menu"></span>
                        </button>
                        <ul class="navbar-nav mr-lg-2">
                            <li class="nav-item nav-search d-none d-lg-block">
                                <div class="input-group">
                                    <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                                        <span class="input-group-text" id="search">
                                            <i class="icon-search"></i>
                                        </span>
                                    </div>
                                    <input type="text" class="form-control" id="navbar-search-input" placeholder="Search now" aria-label="search" aria-describedby="search">
                                </div>
                            </li>
                        </ul>
                        <ul class="navbar-nav navbar-nav-right">
                            <li class="nav-item dropdown">
                                <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
                                    <i class="icon-bell mx-0"></i>
                                    <span class="count"></span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                                    <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
                                    <a class="dropdown-item preview-item">
                                        <div class="preview-thumbnail">
                                            <div class="preview-icon bg-success">
                                                <i class="ti-info-alt mx-0"></i>
                                            </div>
                                        </div>
                                        <div class="preview-item-content">
                                            <h6 class="preview-subject font-weight-normal">Application Error</h6>
                                            <p class="font-weight-light small-text mb-0 text-muted">
                                                Just now
                                            </p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item preview-item">
                                        <div class="preview-thumbnail">
                                            <div class="preview-icon bg-warning">
                                                <i class="ti-settings mx-0"></i>
                                            </div>
                                        </div>
                                        <div class="preview-item-content">
                                            <h6 class="preview-subject font-weight-normal">Settings</h6>
                                            <p class="font-weight-light small-text mb-0 text-muted">
                                                Private message
                                            </p>
                                        </div>
                                    </a>
                                    <a class="dropdown-item preview-item">
                                        <div class="preview-thumbnail">
                                            <div class="preview-icon bg-info">
                                                <i class="ti-user mx-0"></i>
                                            </div>
                                        </div>
                                        <div class="preview-item-content">
                                            <h6 class="preview-subject font-weight-normal">New user registration</h6>
                                            <p class="font-weight-light small-text mb-0 text-muted">
                                                2 days ago
                                            </p>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <li class="nav-item nav-profile dropdown">
                                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                                    <img src="../Assets/Template/skydash/images/faces/face28.jpg" alt="profile"/>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                                    <a class="dropdown-item">
                                        <i class="ti-settings text-primary"></i>
                                        Settings
                                    </a>
                                    <a class="dropdown-item">
                                        <i class="ti-power-off text-primary"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>
                            <li class="nav-item nav-settings d-none d-lg-flex">
                                <a class="nav-link" href="#">
                                    <i class="icon-ellipsis"></i>
                                </a>
                            </li>
                        </ul>
                        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                            <span class="icon-menu"></span>
                        </button>
                    </div>
                </nav>
                <!-- partial -->
                <div class="container-fluid page-body-wrapper">
                    <!-- partial:../Assets/Template/skydash/partials/_settings-panel.html -->
                    <div class="theme-setting-wrapper">
                        <div id="settings-trigger"><i class="ti-settings"></i></div>
                        <div id="theme-settings" class="settings-panel">
                            <i class="settings-close ti-close"></i>
                            <p class="settings-heading">SIDEBAR SKINS</p>
                            <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
                            <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
                            <p class="settings-heading mt-2">HEADER SKINS</p>
                            <div class="color-tiles mx-0 px-4">
                                <div class="tiles success"></div>
                                <div class="tiles warning"></div>
                                <div class="tiles danger"></div>
                                <div class="tiles info"></div>
                                <div class="tiles dark"></div>
                                <div class="tiles default"></div>
                            </div>
                        </div>
                    </div>
                    <div id="right-sidebar" class="settings-panel">
                        <i class="settings-close ti-close"></i>
                        <ul class="nav nav-tabs border-top" id="setting-panel" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="todo-tab" data-toggle="tab" href="#todo-section" role="tab" aria-controls="todo-section" aria-expanded="true">TO DO LIST</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="chats-tab" data-toggle="tab" href="#chats-section" role="tab" aria-controls="chats-section">CHATS</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="setting-content">
                            <div class="tab-pane fade show active scroll-wrapper" id="todo-section" role="tabpanel" aria-labelledby="todo-section">
                                <div class="add-items d-flex px-3 mb-0">
                                    <form class="form w-100">
                                        <div class="form-group d-flex">
                                            <input type="text" class="form-control todo-list-input" placeholder="Add To-do">
                                            <button type="submit" class="add btn btn-primary todo-list-add-btn" id="add-task">Add</button>
                                        </div>
                                    </form>
                                </div>
                                <div class="list-wrapper px-3">
                                    <ul class="d-flex flex-column-reverse todo-list">
                                        <li>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input class="checkbox" type="checkbox">
                                                    Team review meeting at 3.00 PM
                                                </label>
                                            </div>
                                            <i class="remove ti-close"></i>
                                        </li>
                                        <li>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input class="checkbox" type="checkbox">
                                                    Prepare for presentation
                                                </label>
                                            </div>
                                            <i class="remove ti-close"></i>
                                        </li>
                                        <li>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input class="checkbox" type="checkbox">
                                                    Resolve all the low priority tickets due today
                                                </label>
                                            </div>
                                            <i class="remove ti-close"></i>
                                        </li>
                                        <li class="completed">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input class="checkbox" type="checkbox" checked>
                                                    Schedule meeting for next week
                                                </label>
                                            </div>
                                            <i class="remove ti-close"></i>
                                        </li>
                                        <li class="completed">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input class="checkbox" type="checkbox" checked>
                                                    Project review
                                                </label>
                                            </div>
                                            <i class="remove ti-close"></i>
                                        </li>
                                    </ul>
                                </div>
                                <h4 class="px-3 text-muted mt-5 font-weight-light mb-0">Events</h4>
                                <div class="events pt-4 px-3">
                                    <div class="wrapper d-flex mb-2">
                                        <i class="ti-control-record text-primary mr-2"></i>
                                        <span>Feb 11 2018</span>
                                    </div>
                                    <p class="mb-0 font-weight-thin text-gray">Creating component page build a js</p>
                                    <p class="text-gray mb-0">The total number of sessions</p>
                                </div>
                                <div class="events pt-4 px-3">
                                    <div class="wrapper d-flex mb-2">
                                        <i class="ti-control-record text-primary mr-2"></i>
                                        <span>Feb 7 2018</span>
                                    </div>
                                    <p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
                                    <p class="text-gray mb-0 ">Call Sarah Graves</p>
                                </div>
                            </div>
                            <!-- To do section tab ends -->
                            <div class="tab-pane fade" id="chats-section" role="tabpanel" aria-labelledby="chats-section">
                                <div class="d-flex align-items-center justify-content-between border-bottom">
                                    <p class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
                                    <small class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 font-weight-normal">See All</small>
                                </div>
                                <ul class="chat-list">
                                    <li class="list active">
                                        <div class="profile"><img src="../Assets/Template/skydash/images/faces/face1.jpg" alt="image"><span class="online"></span></div>
                                        <div class="info">
                                            <p>Thomas Douglas</p>
                                            <p>Available</p>
                                        </div>
                                        <small class="text-muted my-auto">19 min</small>
                                    </li>
                                    <li class="list">
                                        <div class="profile"><img src="../Assets/Template/skydash/images/faces/face2.jpg" alt="image"><span class="offline"></span></div>
                                        <div class="info">
                                            <div class="wrapper d-flex">
                                                <p>Catherine</p>
                                            </div>
                                            <p>Away</p>
                                        </div>
                                        <div class="badge badge-success badge-pill my-auto mx-2">4</div>
                                        <small class="text-muted my-auto">23 min</small>
                                    </li>
                                    <li class="list">
                                        <div class="profile"><img src="../Assets/Template/skydash/images/faces/face3.jpg" alt="image"><span class="online"></span></div>
                                        <div class="info">
                                            <p>Daniel Russell</p>
                                            <p>Available</p>
                                        </div>
                                        <small class="text-muted my-auto">14 min</small>
                                    </li>
                                    <li class="list">
                                        <div class="profile"><img src="../Assets/Template/skydash/images/faces/face4.jpg" alt="image"><span class="offline"></span></div>
                                        <div class="info">
                                            <p>James Richardson</p>
                                            <p>Away</p>
                                        </div>
                                        <small class="text-muted my-auto">2 min</small>
                                    </li>
                                    <li class="list">
                                        <div class="profile"><img src="../Assets/Template/skydash/images/faces/face5.jpg" alt="image"><span class="online"></span></div>
                                        <div class="info">
                                            <p>Madeline Kennedy</p>
                                            <p>Available</p>
                                        </div>
                                        <small class="text-muted my-auto">5 min</small>
                                    </li>
                                    <li class="list">
                                        <div class="profile"><img src="../Assets/Template/skydash/images/faces/face6.jpg" alt="image"><span class="online"></span></div>
                                        <div class="info">
                                            <p>Sarah Graves</p>
                                            <p>Available</p>
                                        </div>
                                        <small class="text-muted my-auto">47 min</small>
                                    </li>
                                </ul>
                            </div>
                            <!-- chat tab ends -->
                        </div>
                    </div>
                    <!-- partial -->
                    <!-- partial:../Assets/Template/skydash/partials/_sidebar.html -->
<!--                    <nav class="sidebar sidebar-offcanvas" id="sidebar">
                        <ul class="nav">
                            <li class="nav-item">
                                <a class="nav-link" href="../Assets/Template/skydash/index.html">
                                    <i class="icon-grid menu-icon"></i>
                                    <span class="menu-title">Dashboard</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                                    <i class="icon-layout menu-icon"></i>
                                    <span class="menu-title">UI Elements</span>
                                    <i class="menu-arrow"></i>
                                </a>
                                <div class="collapse" id="ui-basic">
                                    <ul class="nav flex-column sub-menu">
                                        <li class="nav-item"> <a class="nav-link" href="../Assets/Template/skydash/pages/ui-features/buttons.html">Buttons</a></li>
                                        <li class="nav-item"> <a class="nav-link" href="../Assets/Template/skydash/pages/ui-features/dropdowns.html">Dropdowns</a></li>
                                        <li class="nav-item"> <a class="nav-link" href="../Assets/Template/skydash/pages/ui-features/typography.html">Typography</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="collapse" href="#form-elements" aria-expanded="false" aria-controls="form-elements">
                                    <i class="icon-columns menu-icon"></i>
                                    <span class="menu-title">Form elements</span>
                                    <i class="menu-arrow"></i>
                                </a>
                                <div class="collapse" id="form-elements">
                                    <ul class="nav flex-column sub-menu">
                                        <li class="nav-item"><a class="nav-link" href="../Assets/Template/skydash/pages/forms/basic_elements.html">Basic Elements</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="collapse" href="#charts" aria-expanded="false" aria-controls="charts">
                                    <i class="icon-bar-graph menu-icon"></i>
                                    <span class="menu-title">Charts</span>
                                    <i class="menu-arrow"></i>
                                </a>
                                <div class="collapse" id="charts">
                                    <ul class="nav flex-column sub-menu">
                                        <li class="nav-item"> <a class="nav-link" href="../Assets/Template/skydash/pages/charts/chartjs.html">ChartJs</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="collapse" href="#tables" aria-expanded="false" aria-controls="tables">
                                    <i class="icon-grid-2 menu-icon"></i>
                                    <span class="menu-title">Tables</span>
                                    <i class="menu-arrow"></i>
                                </a>
                                <div class="collapse" id="tables">
                                    <ul class="nav flex-column sub-menu">
                                        <li class="nav-item"> <a class="nav-link" href="../Assets/Template/skydash/pages/tables/basic-table.html">Basic table</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="collapse" href="#icons" aria-expanded="false" aria-controls="icons">
                                    <i class="icon-contract menu-icon"></i>
                                    <span class="menu-title">Icons</span>
                                    <i class="menu-arrow"></i>
                                </a>
                                <div class="collapse" id="icons">
                                    <ul class="nav flex-column sub-menu">
                                        <li class="nav-item"> <a class="nav-link" href="../Assets/Template/skydash/pages/icons/mdi.html">Mdi icons</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                                    <i class="icon-head menu-icon"></i>
                                    <span class="menu-title">User Pages</span>
                                    <i class="menu-arrow"></i>
                                </a>
                                <div class="collapse" id="auth">
                                    <ul class="nav flex-column sub-menu">
                                        <li class="nav-item"> <a class="nav-link" href="../Assets/Template/skydash/pages/samples/login.html"> Login </a></li>
                                        <li class="nav-item"> <a class="nav-link" href="../Assets/Template/skydash/pages/samples/register.html"> Register </a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="collapse" href="#error" aria-expanded="false" aria-controls="error">
                                    <i class="icon-ban menu-icon"></i>
                                    <span class="menu-title">Error pages</span>
                                    <i class="menu-arrow"></i>
                                </a>
                                <div class="collapse" id="error">
                                    <ul class="nav flex-column sub-menu">
                                        <li class="nav-item"> <a class="nav-link" href="../Assets/Template/skydash/pages/samples/error-404.html"> 404 </a></li>
                                        <li class="nav-item"> <a class="nav-link" href="../Assets/Template/skydash/pages/samples/error-500.html"> 500 </a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../Assets/Template/skydash/pages/documentation/documentation.html">
                                    <i class="icon-paper menu-icon"></i>
                                    <span class="menu-title">Documentation</span>
                                </a>
                            </li>
                        </ul>
                    </nav>-->
                    <!-- partial -->
                    <div class="main-panel">
                        <div class="content-wrapper">
<!--                            <div class="row">
                                <div class="col-lg-12 grid-margin stretch-card">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">Line chart</h4>
                                            <canvas id="lineChart"></canvas>
                                        </div>
                                    </div>
                                </div>-->

                            <!--</div>-->
                            <div class="row">
                                <div class="col-lg-6 grid-margin stretch-card">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">Subscriptions</h4>
                                            <canvas id="barChart"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 grid-margin stretch-card">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">Languages</h4>
                                            <canvas id="doughnutChart"></canvas>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- content-wrapper ends -->
                        <!-- partial:../Assets/Template/skydash/partials/_footer.html -->
                        <footer class="footer">
                            <div class="d-sm-flex justify-content-center justify-content-sm-between">
                                <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright � 2021.  Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash. All rights reserved.</span>
                                <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="ti-heart text-danger ml-1"></i></span>
                            </div>
                        </footer>
                        <!-- partial -->
                    </div>
                    <!-- main-panel ends -->
                </div>
                <!-- page-body-wrapper ends -->
            </div>
            <!-- container-scroller -->
            <!-- plugins:js -->
            <script src="../Assets/Template/skydash/vendors/js/vendor.bundle.base.js"></script>
            <!-- endinject -->
            <!-- Plugin js for this page -->
            <script src="../Assets/Template/skydash/vendors/chart.js/Chart.min.js"></script>
            <!-- End plugin js for this page -->
            <!-- inject:js -->
            <script src="../Assets/Template/skydash/js/off-canvas.js"></script>
            <script src="../Assets/Template/skydash/js/hoverable-collapse.js"></script>
            <script src="../Assets/Template/skydash/js/template.js"></script>
            <script src="../Assets/Template/skydash/js/settings.js"></script>
            <script src="../Assets/Template/skydash/js/todolist.js"></script>
            <!-- endinject -->
            <!-- Custom js for this page-->
            <script>
                <%
                String selLang1 = "SELECT * from  tbl_subs";
                ResultSet rs12 = con.selectCommand(selLang1);
                ArrayList<String> label1 = new ArrayList<String>();
                ArrayList<Integer> data1 = new ArrayList<Integer>();
                
                while (rs12.next()) {
                    label1.add("'"+rs12.getString("sub_name")+"'");
                    String selValue = "SELECT count(*) as count from tbl_subsbooking where sub_id = '"+rs12.getString("sub_id")+"'";
                    ResultSet rs11 = con.selectCommand(selValue);
                    rs11.next();
                    data1.add(rs11.getInt("count"));
                }

            %>
                $(function() {
                    'use strict';
                    var data = {
                        labels: <%=label1%>,
                        datasets: [{
                                label: '# of Votes',
                                data: <%=data1%>,
                                backgroundColor: [
                                    'rgba(255, 99, 132, 0.2)',
                                    'rgba(54, 162, 235, 0.2)',
                                    'rgba(255, 206, 86, 0.2)',
                                    'rgba(75, 192, 192, 0.2)',
                                    'rgba(153, 102, 255, 0.2)',
                                    'rgba(255, 159, 64, 0.2)'
                                ],
                                borderColor: [
                                    'rgba(255,99,132,1)',
                                    'rgba(54, 162, 235, 1)',
                                    'rgba(255, 206, 86, 1)',
                                    'rgba(75, 192, 192, 1)',
                                    'rgba(153, 102, 255, 1)',
                                    'rgba(255, 159, 64, 1)'
                                ],
                                borderWidth: 1,
                                fill: false
                            }]
                    };
                    
                    var options = {
                        scales: {
                            yAxes: [{
                                    ticks: {
                                        beginAtZero: true
                                    }
                                }]
                        },
                        legend: {
                            display: false
                        },
                        elements: {
                            point: {
                                radius: 0
                            }
                        }

                    };
            <%
                String selLang = "SELECT * from tbl_language";
                ResultSet rs = con.selectCommand(selLang);
                ArrayList<String> label = new ArrayList<String>();
                ArrayList<Integer> data = new ArrayList<Integer>();
                
                while (rs.next()) {
                    label.add("'"+rs.getString("language_name")+"'");
                    String selValue = "SELECT count(*) as count from tbl_code where language_id = '"+rs.getString("language_id")+"'";
                    ResultSet rs1 = con.selectCommand(selValue);
                    rs1.next();
                    data.add(rs1.getInt("count"));
                }

            %>
                    var doughnutPieData = {
                        datasets: [{
                                data: <%= data.toString() %>,
                                backgroundColor: [
                                    'rgba(255, 99, 132, 0.5)',
                                    'rgba(54, 162, 235, 0.5)',
                                    'rgba(255, 206, 86, 0.5)',
                                    'rgba(75, 192, 192, 0.5)',
                                    'rgba(153, 102, 255, 0.5)',
                                    'rgba(255, 159, 64, 0.5)'
                                ],
                                borderColor: [
                                    'rgba(255,99,132,1)',
                                    'rgba(54, 162, 235, 1)',
                                    'rgba(255, 206, 86, 1)',
                                    'rgba(75, 192, 192, 1)',
                                    'rgba(153, 102, 255, 1)',
                                    'rgba(255, 159, 64, 1)'
                                ],
                            }],
           
                        labels: <%= label.toString() %>
                    };
                    var doughnutPieOptions = {
                        responsive: true,
                        animation: {
                            animateScale: true,
                            animateRotate: true
                        }
                    };
                    

                    var multiAreaData = {
                        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                        datasets: [{
                                label: 'Facebook',
                                data: [8, 11, 13, 15, 12, 13, 16, 15, 13, 19, 11, 14],
                                borderColor: ['rgba(255, 99, 132, 0.5)'],
                                backgroundColor: ['rgba(255, 99, 132, 0.5)'],
                                borderWidth: 1,
                                fill: true
                            },
                            {
                                label: 'Twitter',
                                data: [7, 17, 12, 16, 14, 18, 16, 12, 15, 11, 13, 9],
                                borderColor: ['rgba(54, 162, 235, 0.5)'],
                                backgroundColor: ['rgba(54, 162, 235, 0.5)'],
                                borderWidth: 1,
                                fill: true
                            },
                            {
                                label: 'Linkedin',
                                data: [6, 14, 16, 20, 12, 18, 15, 12, 17, 19, 15, 11],
                                borderColor: ['rgba(255, 206, 86, 0.5)'],
                                backgroundColor: ['rgba(255, 206, 86, 0.5)'],
                                borderWidth: 1,
                                fill: true
                            }
                        ]
                    };

                    var multiAreaOptions = {
                        plugins: {
                            filler: {
                                propagate: true
                            }
                        },
                        elements: {
                            point: {
                                radius: 0
                            }
                        },
                        scales: {
                            xAxes: [{
                                    gridLines: {
                                        display: false
                                    }
                                }],
                            yAxes: [{
                                    gridLines: {
                                        display: false
                                    }
                                }]
                        }
                    }

                    var scatterChartData = {
                        datasets: [{
                                label: 'First Dataset',
                                data: [{
                                        x: -10,
                                        y: 0
                                    },
                                    {
                                        x: 0,
                                        y: 3
                                    },
                                    {
                                        x: -25,
                                        y: 5
                                    },
                                    {
                                        x: 40,
                                        y: 5
                                    }
                                ],
                                backgroundColor: [
                                    'rgba(255, 99, 132, 0.2)'
                                ],
                                borderColor: [
                                    'rgba(255,99,132,1)'
                                ],
                                borderWidth: 1
                            },
                            {
                                label: 'Second Dataset',
                                data: [{
                                        x: 10,
                                        y: 5
                                    },
                                    {
                                        x: 20,
                                        y: -30
                                    },
                                    {
                                        x: -25,
                                        y: 15
                                    },
                                    {
                                        x: -10,
                                        y: 5
                                    }
                                ],
                                backgroundColor: [
                                    'rgba(54, 162, 235, 0.2)',
                                ],
                                borderColor: [
                                    'rgba(54, 162, 235, 1)',
                                ],
                                borderWidth: 1
                            }
                        ]
                    }

                    var scatterChartOptions = {
                        scales: {
                            xAxes: [{
                                    type: 'linear',
                                    position: 'bottom'
                                }]
                        }
                    }
                    // Get context with jQuery - using jQuery's .get() method.
                    if ($("#barChart").length) {
                        var barChartCanvas = $("#barChart").get(0).getContext("2d");
                        // This will get the first returned node in the jQuery collection.
                        var barChart = new Chart(barChartCanvas, {
                            type: 'bar',
                            data: data,
                            options: options
                        });
                    }

                    if ($("#lineChart").length) {
                        var lineChartCanvas = $("#lineChart").get(0).getContext("2d");
                        var lineChart = new Chart(lineChartCanvas, {
                            type: 'line',
                            data: data,
                            options: options
                        });
                    }

                    if ($("#linechart-multi").length) {
                        var multiLineCanvas = $("#linechart-multi").get(0).getContext("2d");
                        var lineChart = new Chart(multiLineCanvas, {
                            type: 'line',
                            data: multiLineData,
                            options: options
                        });
                    }

                    if ($("#areachart-multi").length) {
                        var multiAreaCanvas = $("#areachart-multi").get(0).getContext("2d");
                        var multiAreaChart = new Chart(multiAreaCanvas, {
                            type: 'line',
                            data: multiAreaData,
                            options: multiAreaOptions
                        });
                    }

                    if ($("#doughnutChart").length) {
                        var doughnutChartCanvas = $("#doughnutChart").get(0).getContext("2d");
                        var doughnutChart = new Chart(doughnutChartCanvas, {
                            type: 'doughnut',
                            data: doughnutPieData,
                            options: doughnutPieOptions
                        });
                    }

                    if ($("#pieChart").length) {
                        var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
                        var pieChart = new Chart(pieChartCanvas, {
                            type: 'pie',
                            data: doughnutPieData,
                            options: doughnutPieOptions
                        });
                    }

                    if ($("#areaChart").length) {
                        var areaChartCanvas = $("#areaChart").get(0).getContext("2d");
                        var areaChart = new Chart(areaChartCanvas, {
                            type: 'line',
                            data: areaData,
                            options: areaOptions
                        });
                    }

                    if ($("#scatterChart").length) {
                        var scatterChartCanvas = $("#scatterChart").get(0).getContext("2d");
                        var scatterChart = new Chart(scatterChartCanvas, {
                            type: 'scatter',
                            data: scatterChartData,
                            options: scatterChartOptions
                        });
                    }

                    if ($("#browserTrafficChart").length) {
                        var doughnutChartCanvas = $("#browserTrafficChart").get(0).getContext("2d");
                        var doughnutChart = new Chart(doughnutChartCanvas, {
                            type: 'doughnut',
                            data: browserTrafficData,
                            options: doughnutPieOptions
                        });
                    }
                });
        </script>
        <!-- End custom js for this page-->
    </body>

</html>
