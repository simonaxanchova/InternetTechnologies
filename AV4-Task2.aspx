<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Task2.aspx.cs" Inherits="AV4.Task2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="margin: 20px;">
        <div class="row">
            <div class="col-md-3">
                <asp:DropDownList ID="cities" runat="server">
                    <asp:ListItem>(град)</asp:ListItem>
                    <asp:ListItem>Скопје</asp:ListItem>
                    <asp:ListItem>Велес</asp:ListItem>
                    <asp:ListItem>Охрид</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="cityVal" 
                    runat="server" 
                    ControlToValidate="cities"
                    InitialValue="(град)"
                    ErrorMessage="Задолжително мора да изберете град од листата!"></asp:RequiredFieldValidator>
            </div>
        </div>



        <div class="row" style="margin-left: 0px; margin-top: 10px;">
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
        </div>

        <div class="row" style="margin-left: 0px; margin-top: 10px;">
            <asp:Label ID="outputMessage" runat="server" Text=""></asp:Label>
        </div>

    </div>



</asp:Content>
