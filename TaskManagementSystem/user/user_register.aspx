﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_register.aspx.cs" Inherits="TaskManagementSystem.user.user_register" %>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>User Registration</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
</head>
<body class="bg-dark">

    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.html">
                        <h1>Register</h1>
                    </a>
                </div>
                <div class="login-form">
                    <form id="form1" runat="server">

                        <div class="form-group">
                            <label>First Name</label>
                            <asp:TextBox ID="firstname" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Last Name</label>
                            <asp:TextBox ID="lastname" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Email address</label>
                            <asp:TextBox ID="emailaddress" runat="server" class="form-control" placeholder="Email Address"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>User Name</label>
                            <asp:TextBox ID="username" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Password</label>
                            <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
                        </div>

                        
                        <div class="form-group">

                        </div>

                        <asp:Button ID="b1" runat="server" class="btn btn-primary btn-flat m-b-30 m-t-30" Text="Register" OnClick="b1_Click" />
                        
                        
                    </form>

                        <div class="register-link m-t-15 text-center">
                            <p>Have an Account? <a href="user_login.aspx"> Log in Here</a></p>
                        </div>


                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/main.js"></script>

        <script src="https://www.google.com/recaptcha/api.js?onload=renderRecaptcha&render=explicit" async defer></script>
    <script type="text/javascript">
        var your_site_key = '6Le1Y-sUAAAAAPUTBQfUSCyjmbC6eASxjgzghzNo';
        var renderRecaptcha = function () {
            grecaptcha.render('ReCaptchContainer', {
                'sitekey': '6Le1Y-sUAAAAAPUTBQfUSCyjmbC6eASxjgzghzNo',
                'callback': reCaptchaCallback,
                theme: 'light', //light or dark
                type: 'image',// image or audio
                size: 'normal'//normal or compact
            });
        };
        var reCaptchaCallback = function (response) {
            if (response !== '') {
                document.getElementById('lblMessage1').innerHTML = "";
            }
        };
       </script>    

</body>
</html>

