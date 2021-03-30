<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="zadacha2.aspx.cs" Inherits="Lab2.zadacha2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="margin: 20px;">
        <asp:ValidationSummary class="text-danger" ID="ValidationSummary1" runat="server" />
        <div class="row">
            
            <div class="col-md-3">
                Име: <asp:TextBox ID="firstName" runat="server" Style="width: 100%"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="fnameVal" 
                    runat="server" 
                    ControlToValidate="firstName"
                    Display="None"
                    ErrorMessage="Внесете име!"
                ></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row" style="margin-top: 10px;">
            <div class="col-md-3">
                Презиме: <asp:TextBox ID="lastName" runat="server" Style="width: 100%"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="lnameVal" 
                    runat="server" 
                    ControlToValidate="lastName"
                    Display="None"
                    ErrorMessage="Внесете презиме!"
                ></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row" style="margin-top: 10px;">
            <div class="col-md-3">
                ФИНКИ ID: <asp:TextBox ID="finkiID" runat="server" Style="width: 100%"></asp:TextBox>
                <asp:Label ID="lblMail" runat="server" Font-Bold="False" ForeColor="Gray">@finki.ukim.mk</asp:Label>
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="idVal" 
                    runat="server" 
                    ControlToValidate="finkiID"
                    Display="None"
                    ErrorMessage="Внесете ID!"
                ></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator 
                    class="text-danger"
                    ID="RegularExpressionValidator3" 
                    runat="server" 
                    Display="None"
                    ControlToValidate="finkiID"
                    ValidationExpression="[a-z]+((_)|(\.))[a-z]+\d*"
                    ErrorMessage="Невалиден влез за ID!"
                ></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="row" style="margin-top: 10px;">
            <div class="col-md-4">
                Лозинка: 
                <br />
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="passwordVal" 
                    runat="server" 
                    ControlToValidate="password"
                    Display="None"
                    ErrorMessage="Внесете лозинка!"
                ></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row" style="margin-top: 10px;">
            <div class="col-md-4">
                Потврда на лозинка:
                <br />
                <asp:TextBox ID="cpassword" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="cpassVal" 
                    runat="server" 
                    ControlToValidate="cpassword"
                    Display="None"
                    ErrorMessage="Потврдете ја лозинката!"
                ></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>


    <div class="container" style="margin: 20px;">
        <div class="row" style="margin-top: 10px;">
            <div class="col-md-4">
                Адреса: 
                <br /><asp:TextBox ID="address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="addressVal" 
                    runat="server" 
                    ControlToValidate="address"
                    ErrorMessage="Внесете адреса!"
                ></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row" style="margin-top: 10px;">
            <div class="col-md-4">
                Телефон: 
                <br /><asp:TextBox ID="phone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="phoneVal" 
                    runat="server" 
                    ControlToValidate="phone"
                    ErrorMessage="Внесете телефонски број!"
                ></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator 
                        class="text-danger"
                        ID="RegularExpressionValidator2" 
                        runat="server" 
                        ControlToValidate="phone"
                        ErrorMessage="Невалиден телефонски број!"
                        ValidationExpression="^(\+389)\s(((2\s)\d{4}\s\d{3})|(7[0-35-9]\s\d{3}\s\d{3}))"
                    ></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="row" style="margin-top: 10px;">
            <div class="col-md-4">
                Пол: <asp:RadioButtonList ID="rblGender" runat="server" CssClass="radioButtonList" RepeatDirection="Horizontal">
                        <asp:ListItem>М</asp:ListItem>
                        <asp:ListItem>Ж</asp:ListItem>
                     </asp:RadioButtonList>

                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="genVal" 
                    runat="server" 
                    ControlToValidate="rblGender"
                    ErrorMessage="Изберете пол!"
                ></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row" style="margin-top: 10px;">
            <div class="col-md-4">
                Датум на раѓање:
                 <asp:Calendar ID="calendar" runat="server" Font-Underline="False" VisibleDate="1990-01-01">
                                <DayStyle Font-Underline="True" />
                                <NextPrevStyle Font-Underline="True" />
                                <OtherMonthDayStyle Font-Underline="True" />
                                <SelectedDayStyle Font-Underline="False" />
                                <TitleStyle Font-Bold="False" Font-Underline="False" />
                                <TodayDayStyle Font-Underline="False" />
                            </asp:Calendar>
            </div>
        </div>
    
        <div class="row" style="margin-top: 10px;">
            <div class="col-md-3">
                Занимање: 
                <asp:DropDownList ID="profession" runat="server">
 
                    <asp:ListItem>Програмер</asp:ListItem>
                    <asp:ListItem>Дизајнер</asp:ListItem>
                    <asp:ListItem>Архитект</asp:ListItem>
                    <asp:ListItem>Економист</asp:ListItem>
                    <asp:ListItem>Правник</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="row" style="margin-top: 10px;">
            <div class="col-md-5">
                Години на вршење на избраната дејност:
                <br />
                <asp:TextBox ID="years" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="yearsVal" 
                    runat="server"
                    ControlToValidate="years"
                    ErrorMessage="Внесете години!"
                ></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator 
                    class="text-danger"
                    ID="RegularExpressionValidator1" 
                    runat="server" 
                    ControlToValidate="years"
                    ValidationExpression="\d+"
                    ErrorMessage="Недозволена вредност!"
                ></asp:RegularExpressionValidator>
            </div>
        </div>



        <div class="row" style="margin-top: 10px;">
            <div class="col-md-3">
                <asp:Button ID="submit" runat="server" Text="Внеси" OnClick="submit_Click" />
            </div>
        </div>
    </div>

    <asp:View ID="View1" runat="server">
        <asp:Label ID="successfulRegistration" runat="server" Text="Label">Креиран е корисникот</asp:Label>
        <asp:Label ID="user" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="userMail" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="error" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="btnStart" runat="server" Text="Button" />
    </asp:View>


</asp:Content>
