<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Skill_Tracker.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 600px;
            height: 180px;
            border: 1px solid #858585;
            margin-top: 0px;background: linear-gradient(to bottom, #33ccff 0%, #ff99cc 100%);
        }

        .auto-style2 {
            height: 87px;
            background-color: cadetblue;
            width: 1677px;
        }

        .auto-style4 {
            color: #00FFFF
        }

        .auto-style5 {
            color: #000000
        }
        /*-------------------------------CSS for the Content in second table---------------------------------------*/
        @import url("https://fonts.googleapis.com/css?family=Oswald:300,400,500,700");
        @import url("https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800");

        .gr-1 {
            background: linear-gradient(170deg, #01e4f8 0%, #1d3ede 100%);
        }

        .gr-2 {
            background: linear-gradient(170deg, #b4ec51 0%, #429321 100%);
        }

        .gr-3 {
            background: linear-gradient(170deg, #c86dd7 0%, #3023ae 100%);
        }

        * {
            transition: 0.5s;
        }

        .h-100 {
            height: 40vh !important;
        }

        .align-middle {
            position: relative;
            top: 50%;
            transform: translateY(-50%);
        }

        .column {
            margin-top: 3rem;
            padding-left: 3rem;
        }

            .column:hover {
                padding-left: 0;
            }

                .column:hover .card .txt {
                    margin-left: 1rem;
                }

                    .column:hover .card .txt h1,
                    .column:hover .card .txt p {
                        color: white;
                        opacity: 1;
                    }

                .column:hover a {
                    color: white;
                }

                    .column:hover a:after {
                        width: 10%;
                    }

        .card {
            min-height: 170px;
            margin: 0;
            padding: 1.7rem 1.2rem;
            border: none;
            border-radius: 0;
            color: black;
            letter-spacing: 0.05rem;
            font-family: "Oswald", sans-serif;
            box-shadow: 0 0 21px rgba(0, 0, 0, 0.27);
        }

            .card .txt {
                margin-left: 0rem;
                z-index: 1;
            }

                .card .txt h1 {
                    font-size: 1.5rem;
                    font-weight: 300;
                    text-transform: uppercase;
                }

                .card .txt p {
                    font-size: 0.7rem;
                    font-family: "Open Sans", sans-serif;
                    letter-spacing: 0rem;
                    margin-top: 33px;
                    opacity: 0;
                    color: white;
                }

            .card a {
                z-index: 3;
                font-size: 0.7rem;
                color: black;
                margin-left: 1rem;
                position: relative;
                bottom: -0.5rem;
                text-transform: uppercase;
            }

                .card a:after {
                    content: "";
                    display: inline-block;
                    height: 0.5em;
                    width: 0;
                    margin-right: -100%;
                    margin-left: 10px;
                    border-top: 1px solid white;
                    transition: 0.5s;
                }

            .card .ico-card {
                position: absolute;
                top: 0;
                left: 0;
                bottom: 0;
                right: 0;
                width: 100%;
                height: 100%;
                overflow: hidden;
            }

            .card i {
                position: relative;
                right: -50%;
                top: 60%;
                font-size: 12rem;
                line-height: 0;
                opacity: 0.2;
                color: white;
                z-index: 0;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="background-image:url('imgs/bg2.jpg')">
    <center>
        <br />
        <br />
    <table class="auto-style1">
        <tr class="auto-style3">
            <td class="auto-style2">
                <asp:Label ID="lbLoginUserID" runat="server" Font-Bold="True" Font-Size="Large" Text="Employee ID : "></asp:Label>
                <span class="auto-style4">
                    <asp:Label ID="labelUserID" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="#003366"></asp:Label>
                </span>
                <br />
                <asp:Label ID="lbLoginUserName" runat="server" Font-Bold="True" Font-Size="Large" Text="Name : "></asp:Label>
                <span class="auto-style5">
                </span><span class="auto-style4"><asp:Label ID="labelUserName" runat="server" ForeColor="#003366" Font-Size="Large"></asp:Label>
                </span>
                <br/>
                <asp:Label ID="lbLoginUserEmail" runat="server" Font-Bold="True" Font-Size="Large" Text="Email ID : "></asp:Label>
                <span class="auto-style4">
                    <asp:Label ID="labelEmailID" runat="server" ForeColor="#003366" Font-Size="Large"></asp:Label>
                </span>
                <br />
                <asp:Label ID="lbLoginUserDept" runat="server" Font-Bold="True" Font-Size="Large" Text="Department : "></asp:Label>
                <span class="auto-style5">
                    <asp:Label ID="labelUserDepartment" runat="server" ForeColor="#003366" Font-Size="Large"></asp:Label>
                </span>
                <br />
                <asp:Label ID="lbLoginUserRole" runat="server" Font-Bold="True" Font-Size="Large" Text="Role : "></asp:Label>
                <span class="auto-style5">&nbsp;<asp:Label ID="labelUserRole" runat="server" ForeColor="#003366" Font-Size="Large"></asp:Label>
                </span>
            </td>
        </tr>
    </table>
    </center>


    <%-- Content in the second table --%>


    <div class="container h-100">
        <div class="row align-middle">
            <div class="col-md-6 col-lg-4 column">
                <a href="profilepage.aspx">
                    <div class="card gr-1">
                        <div class="txt">
                            <h1>USER PROFILE</h1>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-md-6 col-lg-4 column">
                <a href="user_update_skill.aspx">
                    <div class="card gr-2">
                        <div class="txt">
                            <h1>SKILL ANALYSIS</h1>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-md-6 col-lg-4 column">
                <a href="domainpage.aspx">
                    <div class="card gr-3">
                        <div class="txt">
                            <h1>SKILL SELECTION</h1>
                        </div>
                    </div>
                </a>
            </div>
            <%--<div class="col-md-6 col-lg-4 column">
                            <div class="card gr-3">
                                <div class="txt">
                                    <h1>GIVE EXPERTISE
                                        <br></h1>
                                </div>
                            </div>
                        </div>--%>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
</div>
</asp:Content>
