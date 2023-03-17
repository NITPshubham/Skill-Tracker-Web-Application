<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profilepage.aspx.cs" Inherits="Skill_Tracker.profilepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1059px;
            height: 398px;
            border-style: solid;
            border-width: 1px;
            margin-top: 0px;
            background-color: #FF9966;
        }

        .auto-style2 {
            width: 225px;
            height: 19px;
            background-color: #FF6600;
        }

        .auto-style3 {
            width: 907px;
            height: 19px;
            text-align: center;
            background-color: #FF6600;
        }

        .auto-style4 {
            width: 100%;
            height: 324px;
            border-style: solid;
            border-width: 1px;
            margin-top: 0px;
        }

        .auto-style5 {
            width: 113px;
        }

        .auto-style6 {
            width: 113px;
            height: 63px;
        }

        .auto-style7 {
            height: 63px;
            text-align: justify;
            width: 381px;
        }

        .auto-style8 {
            width: 107%;
            height: 382px;
            margin-left: 0px;
        }

        .auto-style9 {
            height: 316px;
            text-align: center;
        }

        .auto-style10 {
            margin-left: 0;
            background-color: #FF9933;
        }

        .auto-style11 {
            background-color: #FF9933;
        }

        .auto-style12 {
            text-align: center;
            width: 381px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="background-image:url('imgs/bg2.jpg')">
    <div>
    <center>
        <table class="auto-style1">
            <tr style="margin-top:70px">
                <td class="auto-style3">
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style6"><b>USER_ID</b></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox1" runat="server" Width="153px" ReadOnly="True" Height="28px"></asp:TextBox>
                                &nbsp;<strong><asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="37px" OnClick="Button1_Click" Text="SEARCH" Width="83px" />
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5"><b>NAME</b></td>
                            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5"><b>E-MAIL</b></td>
                            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5"><b>MOBILE</b></td>
                            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5"><b>USER-TYPE</b></td>
                            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               
                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="user_type_name" DataValueField="user_type_name" CssClass="offset-sm-0" Height="28px" Width="188px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionString %>" SelectCommand="SELECT DISTINCT [user_type_name] FROM [user_type]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5"><b>DEPARTMENT</b></td>
                            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="department_name" DataValueField="department_name" Height="28px" Width="186px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionString %>" SelectCommand="SELECT DISTINCT [department_name] FROM [department]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5"><b>ROLE</b></td>
                            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="role_name" DataValueField="role_name" CssClass="offset-sm-0" Height="28px" Width="187px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionString %>" SelectCommand="SELECT DISTINCT [role_name] FROM [role]"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                    &nbsp;<br />
                    &nbsp;<asp:Button ID="Button2" runat="server" CssClass="auto-style11" OnClick="Button2_Click" Text="Update" Width="84px" />
                    &nbsp;
                   
                    <br />
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">
                    <table class="auto-style8">
                        <tr>
                            <td class="auto-style9">
                                <asp:Image ID="Image1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="243px" />
                                <br />
                                Upload your image here</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </center>
    <br />
    <br />
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
