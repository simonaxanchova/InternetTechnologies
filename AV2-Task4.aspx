<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Task4.aspx.cs" Inherits="IT_AV2.Task4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-5">
                <div class="m-4">
                    Изберете боја на позадина:
                <br />
                    <asp:DropDownList ID="boja" runat="server"></asp:DropDownList>
                </div>

                <div class="m-4">
                    Изберете фонт:
                <br />
                    <asp:DropDownList ID="Font" runat="server"></asp:DropDownList>
                </div>

                <div class="m-4">
                    Изберете боја на фонт:
                <br />
                    <asp:DropDownList ID="fontColor" runat="server"></asp:DropDownList>
                </div>

                <div class="m-4">
                    Големина на фонт:
                <br />
                    <asp:TextBox ID="fontSize" runat="server"></asp:TextBox>
                </div>

                <div class="m-4">
                    Тип на рамка:
                <asp:RadioButtonList ID="borderType" runat="server"></asp:RadioButtonList>
                </div>

                <div class="m-4">
                    Додади слика:
                <asp:CheckBox ID="showImg" runat="server" />
                </div>

                <div class="m-4">
                    Внесете ја содржината на честитката:
                <br />
                    <asp:TextBox ID="ShortText" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>

                <div class="m-4">
                    <asp:Button ID="Button" runat="server" Text="Креирај" OnClick="Button_Click" />
                </div>
            </div>

            <div class="col-5">
                <asp:Panel ID="Cestitka" runat="server">
                    <asp:Label ID="Poraka" runat="server" Text="Label"></asp:Label>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/sample.jpg" Visible="False" />
                </asp:Panel>
            </div>

        </div>
    </div>

</asp:Content>
