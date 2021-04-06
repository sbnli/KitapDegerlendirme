<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="KitapDetay.aspx.cs" Inherits="KutuphaneOtomasyonu.KitapDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 101px;
        }

        .auto-style3 {
            width: 237px;
        }

        .auto-style4 {
            width: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1">
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Image ID="img" runat="server" Height="50px" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Yayın evi</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="lblYayinevi" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Yazar</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="lblyazar" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Kitap Tanımı</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="lblTanitim" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Ortalama Puan</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="lblOrtalamaPuan" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Okunma Sayısı</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="lblOkunmaSayisi" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Alıntılar</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <table border="1">
                    <tr>
                        <td>Sayfa</td>
                        <td>Cümle</td>
                    </tr>
                    <asp:Repeater ID="rpAlinti" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("Sayfa") %></td>
                                <td><%#Eval("Cumle") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>

            </td>
        </tr>
        <tr>
            <td class="auto-style2">İncelemeler</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="btnOkudum" runat="server" OnClick="btnOkudum_Click" Text="Okudum" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>

</asp:Content>
