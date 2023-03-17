<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="Skill_Tracker.loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<%--Head Section--%>
<head runat="server">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <link href="css/cssstylesheet.css" rel="stylesheet" />

    <script src="bootstrap/js/jquery-3.5.1.slim.min.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="datatables/js/jquery.dataTables.min.js"></script>
</head>

<%--Body Section--%>
<body style="background-image:url('imgs/bg2.jpg')">
    <form id="form1" runat="server" >
        <div class="container" style="margin-top: 50px" >
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
                                        <h3>LOGIN</h3>
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

                                    <label>User ID</label>&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="loginID" ErrorMessage="(Please Enter User ID)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                    <div class="form-group">
                                        <asp:TextBox ID="loginID" CssClass="form-control" runat="server" placeholder="Enter User ID"></asp:TextBox>
                                    </div>
                                    <label>Password</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loginPassword" ErrorMessage="(Please Enter Password)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                    <div class="form-group">
                                        <asp:TextBox ID="loginPassword" CssClass="form-control" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <a href="forgotpasswordpage.aspx" onclick="window.open('forgotpasswordpage.aspx', 'FP');" style="padding-left: 350px">Forgot Password</a>
                                    <div class="form-group">
                                        <asp:Button ID="btnLogin" class="btn btn-primary btn-block" runat="server" Text="LOGIN" OnClick="btnLogin_Click"></asp:Button>
                                    </div>
                                    <div class="form-group">
                                        <a href="signuppage.aspx">
                                            <input id="btnRegister" class="btn btn-info btn-block" type="button" value="SIGN UP" /></a>
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
