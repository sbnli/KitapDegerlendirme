<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Profilim.aspx.cs" Inherits="KutuphaneOtomasyonu.Profilim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="3">
                <asp:Image ID="Image1" runat="server" Width="100px" />
            </td>
        </tr>
        <tr>
            <td>Ad</td>
            <td>:</td>
            <td>
                <asp:Label ID="lblAd" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Soyad</td>
            <td>:</td>
            <td>
                <asp:Label ID="lblSoyad" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>KullaniciAdi</td>
            <td>:</td>
            <td>
                <asp:Label ID="lblKullanici" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>DogumTarihi</td>
            <td>:</td>
            <td>
                <asp:Label ID="lblDogum" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Alıntılarım</td>
            <td>:</td>
            <td>
                <ul>
                    <asp:Repeater ID="rpalinti" runat="server">
                        <ItemTemplate>
                            <li><%#Eval("KitapAdi") %> - <%#Eval("Sayfa") %> - <%#Eval("Cumle") %></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </td>
        </tr>
        <tr>
            <td>Puanlarım</td>
            <td>:</td>
            <td>
                <ul>
                    <asp:Repeater ID="RpPuan" runat="server">
                        <ItemTemplate>
                            <li><%#Eval("Ad") %> - <%#Eval("Puan") %></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </td>
        </tr>
        <tr>
            <td>Okuduğum Kitapar</td>
            <td>:</td>
            <td>
                <ul>
                    <asp:Repeater ID="rpOkuduklarim" runat="server">
                        <ItemTemplate>
                            <li><%#Eval("Ad") %></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </td>
        </tr>
        <tr>
            <td>İncelemelerim</td>
            <td>:</td>
            <td>:</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
