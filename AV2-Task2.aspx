<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Task2.aspx.cs" Inherits="IT_AV2.Task2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">

        <div class="row text-center">
            <div class="m-4">
                Внесете име на валута:
                <br />
                <asp:TextBox ID="ImeValuta" runat="server"></asp:TextBox>
            </div>

            <div class="m-4">
                Внесете вредност на валута:
                <br />
                <asp:TextBox ID="VrednostValuta" runat="server"></asp:TextBox>
            </div>

            <div class="m-4">
                <asp:Button ID="DodadiValuta" runat="server" Text="Додади" OnClick="DodadiValuta_Click" />
                <asp:Button ID="BrishiValuta" runat="server" Text="Избриши валута"  OnClick="BrishiValuta_Click"/>
            </div>

            <hr />

            <div class="m-4">
                <asp:RadioButtonList ID="ListaValuti" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListaValuti_SelectedIndexChanged"></asp:RadioButtonList>
            </div>

            <hr />

            <div class="m-4">
                Вкупно валути: <asp:Label ID="total" runat="server" Text="0"></asp:Label>
            </div>
            <hr />

            <div class="m-4">
                Внесете вредност: <asp:TextBox ID="Vrednost" runat="server"></asp:TextBox>
            </div>

            <br />
            <hr />
            <div class="m-4">
                Статус: <asp:Label ID="status" runat="server" Text="0"></asp:Label>
            </div>


        </div>
    </div>
</asp:Content>
