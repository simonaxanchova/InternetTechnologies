<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="zadacha1.aspx.cs" Inherits="Lab2.zadacha1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Internet Technologies</title>
        <style type="text/css">
         .auto-style1 {
             width: 56%;
            height: 578px;
        }
        .auto-style10 {
            width: 100px;
        }
        
         .strict-right {
             text-align: right !important;
         }
        .auto-style12 {
            height: 27px;
            width: 385px;
        }
        .auto-style13 {
            width: 385px;
        }
        .auto-style14 {
            height: 29px;
            width: 385px;
        }
        .auto-style15 {
            height: 26px;
            width: 385px;
        }
        .auto-style16 {
            height: 48px;
            width: 385px;
        }
        .auto-style17 {
            height: 32px;
            width: 100px;
        }
        .auto-style18 {
            width: 385px;
            height: 32px;
        }
        .auto-style19 {
            width: 1114px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10 strict-right">Име</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txbIme" runat="server" OnTextChanged="txbIme_TextChanged" ></asp:TextBox>
                    </td>

                    <td class="auto-style19" rowspan="10">
                        <asp:Panel ID="Panel1" runat="server">
                            Почитуван патнику<br />
                            <asp:Label ID="lblPatnik" runat="server" ForeColor="Red" Font-Bold="True" Font-Italic="False"></asp:Label>
                            <br />
                            Издадена ви е карта за:
                            <asp:Label ID="lblSredstvo" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Blue"></asp:Label>
                            <br />
                            со почетна дестинација:
                            <asp:Label ID="lblOd" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Blue"></asp:Label>
                            <br />
                            и крајна дестинација:
                            <asp:Label ID="lblDo" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Blue"></asp:Label>
                            <br />
                            Времето&nbsp; на поаѓање е:<br />
                            <asp:Label ID="lblVreme" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Blue"></asp:Label>
                            <br />
                            <br />
                            Вашето место за седење ќе биде во зоната<br /> за
                            <asp:Label ID="lblZona" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Blue"></asp:Label>
                            &nbsp;во
                            <asp:Label ID="lblKlasa" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#006699"></asp:Label>
                            &nbsp;класа и во текот на патувањето ќе бидете послужени со
                            <asp:Label ID="lblPosluga" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#006699"></asp:Label>
                            <br />
                            <asp:Image ID="imgSlika" runat="server" Height="300px" Width="300px" />
                            <br />
                            <br />
                            Ви благодариме на довербата и ви посакуваме среќен пат!
                        </asp:Panel>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style10 strict-right">Презиме</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txbPrezime" runat="server" OnTextChanged="txbPrezime_TextChanged"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style10 strict-right">Од</td>
                    <td class="auto-style14">
                        <asp:DropDownList ID="ddlOd" runat="server" OnSelectedIndexChanged="ddlOd_SelectedIndexChanged">
                            <asp:ListItem>Скопје</asp:ListItem>
                            <asp:ListItem>Барселона</asp:ListItem>
                            <asp:ListItem>Њујорк</asp:ListItem>
                            <asp:ListItem>Токио</asp:ListItem>
                            <asp:ListItem>Лондон</asp:ListItem>
                            <asp:ListItem>Рим</asp:ListItem>
                            <asp:ListItem>Париз</asp:ListItem>
                            <asp:ListItem>Мадрид</asp:ListItem>
                            <asp:ListItem>Амстердам</asp:ListItem>
                            <asp:ListItem>Мадрид</asp:ListItem>
                            <asp:ListItem>Лос Анџелес</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style10 strict-right">До</td>
                    <td class="auto-style14">
                        <asp:DropDownList ID="ddlDo" runat="server" OnSelectedIndexChanged="ddlDo_SelectedIndexChanged">
                            <asp:ListItem>Скопје</asp:ListItem>
                            <asp:ListItem>Барселона</asp:ListItem>
                            <asp:ListItem>Њујорк</asp:ListItem>
                            <asp:ListItem>Токио</asp:ListItem>
                            <asp:ListItem>Лондон</asp:ListItem>
                            <asp:ListItem>Рим</asp:ListItem>
                            <asp:ListItem>Париз</asp:ListItem>
                            <asp:ListItem>Мадрид</asp:ListItem>
                            <asp:ListItem>Амстердам</asp:ListItem>
                            <asp:ListItem>Мадрид</asp:ListItem>
                            <asp:ListItem>Лос Анџелес</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style10 strict-right">Датум на тргање</td>
                    <td class="auto-style13">
                        <asp:DropDownList ID="ddlDen" runat="server"></asp:DropDownList>
                        <asp:DropDownList ID="ddlMesec" runat="server"></asp:DropDownList>
                        <asp:DropDownList ID="ddlGodina" runat="server"></asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style10 strict-right">Време на тргање</td>
                    <td class="auto-style13">
                        <asp:DropDownList ID="ddlVreme" runat="server" OnSelectedIndexChanged="ddlVreme_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style10 strict-right">Превозно средство</td>
                    <td class="auto-style16">
                        <asp:ListBox ID="lstSredstvo" runat="server" OnSelectedIndexChanged="lstSredstvo_SelectedIndexChanged">
                            <asp:ListItem Value="http://simpleicon.com/wp-content/uploads/plane-256x256.png">Авион</asp:ListItem>
                            <asp:ListItem Value="https://cdn4.iconfinder.com/data/icons/dot/256/train_transportation.png">Воз</asp:ListItem>
                        </asp:ListBox>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style10 strict-right">Зона</td>
                    <td class="auto-style13">
                        <asp:RadioButtonList ID="rblZona" runat="server" OnSelectedIndexChanged="rblZona_SelectedIndexChanged">
                            <asp:ListItem>Пушачи</asp:ListItem>
                            <asp:ListItem>Непушачи</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style10 strict-right">Класа</td>
                    <td class="auto-style15">
                        <asp:RadioButtonList ID="rblKlasa" runat="server" OnSelectedIndexChanged="rblKlasa_SelectedIndexChanged">
                            <asp:ListItem>Економска</asp:ListItem>
                            <asp:ListItem>Бизнис</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style17 strict-right">Послуга</td>
                    <td class="auto-style18">
                        <asp:CheckBoxList ID="cblPosluga" runat="server" OnSelectedIndexChanged="cblPosluga_SelectedIndexChanged">
                            <asp:ListItem>Пијалок</asp:ListItem>
                            <asp:ListItem>Кафе</asp:ListItem>
                            <asp:ListItem>Оброк</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

