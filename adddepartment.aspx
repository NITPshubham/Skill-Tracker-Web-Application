<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adddepartment.aspx.cs" Inherits="Skill_Tracker.adddepartment" %>

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
            <%--Card For Add/Delete Department--%>
            <div class="col-md-6">
                <div class="card" style="margin-top:40px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>DEPARTMENT</h3>
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
                                <label>Department ID</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="deptId" ErrorMessage="(Please Enter Department ID)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox ID="deptId" CssClass="form-control" runat="server" placeholder="Enter Department ID"></asp:TextBox>
                                </div>
                                <label>Department Name</label>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="deptName" ErrorMessage="(Please Enter Department Name)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox ID="deptName" CssClass="form-control" runat="server" placeholder="Enter Department Name"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnAddDept" runat="server" class="btn btn-primary btn-block" Text="Add Department" OnClick="btnAddDept_Click"></asp:Button>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnDeleteDept" runat="server" class="btn btn-primary btn-block" Text="Delete Department" OnClick="btnDeleteDept_Click"></asp:Button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="adminhomepage.aspx"><< Back to Home</a>
            </div>

            <%--Card For View Department--%>
            <div class="col-md-6">
                <div class="card" style="margin-top:40px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>DEPARTMENT LISTS</h3>
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
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="department_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="department_id" HeaderText="department_id" ReadOnly="True" SortExpression="department_id" />
                                        <asp:BoundField DataField="department_name" HeaderText="department_name" SortExpression="department_name" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionString10 %>" SelectCommand="SELECT * FROM [department]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    
</div>
</asp:Content>
