<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="zadacha2.aspx.cs" Inherits="Lab2.zadacha2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Internet Technologies</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <div class="row" style="margin-top: 10px;">
                    <div class="col-md-3">
                        Име: <br /><asp:TextBox ID="firstname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            class="text-danger"
                            ID="RequiredFieldValidator1"
                            runat="server"
                            Display="None"
                            ControlToValidate="firstname"
                            ErrorMessage="Внесете име!"
                        ></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row" style="margin-top: 10px;">
                    <div class="col-md-3">
                        Презиме: <br /><asp:TextBox ID="lastname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            class="text-danger"
                            ID="RequiredFieldValidator2"
                            runat="server"
                            Display="None"
                            ControlToValidate="lastname"
                            ErrorMessage="Внесете презиме!"
                        ></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row" style="margin-top: 10px;">
                    <div class="col-md-3">
                        ФИНКИ ID: <br /><asp:TextBox ID="finkiID" runat="server"></asp:TextBox>
                        <asp:Label ID="lblMail" runat="server" Font-Bold="False" ForeColor="Gray">@finki.ukim.mk</asp:Label>
                        <asp:RequiredFieldValidator
                            class="text-danger"
                            ID="RequiredFieldValidator3"
                            runat="server"
                            Display="None"
                            ControlToValidate="finkiID"
                            ErrorMessage="Внесете ID!"
                        ></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator 
                            ForeColor="Red"
                            ID="RegularExpressionValidator1" 
                            runat="server" 
                            Display="None"
                            ControlToValidate="finkiID"
                            ValidationExpression="[a-z]+((_)|(\.))[a-z]+\d*"
                            ErrorMessage="Невалиден формат на ID!"
                        ></asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="row" style="margin-top: 10px;">
                    <div class="col-md-3">
                        Лозинка: <br /><asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            class="text-danger"
                            ID="RequiredFieldValidator4"
                            runat="server"
                            Display="None"
                            ControlToValidate="password"
                            ErrorMessage="Внесете лозинка!"
                        ></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-3">
                        Потврда: <br /><asp:TextBox ID="cpassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            class="text-danger"
                            ID="RequiredFieldValidator5"
                            runat="server"
                            Display="None"
                            ControlToValidate="cpassword"
                            ErrorMessage="Потвредете ја лозинката!"
                        ></asp:RequiredFieldValidator>

                        <asp:CompareValidator 
                            ForeColor="Red"
                            ID="CompareValidator1"
                            ControlToCompare="password"
                            ControlToValidate="cpassword"
                            runat="server" 
                            Display="None"
                            ErrorMessage="Лозинките не се совпаѓаат!"
                        ></asp:CompareValidator>
                    </div>

                    <div class="col-md-3">
                        <asp:Button ID="btnNext" runat="server" Text="&gt;&gt;" OnClick="btnNext_Click"/>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"/>
                    </div>
                </div>
            </asp:View>

            <asp:View ID="View2" runat="server">
                <div class="row" style="margin-top: 10px;">
                    <div class="col-md-3">
                        Адреса: <br /><asp:TextBox ID="address" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            ForeColor="Red"
                            ID="RequiredFieldValidator6"
                            runat="server"
                            ControlToValidate="address"
                            ErrorMessage="Внесете адреса!"
                        ></asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-3">
                        Телефон: <br /><asp:TextBox ID="phone" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            ForeColor="Red"
                            ID="RequiredFieldValidator7"
                            runat="server"
                            ControlToValidate="phone"
                            ErrorMessage="Внесете телефон!"
                        ></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator 
                            ID="RegularExpressionValidator2" 
                            runat="server" 
                            ControlToValidate="phone"
                            ValidationExpression="\+389 \d{2} \d{3} \d{3}"
                            ErrorMessage="RegularExpressionValidator"
                        ></asp:RegularExpressionValidator>
                    </div>



                    <div class="col-md-3">
                        Пол: <br /><asp:RadioButtonList ID="rblGender" runat="server">
                                        <asp:ListItem>M</asp:ListItem>
                                        <asp:ListItem>Ж</asp:ListItem>
                                   </asp:RadioButtonList>
                        <asp:RequiredFieldValidator 
                            ForeColor="Red"
                            ID="RequiredFieldValidator8" 
                            runat="server" 
                            ControlToValidate="rblGender"
                            ErrorMessage="Изберете пол!"
                        ></asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-3">
                        Датум на раѓање:<br />
                        <asp:Calendar ID="calendar" runat="server" Font-Underline="False" VisibleDate="1990-01-01">
                                <DayStyle Font-Underline="True" />
                                <NextPrevStyle Font-Underline="True" />
                                <OtherMonthDayStyle Font-Underline="True" />
                                <SelectedDayStyle Font-Underline="False" />
                                <TitleStyle Font-Bold="False" Font-Underline="False" />
                                <TodayDayStyle Font-Underline="False" />
                            </asp:Calendar>
                    </div>

                    <div class="col-md-3">
                        <asp:Button ID="btnPrev" runat="server" Text="&lt;&lt;" OnClick="btnPrev_Click"  />
                        <asp:Button ID="btnNext1" runat="server" OnClick="btnNext_Click" Text="&gt;&gt;"/>
                    </div>
                </div>
            </asp:View>

            <asp:View ID="View3" runat="server">
                <div class="row" style="margin-top: 10px;">
                    <div class="col-md-3">
                        Занимање: <br />
                        <asp:DropDownList ID="profession" runat="server">
                            <asp:ListItem>Програмер</asp:ListItem>
                            <asp:ListItem>Економист</asp:ListItem>
                            <asp:ListItem>Архитект</asp:ListItem>
                            <asp:ListItem>Психолог</asp:ListItem>
                            <asp:ListItem>Доктор</asp:ListItem>
                        </asp:DropDownList>

                        <asp:RequiredFieldValidator 
                            ForeColor="Red"
                            FontBold="False"
                            ID="RequiredFieldValidator9" 
                            runat="server" 
                            ControlToValidate="profession"
                            InitialValue="-занимање-"
                            ErrorMessage="Изберете занимање!"
                        ></asp:RequiredFieldValidator>
                    </div>

                    <div class="col-md-3">
                        Години на вршење на избраната дејност:<br />
                        <asp:TextBox ID="years" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ForeColor="Red"
                            ID="RequiredFieldValidator10" 
                            runat="server" 
                            ControlToValidate="years"
                            ErrorMessage="Внесете години!"
                        ></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator 
                            ForeColor="Red"
                            ID="RegularExpressionValidator3" 
                            ControlToValidate="years"
                            ValidationExpression="\d+"
                            runat="server" 
                            ErrorMessage="Недозволена вредност!"
                        ></asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="row" style="margin-top: 10px;">
                    <div class="col-md-3">
                        <asp:Button ID="btnPrev1" runat="server" Text="&lt;&lt;" OnClick="btnPrev_Click"/>
                        <asp:Button ID="Submit" runat="server" Text="Поднеси" OnClick="Submit_Click" />
                    </div>
                </div>
            </asp:View>

            <asp:View ID="View4" runat="server">
                <div class="row" style="margin-top: 10px">
                    <div class="col-md-3">
                <asp:Label ID="successRegistration" runat="server">Креиран е корисникот </asp:Label>
                <asp:Label ID="user" runat="server"></asp:Label>
                <asp:Label ID="userMail" runat="server" ForeColor="Gray"></asp:Label>
                <br />
                <asp:Label ID="error" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <asp:Button ID="btnStart" runat="server" CausesValidation="False" OnClick="btnStart_Click" Text="Врати се на почеток" Width="306px" />
                    </div>
                </div>
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
