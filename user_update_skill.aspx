<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user_update_skill.aspx.cs" Inherits="Skill_Tracker.user_update_skill" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title></title>
<script type ="text/javascript" src="/crystalreportviewers13/js/crviewer/crv.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="background-image:url('imgs/bg2.jpg')">
    <center>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" HasCrystalLogo="False" HasDrillUpButton="False" HasRefreshButton="True" ReportSourceID="CrystalReportSource1" ToolPanelView="ParameterPanel"/>
    </center>
    <p>
        <br />
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="users_update_skill.rpt">
            </Report>
        </CR:CrystalReportSource>
    </p>
</div>
</asp:Content>
