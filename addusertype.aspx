<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addusertype.aspx.cs" Inherits="Skill_Tracker.addusertype" %>

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
            <%--Card For Add/Delete User Type--%>
            <div class="col-md-6">
                <div class="card" style="margin-top:40px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>USER TYPE</h3>
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
                                    User Type ID<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="userTypeId" ErrorMessage="   (Enter User Type ID)" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </label>
                                &nbsp;<div class="form-group">
                                    <asp:TextBox ID="userTypeId" CssClass="form-control" runat="server" placeholder="Enter User Type ID"></asp:TextBox>
                                </div>
                                <label>
                                    User Type<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="userTypeName" ErrorMessage="   (Enter User Type Name)" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </label>
                                &nbsp;<div class="form-group">
                                    <asp:TextBox ID="userTypeName" CssClass="form-control" runat="server" placeholder="Enter User Type"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button ID="btnAddUserType" runat="server" class="btn btn-primary btn-block" Text="Add User Type" OnClick="btnAddUserType_Click" />
                                </div>

                                <div class="form-group">
                                    <asp:Button ID="btnAddUserName" runat="server" class="btn btn-primary btn-block" Text="Delete User Type" OnClick="btnDeleteUserType_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="adminhomepage.aspx"><< Back to Home</a>
            </div>

            <%--Card For View User Type--%>
            <div class="col-md-6">
                <div class="card" style="margin-top:40px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>USER TYPE LISTS</h3>
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
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="user_type_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="user_type_id" HeaderText="user_type_id" ReadOnly="True" SortExpression="user_type_id" />
                                        <asp:BoundField DataField="user_type_name" HeaderText="user_type_name" SortExpression="user_type_name" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionString11 %>" SelectCommand="SELECT * FROM [user_type]"></asp:SqlDataSource>
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
