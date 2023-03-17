<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="skillpage.aspx.cs" Inherits="Skill_Tracker.skillpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 2px solid #990000;
            height: 61px;
        }

        .auto-style2 {
            width: 217px;
            text-align: left;
            height: 46px;
        }

        .auto-style3 {
            text-align: left;
            height: 46px;
            width: 899px;
        }

        input[type=radio] {
            width: 20px;
            height: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image:url('imgs/bg2.jpg')">
    <br />
    <center>
    <asp:Label ID="Label6" runat="server" Text="Label" style="font-size:30px; font-size:xx-large"></asp:Label>
    </center>
        <br />

    <div class="text-left">
        <center>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="skill_id" DataSourceID="SqlDataSource1" Width="1100px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="True" GridLines="Horizontal">
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <ItemTemplate>
                    <table class="auto-style1" align="left">
                        <tr>
                            <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("skill_name") %>' ForeColor="Blue"></asp:Label>
                            </td>
                            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RB1" runat="server" GroupName="experty" />
                                &nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text="No Knowledge"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RB2" runat="server" GroupName="experty" />
                                &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label3" runat="server" Text="Beginnner"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RB3" runat="server" GroupName="experty" />
                                &nbsp;&nbsp;
                                    <asp:Label ID="Label4" runat="server" Text="Intermediate"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RB4" runat="server" GroupName="experty" />
                                &nbsp;&nbsp;
                                    <asp:Label ID="Label5" runat="server" Text="Expert"></asp:Label>

                                <%--<input id="Radio1" type="radio" value="No knowledge" name="<%# Eval("skill_name") %>"/>
                                    <input id="Radio2" type="radio" value="Beginnner" name="<%# Eval("skill_name") %>"/>
                                    <input id="Radio3" type="radio" value="Intermediate" name="<%# Eval("skill_name") %>"/>
                                    <input id="Radio4" type="radio" value="Expert" name="<%# Eval("skill_name") %>"/>--%>


                                <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" >
                                        <asp:ListItem Text="No knowledge" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="Beginnner" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Intermediate" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="Expert" Value="3"></asp:ListItem>
                                    </asp:RadioButtonList>--%>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            </asp:DataList>
        </center>
    </div>
    <br />
    <center>

        <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" BackColor="#FF3300" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="56px" Width="193px" />
    </center>
        
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_skillConnectionCategory %>" SelectCommand="SELECT * FROM [skill] WHERE ([domain_name] = @domain_name)">
        <SelectParameters>
            <asp:QueryStringParameter Name="domain_name" QueryStringField="cat" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</div>
</asp:Content>
