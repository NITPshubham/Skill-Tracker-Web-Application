<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="splashpage.aspx.cs" Inherits="Skill_Tracker.splashpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" class="no-js">

<%--Head Section--%>
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Solid Template</title>
    <link href="https://fonts.googleapis.com/css?family=IBM+Plex+Sans:400,600" rel="stylesheet" />
    <link href="dist/css/style.css" rel="stylesheet" />

    <script src="https://unpkg.com/animejs@3.0.1/lib/anime.min.js"></script>
    <script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>
</head>

<%--Body Section--%>
<body class="is-boxed has-animations">
    <div class="body-wrap">
        <header class="site-header">
            <div class="container">
                <div class="site-header-inner">
                    <div class="brand header-brand">
                        <h1 class="m-0">
                            <a href="#">
                                <img class="header-logo-image" src="imgs/intech-digital-logo.png" alt="Logo" style="width: 400px; margin-left:-110px; margin-top:25px" />
                            </a>
                        </h1>
                    </div>
                </div>
            </div>
        </header>

        <main>
            <section class="hero">
                <div class="container">
                    <div class="hero-inner">
                        <div class="hero-copy" style="margin-left:-110px; margin-top:100px">
                            <h1 class="hero-title mt-0">Skill Tracker</h1>
                            <p class="hero-paragraph">Intech exists to catalyze digital futures in operation-centric industries globally.</p>
                            <div class="hero-cta">
                                <a class="button button-primary" href="loginpage.aspx">Login Now</a><a class="button" href="signuppage.aspx">Register Here</a><a class="button" href="adminloginpage.aspx">Admin Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </div>
</body>
</html>
