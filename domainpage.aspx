<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="domainpage.aspx.cs" Inherits="Skill_Tracker.domainpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 2px solid #990000;
        }

        .auto-style2 {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="background-image:url('imgs/bg2.jpg')">
    <br />
    
        <center>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal" CellPadding="5" ForeColor="#333333">
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <%--<FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />--%>
                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333"/>
                <ItemTemplate>
                    <table class="auto-style1" >
                        <tr>
                            <td class="text-center">
                                <asp:Button ID="btnDomain" runat="server" CommandArgument='<%# Eval("domain_name") %>' CommandName="openskill" Text='<%# Eval("domain_name") %>' CssClass="auto-style2" Font-Bold="True" Font-Names="Good Times" Font-Size="XX-Large" Height="96px" Width="276px" ForeColor="#660033" style="background: linear-gradient(to bottom, #999966 0%, #ffffff 100%);" BorderWidth="3px"/>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
        </center>
    
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionCategory %>" SelectCommand="SELECT DISTINCT [domain_name] FROM [skill]"></asp:SqlDataSource>
    </p>

<br />
<br />

</div>

</asp:Content>
