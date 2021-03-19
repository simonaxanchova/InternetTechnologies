<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Task1.aspx.cs" Inherits="AV4.Task1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="margin: 20px;">
        <div class="row">
            <div class="col-md-3">
                <asp:TextBox ID="email" runat="server" Style="width: 100%"></asp:TextBox>
            </div>
            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator1" 
                    runat="server" 
                    ControlToValidate="email"
                    ErrorMessage="Задолжително поле!">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                    class="text-danger"
                    ID="emailVal" 
                    runat="server" 
                    ErrorMessage="Невалиден влез на е-маил!" 
                    ValidationExpression="\S+@\w+\.\w+" 
                    ControlToValidate="email">
                </asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="row" style="margin-top: 10px;">
            <div class="col-md-3">
                <asp:TextBox ID="password" runat="server" Style="width: 100%"></asp:TextBox>
            </div>
            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator2" 
                    runat="server" 
                    ControlToValidate="password"
                    ErrorMessage="Задолжително поле!">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                    class="text-danger"
                    ID="passwordVal" 
                    runat="server"
                    ControlToValidate="password"
                    ValidationExpression=".{5,}"
                    ErrorMessage="Невалиден влез на лозинка!">
                </asp:RegularExpressionValidator>
                    
            </div>
        </div>

        <div class="row" style="margin-top: 10px;">
            <div class="col-md-3">
                <asp:TextBox ID="cpassword" runat="server" Style="width: 100%"></asp:TextBox>
            </div>
            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator3" 
                    runat="server" 
                    ControlToValidate="cpassword"
                    ErrorMessage="Задолжително поле!">
                </asp:RequiredFieldValidator>
                <asp:CompareValidator 
                    class="text-danger"
                    ID="cpassVal" 
                    ControlToValidate="cpassword"
                    ControlToCompare="password"
                    runat="server" 
                    ErrorMessage="Лозинките не се совпаѓаат!"></asp:CompareValidator>
            </div>
        </div>

        <div class="row" style="margin-left: 0px; margin-top: 10px;">
            <asp:Button ID="Register" runat="server" Text="Пријави се" OnClick="Register_Click" />
        </div>

        <div class="row" style="margin-left: 0px; margin-top: 10px;">
            <asp:Label ID="showOutcome" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
