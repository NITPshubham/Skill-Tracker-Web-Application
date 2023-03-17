<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpasswordpage.aspx.cs" Inherits="Skill_Tracker.forgotpasswordpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<%--Head Section--%>
<head runat="server">
    <%--CSS Files--%>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <link href="css/cssstylesheet.css" rel="stylesheet" />

    <%--Javascript files--%>
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
                        <div class=" card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="100" src="imgs/user.jpg" />
                                        <centre>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Forgot Password</h3>
                                        <centre>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Enter your Email ID</label>
                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmailForgotPassword" ErrorMessage="Please Enter Your Email ID." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        <asp:TextBox CssClass="form-control" ID="txtEmailForgotPassword" runat="server" placeholder="Email ID"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <center>
                                            <asp:Button class="btn  btn-primary" ID="btnSubmitForgotpassword" runat="server" Text="Submit to change your password" OnClick="btnSubmitForgotpassword_Click" />
                                        </center>
                                    </div>
                                    <asp:Label ID="LabMsg" runat="server" ForeColor="#0033CC"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <a href="splashpage.aspx"><< Back to Home</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
