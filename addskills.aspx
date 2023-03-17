<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addskills.aspx.cs" Inherits="Skill_Tracker.addskills" %>

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
            <%--Card For Add/Delete Skills--%>
            <div class="col-md-6">
                <div class="card" style="margin-top:40px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>SKILL</h3>
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
                                    SKILL ID
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="skillId" ErrorMessage="(Please Enter Skill ID)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                </label>
                                <div class="form-group">
                                    <asp:TextBox ID="skillId" CssClass="form-control" runat="server" placeholder="Enter Skill ID"></asp:TextBox>
                                </div>
                                <label>
                                    Skill Name
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="skillName" ErrorMessage="(Please Enter Skill Name)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                </label>
                                &nbsp;<div class="form-group">
                                    <asp:TextBox ID="skillName" CssClass="form-control" runat="server" placeholder="Enter Skill Name"></asp:TextBox>
                                </div>
                                <label>
                                    Domain Name
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="skillDomainName" ErrorMessage="(Please Enter Domain Name)" ForeColor="#990000"></asp:RequiredFieldValidator>
                                    &nbsp;
                                </label>
                                &nbsp;<div class="form-group">
                                    <asp:TextBox ID="skillDomainName" CssClass="form-control" runat="server" placeholder="Enter Domain Name"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnAddSkill" runat="server" class="btn btn-primary btn-block" Text="Add Skill" OnClick="btnAddSkill_Click"></asp:Button>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnDeleteSkill" runat="server" class="btn btn-primary btn-block" Text="Delete Skill" OnClick="btnDeleteSkill_Click"></asp:Button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="admihomepage.aspx"><< Back to Home</a>
            </div>

            <%--Card For View Skills--%>
            <div class="col-md-6">
                <div class="card" style="margin-top:40px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>SKILLS LISTS</h3>
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
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="skill_id" runat="server" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="skill_id" HeaderText="skill_id" ReadOnly="True" SortExpression="skill_id" />
                                        <asp:BoundField DataField="skill_name" HeaderText="skill_name" SortExpression="skill_name" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionString13 %>" SelectCommand="SELECT * FROM [skill]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
