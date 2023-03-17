<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UsersDetails.aspx.cs" Inherits="Skill_Tracker.UsersDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>USER DETAILS</h3>
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

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
                                <br />
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                                        <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                                        <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                                        <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
                                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
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

                            </div>
                        </div>
                    </div>
                </div>
                <a href="adminhomepage.aspx"><< Back to Home</a>
            </div>
        </div>
    </div>
</asp:Content>
