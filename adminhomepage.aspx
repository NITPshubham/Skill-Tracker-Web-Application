<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminhomepage.aspx.cs" Inherits="Skill_Tracker.adminhomepage" %>

<%--Head Section--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Favicons -->
    <link href="imgs/intech-digital-logo.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <!-- Vendor CSS Files -->
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <style>
        /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
        .row.content {
            height: 900px
        }

        /* Set gray background color and 100% height */
        .sidenav {
            background-color: black;
            height: 100%;
        }

        body {
            background-color: #eee
        }

        .card {
            border: none;
            border-radius: 10px
        }

        .c-details span {
            font-weight: 300;
            font-size: 13px
        }

        .icon {
            width: 50px;
            height: 50px;
            background-color: #eee;
            border-radius: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 39px
        }

        .badge span {
            background-color: #fffbec;
            width: 60px;
            height: 25px;
            padding-bottom: 3px;
            border-radius: 5px;
            display: flex;
            color: #fed85d;
            justify-content: center;
            align-items: center
        }

        .progress {
            height: 10px;
            border-radius: 10px
        }

            .progress div {
                background-color: red
            }

        .text1 {
            font-size: 14px;
            font-weight: 600
        }

        .text2 {
            color: #a5aec0
        }
        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }

            .row.content {
                height: auto;
            }
        }
    </style>
</asp:Content>

<%--Body Section--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <header id="header" style="margin-top: 60px; width: 250px">
            <div class="d-flex flex-column">

                <nav id="navbar" class="nav-menu navbar" style="background-color: black; width: 200px; height: 550px">
                    <ul>
                        <%--Sidebar Links--%>
                        <li><a href="adminhomepage.aspx" class="nav-link scrollto active"><i class="bx bx-user"></i><span>Homepage</span></a></li>
                        <li><a href="UsersDetails.aspx" class="nav-link scrollto active"><i class="bx bx-user"></i><span>User Details</span></a></li>
                        <li><a href="adddepartment.aspx" class="nav-link scrollto"><i class="bx bx-home"></i><span>Department</span></a></li>
                        <li><a href="adddomain.aspx" class="nav-link scrollto"><i class="bx bx-file-blank"></i><span>Domain</span></a></li>
                        <li><a href="addskills.aspx" class="nav-link scrollto"><i class="bx bx-book-content"></i><span>Skills</span></a></li>
                        <li><a href="adduserrole.aspx" class="nav-link scrollto"><i class="bx bx-server"></i><span>User Role</span></a></li>
                        <li><a href="addusertype.aspx" class="nav-link scrollto"><i class="bx bx-envelope"></i><span>User Type</span></a></li>
                        <li><a href="addadminpage.aspx" class="nav-link scrollto"><i class="bx bx-envelope"></i><span>Add Admin</span></a></li>
                    </ul>
                </nav>
                <!-- .nav-menu -->
            </div>
        </header>
        <!-- End Header -->
    </div>


    <%--Cards For Report--%>
    <div class="container mt-5 mb-8" style="margin-left: 350px">
        <div class="row" style="margin: 15px">
            <div class="col-md-3">
                <div class="card p-3 mb-2" style="background-color: black">
                    <div class="d-flex justify-content-between">
                        <div class="d-flex flex-row align-items-center">
                            <div class="icon"><i class="bx bxl-mailchimp"></i></div>
                            <div class="ms-2 c-details">
                                <a href="admin_report.aspx">
                                    <h6 class="mb-0">Full Report</h6>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card p-3 mb-2" style="background-color: black">
                    <div class="d-flex justify-content-between">
                        <div class="d-flex flex-row align-items-center">
                            <div class="icon"><i class="bx bxl-dribbble"></i></div>
                            <div class="ms-2 c-details">
                                <a href="admin_report_domainwise.aspx">
                                    <h6 class="mb-0">Domain Wise Report</h6>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="margin: 15px">
            <div class="col-md-3">
                <div class="card p-3 mb-2" style="background-color: black">
                    <div class="d-flex justify-content-between">
                        <div class="d-flex flex-row align-items-center">
                            <div class="icon"><i class="bx bxl-reddit"></i></div>
                            <div class="ms-2 c-details">
                                <a href="admin_report_userwise.aspx">
                                    <h6 class="mb-0">User Wise Report</h6>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card p-3 mb-2" style="background-color: black">
                    <div class="d-flex justify-content-between">
                        <div class="d-flex flex-row align-items-center">
                            <div class="icon"><i class="bx bxl-dribbble"></i></div>
                            <div class="ms-2 c-details">
                                <a href="admin_report_expertisewise.aspx">
                                    <h6 class="mb-0">Expertise Wise Report</h6>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
