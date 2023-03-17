<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adduserrole.aspx.cs" Inherits="Skill_Tracker.adduserrole" %>

<%--Head Section--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        /*JavaScript For Table Design*/
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>

<%--Body Section--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="background-image:url('imgs/bg2.jpg')">
    <div class="container">
        <div class="row">
            <%--Card For Add/Delete Role--%>
            <div class="col-md-6">
                <div class="card" style="margin-top:40px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>ROLE</h3>
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
                                <label>Role ID</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="roleId" ErrorMessage="   (Please Enter Role ID)" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                &nbsp;<div class="form-group">
                                    <asp:TextBox ID="roleId" CssClass="form-control" runat="server" placeholder="Enter Role ID"></asp:TextBox>
                                </div>
                                <label>
                                    Role Name<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="roleName" ErrorMessage="   (Please Enter Role Name)" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </label>
                                &nbsp;<div class="form-group">
                                    <asp:TextBox ID="roleName" CssClass="form-control" runat="server" placeholder="Enter Role Name"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnAddRole" runat="server" class="btn btn-primary btn-block" Text="Add Role" OnClick="btnAddRole_Click" />
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnDeleteRole" runat="server" class="btn btn-primary btn-block" Text="Delete Role" OnClick="btnDeleteRole_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage1.aspx"><< Back to Home</a>
            </div>

            <%--Card For View Role--%>
            <div class="col-md-6">
                <div class="card" style="margin-top:40px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>USER ROLE LISTS</h3>
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
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="role_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="role_id" HeaderText="role_id" ReadOnly="True" SortExpression="role_id" />
                                        <asp:BoundField DataField="role_name" HeaderText="role_name" SortExpression="role_name" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionString12 %>" SelectCommand="SELECT * FROM [role]"></asp:SqlDataSource>
                                <br />
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
    <br />
    <br />
    <br />
    <br />
</div>
</asp:Content>
