<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IT_AV2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Internet Technolgy</h1>
    </div>

    <div class="row">
        <div class="col-md-12 text-center">
            <div>
                Изберете град:
                <br />
                <asp:ListBox ID="ListaGradovi" runat="server" Height="69px" Width="95px">
                    <asp:ListItem Value="0">Скопје</asp:ListItem>
                    <asp:ListItem Value="50">Велес</asp:ListItem>
                    <asp:ListItem Value="200">Охрид</asp:ListItem>
                </asp:ListBox>
            </div>
            <div>
                <asp:Button ID="PrikazhiGrad" runat="server" Text="Прикажи град" OnClick="PrikazhiGrad_Click1" />
            </div>
            <div>
                Селектираниот град е: <asp:Label ID="SelektiranGrad" runat="server" Text="(none)"></asp:Label>
            </div>
            <div>
                Одалеченоста од Скопје е: <asp:Label ID="Oddalechenost" runat="server" Text="(none)"></asp:Label>km.
            </div>
        </div>
    </div>

</asp:Content>
