<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signuppage.aspx.cs" Inherits="Skill_Tracker.signuppage" %>

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
<body  style="background-image:url('imgs/bg2.jpg')">
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 30px">
            <div class="row">
                <div class="col-md-12 mx-auto">

                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="100" src="imgs/user.jpg" />
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>REGISTRATION</h3>
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
                                <div class="col-md-6">
                                    <label>Department</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="signUpDepartmentDropDownList" ErrorMessage="(Please Select Your Department)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                    <div class="form-group">
                                        <asp:DropDownList ID="signUpDepartmentDropDownList" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="department_name" DataValueField="department_name" AppendDataBoundItems="true">
                                            <asp:ListItem Text="----Select----" Value="0"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionString %>" SelectCommand="SELECT [department_name] FROM [department]"></asp:SqlDataSource>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label>User ID</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="signUpId" ErrorMessage="(Please Enter User ID)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                    <div class="form-group">
                                        <asp:TextBox ID="signUpId" CssClass="form-control" runat="server" placeholder="Enter User ID"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label>User Type</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="signUpUserTypeDropDownList" ErrorMessage="(Please Select Your Type)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                    <div class="form-group">
                                        <asp:DropDownList ID="signUpUserTypeDropDownList" CssClass="form-control" runat="server" placeholder="Select a User Type" DataSourceID="userType" DataTextField="user_type_name" DataValueField="user_type_name" AppendDataBoundItems="true">
                                            <asp:ListItem Text="----Select----" Value="0"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="userType" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionString %>" SelectCommand="SELECT [user_type_name] FROM [user_type]"></asp:SqlDataSource>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label>Full Name</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="signUpName" ErrorMessage="(Please Enter Your Name)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                    <div class="form-group">
                                        <asp:TextBox ID="signUpName" CssClass="form-control" runat="server" placeholder="Enter Full Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label>Role</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="signUpRoleTypeDropDownList" ErrorMessage="(Please Select Your Role)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                    <div class="form-group">
                                        <asp:DropDownList ID="signUpRoleTypeDropDownList" CssClass="form-control" runat="server" placeholder="Select a Role" DataSourceID="userRole" DataTextField="role_name" DataValueField="role_name" AppendDataBoundItems="true">
                                            <asp:ListItem Text="----Select----" Value="0"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="userRole" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionString %>" SelectCommand="SELECT [role_name] FROM [role]"></asp:SqlDataSource>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label>Email ID</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="signUpEmail" ErrorMessage="(Please Enter Your Email)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="signUpEmail" ErrorMessage="(Invalid Email ID)" ForeColor="#000099" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    &nbsp;<div class="form-group">
                                        <asp:TextBox ID="signUpEmail" CssClass="form-control" runat="server" placeholder="Enter Email ID" TextMode="Email"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label>Mobile No.</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="signUpMobile" ErrorMessage="(Please Enter Your Mobile no.)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="signUpMobile" ErrorMessage="Invalid Mobile No." ForeColor="#000099" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                    <div class="form-group">
                                        <asp:TextBox ID="signUpMobile" CssClass="form-control" runat="server" placeholder="Mobile No." TextMode="number"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label>Password</label>&nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="signUpPassword" ErrorMessage="Please Enter Password" ForeColor="#990000"></asp:RequiredFieldValidator>
                                    &nbsp;
                                    <div class="form-group">
                                        <asp:TextBox ID="signUpPassword" CssClass="form-control" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label>Image</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="signUpImage" ErrorMessage="Please Upload Image" ForeColor="#990000"></asp:RequiredFieldValidator>
                                    <div class="form-group">
                                        <asp:FileUpload ID="signUpImage" runat="server" CssClass="form-control" />
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label>Password&nbsp; </label>
                                    &nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="signUpConfirmPassword" ErrorMessage="Please Re-Enter password" ForeColor="#990000"></asp:RequiredFieldValidator>
                                    &nbsp;&nbsp;
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="signUpPassword" ControlToValidate="signUpConfirmPassword" ErrorMessage="Password doesn't Match." ForeColor="#000099"></asp:CompareValidator>
                                    &nbsp;<asp:TextBox ID="signUpConfirmPassword" CssClass="form-control" runat="server" placeholder="Enter Confirm Password" TextMode="Password"></asp:TextBox>
                                    <div class="form-group">
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <asp:Button ID="signUpBtn" class="btn btn-primary btn-block" runat="server" Text="SIGN UP" OnClick="signUpBtn_Click"></asp:Button>
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
