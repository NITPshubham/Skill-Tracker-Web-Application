<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addadminpage.aspx.cs" Inherits="Skill_Tracker.addadminpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        /*JavaScript For Table Design*/
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="background-image:url('imgs/bg2.jpg')">
    <div class="container" >
        <div class="row">
            <%--Card For Add/Delete New Admin--%>
            <div class="col-md-6">
                <div class="card" style="margin-top:40px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>ADD ADMIN</h3>
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

                                <label>
                                    ADMIN ID
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="adminId" ErrorMessage="(Please Enter Admin ID)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                </label>
                                <div class="form-group">
                                    <asp:TextBox ID="adminId" CssClass="form-control" runat="server" placeholder="Enter Admin ID"></asp:TextBox>
                                </div>
                                <label>
                                    PASSWORD
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="adminPassword" ErrorMessage="(Please Enter Password)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                </label>
                                &nbsp;<div class="form-group">
                                    <asp:TextBox ID="adminPassword" CssClass="form-control" runat="server" placeholder="Enter Password"></asp:TextBox>
                                </div>
                                <label>
                                    Name
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="adminName" ErrorMessage="(Please Enter Admin Name)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                    &nbsp;
                                </label>
                                &nbsp;<div class="form-group">
                                    <asp:TextBox ID="adminName" CssClass="form-control" runat="server" placeholder="Enter Name"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnAddAdmin" runat="server" class="btn btn-primary btn-block" Text="Add Admin" OnClick="btnAddAdmin_Click"></asp:Button>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnDeleteAdmin" runat="server" class="btn btn-primary btn-block" Text="Delete Admin" OnClick="btnDeleteAdmin_Click"></asp:Button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="admihomepage.aspx"><< Back to Home</a>
            </div>

            <%--Card For View Admin--%>
            <div class="col-md-6">
                <div class="card" style="margin-top:40px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>ADMIN LISTS</h3>
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
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="admin_id" runat="server" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="admin_id" HeaderText="admin_id" ReadOnly="True" SortExpression="admin_id" />
                                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                </asp:GridView>
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [admininfo]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    </div>
</asp:Content>
