<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Task3.aspx.cs" Inherits="AV4.Task3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <div class="container" style="margin: 20px;">
        <div class="row">
            <div class="col-md-3">
                <asp:TextBox ID="name" runat="server" Style="width: 100%"></asp:TextBox>
            </div>
            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator1" 
                    runat="server" 
                    ControlToValidate="name"
                    ErrorMessage="Полето за име на испит е задолжително!">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row" style="margin-top: 10px;">
            <div class="col-md-3">
                <asp:TextBox ID="grade" runat="server" Style="width: 100%"></asp:TextBox>
            </div>
            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator2" 
                    runat="server" 
                    ControlToValidate="grade"
                    ErrorMessage="Полето за оцена е задолжително!">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator 
                    class="text-danger"
                    ID="RangeValidator1" 
                    runat="server" 
                    ControlToValidate="grade"
                    ErrorMessage="Оцената мора да е во опсег 5-10!" 
                    MaximumValue="10" 
                    MinimumValue="5"
                    Type="Integer"
                ></asp:RangeValidator>


            </div>
        </div>

        <div class="row" style="margin-top: 10px;">
            <div class="col-md-3">
                <asp:TextBox ID="date" runat="server" Style="width: 100%"></asp:TextBox>
            </div>
            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator3" 
                    runat="server" 
                    ControlToValidate="date"
                    ErrorMessage="Полето за датум е задолжително!">
                </asp:RequiredFieldValidator>

                <asp:CompareValidator 
                    class="text-danger"
                    ID="CompareValidator1" 
                    runat="server" 
                    ControlToValidate="date"
                    ValueToCompare="2021-03-21"
                    ErrorMessage="Датумот не е валиден!" 
                    Operator="LessThanEqual"
                ></asp:CompareValidator>

            </div>
        </div>

        <div class="row" style="margin-left: 0px; margin-top: 10px;">
            <asp:Button ID="submit" runat="server" Text="Внеси" OnClick="submit_Click" />
        </div>

        <div class="row" style="margin-left: 0px; margin-top: 10px;">
            <asp:Label CssClass="text-success" ID="outputMessage" runat="server" Text=""></asp:Label>
        </div>


    </div>
</asp:Content>
