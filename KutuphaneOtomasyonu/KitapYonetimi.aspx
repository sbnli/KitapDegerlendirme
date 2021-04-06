<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="KitapYonetimi.aspx.cs" Inherits="KutuphaneOtomasyonu.KitapYonetimi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" border="1">
        <tr>
                    <td>No</td>
                    <td>Ad</td>
                    <td>Yazar</td>
                    <td>Yayın Evis</td>
                    <td>Resim</td>
                    <td>Düzenle</td>
                    <td>Sil</td>
                </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ID") %></td>
                    <td><%#Eval("Ad") %></td>
                    <td><%#Eval("YazarAdi") %></td>
                    <td><%#Eval("Yayinevi") %></td>
                    <td><img style="width:100px;" src="<%#Eval("Resim") %>" /></td>
                    <td>Düzenle</td>
                    <td>Sil</td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
</asp:Content>
