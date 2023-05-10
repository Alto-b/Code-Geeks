<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%
    if (request.getParameter("btn_submit") != null) {
        
            DB.MailClass m = new DB.MailClass();
            String mailid[] = {request.getParameter("txt_email")};
            String subject = "Confirmation";
            String text = "Registartion Completed";
            boolean b = m.sendMail(mailid, subject, text);
        
        
        String InsQry = "insert into tbl_guide(guide_doj,guide_name,guide_email,guide_photo,guide_password,guide_contact)"
                + "values(curdate(),'" + request.getParameter("txt_name") + "','" + request.getParameter("txt_email") + "',"
                + "'" + request.getParameter("txt_file") + "','" + request.getParameter("txt_password") + "','" + request.getParameter("txt_contact") + "')";
//        out.println(InsQry);
        if(con.executeCommand(InsQry))
        {
            response.sendRedirect("../index.jsp");
        }

    }


%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">

        <title>Guide | Registration</title>
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
    </head>

    <body>
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KQHJPZP" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->

        <!-- Pageloader -->
        <div class="pageloader"></div>
        <div class="infraloader is-active"></div>
        <div class="signup-wrapper">

            <div class="fake-nav">
                <a href="/" class="logo">
                    <img src="../Assets/Files/Posters/codebg.png" width="112" height="28" alt="">
                </a>
            </div>

            <div class="process-bar-wrap">
                <div class="process-bar">
                    <div class="progress-wrap">
                        <div class="track"></div>
                        <div class="bar" style="width: 25%"></div>
                        <div id="step-dot-1" class="dot is-first is-active " data-step="0">
                            <i data-feather="smile"></i>
                        </div>
                        <div id="step-dot-2" class="dot is-second is-active is-current" data-step="25">
                            <i data-feather="user"></i>
                        </div>
                        <div id="step-dot-3" class="dot is-third" data-step="50">
                            <i data-feather="image"></i>
                        </div>
                        <div id="step-dot-4" class="dot is-fourth" data-step="75">
                            <i data-feather="lock"></i>
                        </div>
                        <div id="step-dot-5" class="dot is-fifth" data-step="100">
                            <i data-feather="flag"></i> 
                        </div>
                    </div>
                </div>
            </div>

            <div class="outer-panel">
                <div class="outer-panel-inner">
                    <div class="process-title">
                        <h2 id="step-title-2" class="step-title is-active">Tell us more about you.</h2>
                        <h2 id="step-title-3" class="step-title">Upload a profile picture.</h2>
                        <h2 id="step-title-4" class="step-title">Secure your account.</h2>
                        <h2 id="step-title-5" class="step-title">You're all set. Ready?</h2>
                    </div>
                    <form method="post">

                        <div id="signup-panel-2" class="process-panel-wrap is-narrow is-active">
                            <div class="form-panel">
                                <div class="field">
                                    <label>Name</label>
                                    <div class="control">
                                        <input type="text" name="txt_name" class="input" placeholder="Enter your  name" required>
                                    </div>
                                </div>
                                <div class="field">
                                    <label>Email</label>
                                    <div class="control">
                                        <input type="email" name="txt_email" class="input" placeholder="Enter your email address" required="">
                                    </div>
                                </div>
                                <div class="field">
                                    <label>Contact</label>
                                    <div class="control">
                                        <input type="text" name="txt_contact" class="input" placeholder="Enter your contact" required pattern="[6-9]{1}[0-9]{9}" title="Please enter a valid 10-digit phone number">
                                    </div>
                                </div>
                            </div>

                            <div class="buttons">
                                <a class="button process-button" href="newRegistration.jsp">Back</a>
                                <a class="button process-button is-next" data-step="step-dot-3">Next</a>
                            </div>
                        </div>

                        <div id="signup-panel-3" class="process-panel-wrap is-narrow">
                            <div class="form-panel">
                                <div class="photo-upload">
                                    <div class="preview">
                                        <a class="upload-button">
                                            <i data-feather="plus"></i>
                                        </a>
                                        <input type="hidden" name="txt_file" id="convertedImage">
                                        <img id="upload-preview" src="https://via.placeholder.com/150x150" data-demo-src="../Assets/Template/friendkit/assets/img/avatars/avatar-w.png" alt="">
                                        <div id="profile-pic-dz" class="dropzone is-hidden" action="/"></div>
                                    </div>
                                    <div class="limitation">
                                        <small>Only images with a size lower than 3MB are allowed.</small>
                                    </div>
                                </div>
                            </div>

                            <div class="buttons">
                                <a class="button process-button" data-step="step-dot-2">Back</a>
                                <a class="button process-button is-next" data-step="step-dot-4">Next</a>
                            </div>
                        </div>

                        <div id="signup-panel-4" class="process-panel-wrap is-narrow">
                            <div class="form-panel">
                                <div class="field">
                                    <label>Password</label>
                                    <div class="control">
                                        <input type="password" name="txt_password" class="input" placeholder="Choose a password" required>
                                    </div>
                                </div>
                                <div class="field">
                                    <label>Repeat Password</label>
                                    <div class="control">
                                        <input type="password" name="txt_repassword" class="input" placeholder="Repeat your password" required>
                                    </div>
                                </div>

                            </div>

                            <div class="buttons">
                                <a class="button process-button" data-step="step-dot-3">Back</a>
                                <a class="button process-button is-next" data-step="step-dot-5">Next</a>
                            </div>
                        </div>

                        <div id="signup-panel-5" class="process-panel-wrap is-narrow">
                            <div class="form-panel">
                                <img class="success-image" src="../Assets/Template/friendkit/assets/img/illustrations/signup/mailbox.svg" alt="">

                                <div class="success-text">
                                    <h3>Congratz, you successfully created your account.</h3>
                                    <p> We just sent you a confirmation email. PLease confirm your account within 24 hours.</p>
                                    <button id="signup-finish" class="button is-fullwidth"type="submit" name="btn_submit">Let Me In</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>



            <!--Edit Credit card Modal-->
            <div id="crop-modal" class="modal is-small crop-modal is-animated">
                <div class="modal-background"></div>
                <div class="modal-content">
                    <div class="modal-card">
                        <header class="modal-card-head">
                            <h3>Crop your picture</h3>
                            <div class="close-wrap">
                                <button class="close-modal" aria-label="close">
                                    <i data-feather="x"></i>
                                </button>
                            </div>
                        </header>
                        <div class="modal-card-body">
                            <div id="cropper-wrapper" class="cropper-wrapper">

                            </div>
                        </div>
                    </div>
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
        <script src="../Assets/Template/friendkit/assets/js/signup.js"></script>


    </body>

</html>