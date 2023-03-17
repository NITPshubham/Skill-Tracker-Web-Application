<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminloginpage.aspx.cs" Inherits="Skill_Tracker.adminloginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<%--Head Section--%>
<head runat="server">
    <%--CSS Files--%>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <link href="css/cssstylesheet.css" rel="stylesheet" />

    <%--JavaScript Files--%>
    <script src="bootstrap/js/jquery-3.5.1.slim.min.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="datatables/js/jquery.dataTables.min.js"></script>
</head>

<%--Body Section--%>
<body style="background-image:url('imgs/bg2.jpg')">
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 50px">
            <div class="row">

                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="150" src="imgs/user.jpg" />
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>ADMIN LOGIN</h3>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <centre>
                                        <hr>
                                    </centre>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <label>Admin ID</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="loginAdminId" ErrorMessage="   (Enter User ID)" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>&nbsp;<div class="form-group">
                                        <asp:TextBox ID="loginAdminId" CssClass="form-control" runat="server" placeholder="Enter Admin ID"></asp:TextBox>
                                    </div>
                                    <label>
                                        Password<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="loginAdminPassword" ErrorMessage="   (Enter Password)" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </label>
                                    &nbsp;<div class="form-group">
                                        <asp:TextBox ID="loginAdminPassword" CssClass="form-control" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <a href="forgotpasswordpage.aspx" style="padding-left: 350px">Forgot Password</a>
                                    <div class="form-group">
                                        <asp:Button ID="btnLoginAdmin" class="btn btn-primary btn-block" runat="server" Text="LOGIN" OnClick="btnLoginAdmin_Click"></asp:Button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="splashpage.aspx"><< Back to Home</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
