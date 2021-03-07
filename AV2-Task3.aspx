<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Task3.aspx.cs" Inherits="IT_AV2.Task3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <!--<div class="row m-4">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/sample.jpg" />
        </div>-->

        <div class="row m-4">
            <asp:ImageButton ID="sampleImage" runat="server" ImageUrl="~/sample.jpg" OnClick="sampleImage_Click" />
        </div>

        <div class="row m-4">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </div>

</asp:Content>
