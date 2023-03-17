<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin_report.aspx.cs" Inherits="Skill_Tracker.admin_report1" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
<script type ="text/javascript" src="/crystalreportviewers13/js/crviewer/crv.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="background-image:url('imgs/bg2.jpg')">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="text-center">
        <center>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource1" ToolPanelView="ParameterPanel"  HasCrystalLogo="False" HasRefreshButton="True" Height="900px" ToolbarStyle-BackColor="#669999" ToolbarStyle-BorderColor="#003366" Width="1082px" HasZoomFactorList="False"/>
    &nbsp;&nbsp;&nbsp;
            </center>
    </div>
    <p>
        <br />
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="admin_report.rpt">
            </Report>
        </CR:CrystalReportSource>
    </p>
</div>
</asp:Content>
