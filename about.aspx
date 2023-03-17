<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Skill_Tracker.about" %>

<%--Head Section--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--Body Section--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Section 1 About Page--%>
    <div class="bg-light">
        <div class="container py-5">
            <div class="row h-100 align-items-center py-5">
                <div class="col-lg-6">
                    <h3 class="display-4"><b>Intech Systems Pvt. Ltd.</b></h3>
                    <p class="lead text-muted mb-0">Intech exists to catalyze digital futures in operation-centric industries globally.</p>
                    <p class="lead text-muted">
                        <a href="https://bootstrapious.com/snippets" class="text-muted"></a>
                    </p>
                </div>
                <div class="col-lg-6 d-none d-lg-block">
                    <img src="imgs/who-we-are.png" alt="" class="img-fluid">
                </div>
            </div>
        </div>
    </div>

    <%--Section 2 Microsoft’s Solutions portfolio--%>
    <div class="bg-white py-5">
        <div class="container py-5">
            <div class="row align-items-center mb-5">
                <div class="col-lg-6 order-2 order-lg-1">
                    <i class="fa fa-bar-chart fa-2x mb-3 text-primary"></i>
                    <h2 class="font-weight-light"><b>Microsoft’s Solutions portfolio for your Digital journey</b></h2>
                    <p class="font-italic text-muted mb-4">
                        <ul>
                            <b>
                                <li>Dynamic 365 Finance</li>
                                <li>Dynamic 365 business Central</li>
                                <li>Dynamic 365 Sales</li>
                                <li>Dynamic 365 Supply Chain Management</li>
                                <li>Dynamic 365 Customer Service</li>
                                <li>Microsoft Azure</li>
                                <li>PowerBI/Power Apps</li>
                            </b>
                        </ul>
                    </p>
                    <a href="https://intech-systems.com/products/dynamics-365/" class="btn btn-light px-5 rounded-pill shadow-sm">Learn More</a>
                </div>
                <div class="col-lg-5 px-5 mx-auto order-1 order-lg-2">
                    <img src="imgs/dynamic-365-apps.png" alt="" class="img-fluid mb-4 mb-lg-0">
                </div>
            </div>

            <%--Section Our Journey--%>
            <div class="row align-items-center">
                <div class="col-lg-5 px-5 mx-auto">
                    <img src="imgs/intech-story-1.png" alt="" class="img-fluid mb-4 mb-lg-0">
                </div>
                <div class="col-lg-6">
                    <i class="fa fa-leaf fa-2x mb-3 text-primary"></i>
                    <h2 class="font-weight-light"><b>Our Journey</b></h2>
                    <p class="font-italic text-muted mb-4">
                        <center>In our journey of 40+ years, we have taken our growth to new heights. Today we boast of having a solid client base who are highly satisfied across different industries and geographies. Today, Intech stands out in the market as the Gold ERP Microsoft Partner which encourages us to constantly add products and grab the global market.</center>
                    </p>
                    <ul>
                        <b>
                            <li>Ranked in Top 5 Issue House by Prime Database</li>
                            <li>Set up two large Data Centres servicing majority of local Government in Gujarat</li>
                            <li>Beginning of the journey by Mr. Ashok Mehta</li>
                            <li>First IT Company in Gujarat</li>
                        </b>
                    </ul>
                    <a href="https://intech-systems.com/" class="btn btn-light px-5 rounded-pill shadow-sm">Learn More</a>

                </div>
            </div>
        </div>
    </div>

    <%--Section 3 Our Team--%>
    <div class="bg-light py-5">
        <div class="container py-5">
            <div class="row mb-4">
                <div class="col-lg-5">
                    <h2 class="display-4 font-weight-light">Our team</h2>
                    <p class="font-italic text-muted">Our leadership team draws decades of experience across industries and geographies that enables Intech to achieve its strategic goals and its people to strive for better every day.</p>
                </div>
            </div>

            <div class="row text-center">
                <!-- Team item 1-->
                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4">
                        <img src="https://bootstrapious.com/i/snippets/sn-about/avatar-3.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">Ashok Mehta</h5>
                        <span class="small text-uppercase text-muted">Chairman</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- End-->

                <!-- Team item 2-->
                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4">
                        <img src="https://bootstrapious.com/i/snippets/sn-about/avatar-4.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">Anuja Parikh</h5>
                        <span class="small text-uppercase text-muted">CEO</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- End-->

                <!-- Team item 3-->
                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4">
                        <img src="https://bootstrapious.com/i/snippets/sn-about/avatar-2.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">Deval Parikh</h5>
                        <span class="small text-uppercase text-muted">Managing Director</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- End-->
            </div>
        </div>
    </div>
</asp:Content>
