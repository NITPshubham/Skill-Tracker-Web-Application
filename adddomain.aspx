<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adddomain.aspx.cs" Inherits="Skill_Tracker.adddomain" %>

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
            <%--Card For Add/Delete Domain--%>
            <div class="col-md-6 mx-auto">
                <div class="card" style="margin-top:40px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>DOMAIN</h3>
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
                                <label>Domain ID&nbsp;&nbsp;</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="domainId" ErrorMessage="(Please Enter Domain ID)" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox ID="domainId" CssClass="form-control" runat="server" placeholder="Enter Domain ID"></asp:TextBox>
                                </div>
                                <label>Domain Name
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="domainName" ErrorMessage="(Please Enter Domain Name)" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </label>
                                &nbsp;
                                <div class="form-group">
                                    <asp:TextBox ID="domainName" CssClass="form-control" runat="server" placeholder="Enter Domain Name"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnAddDomain" runat="server" class="btn btn-primary btn-block" Text="Submit Domain" OnClick="btnAddDomain_Click" />
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnDeleteDomain" runat="server" class="btn btn-primary btn-block" Text="Delete Domain" OnClick="btnDeleteDomain_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="adminhomepage.aspx"><< Back to Home</a>
            </div>

            <%--Card For View Domain--%>
            <div class="col-md-6">

                <div class="card" style="margin-top:40px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>DOMAIN LISTS</h3>
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
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="domain_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="domain_id" HeaderText="domain_id" ReadOnly="True" SortExpression="domain_id" />
                                        <asp:BoundField DataField="domain_name" HeaderText="domain_name" SortExpression="domain_name" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionString14 %>" SelectCommand="SELECT * FROM [domain]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
