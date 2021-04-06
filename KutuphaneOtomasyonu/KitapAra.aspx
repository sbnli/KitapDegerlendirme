<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="KitapAra.aspx.cs" Inherits="KutuphaneOtomasyonu.KitapAra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="txtKey" runat="server"></asp:TextBox>
    <asp:Button ID="btnAra" runat="server" OnClick="btnAra_Click" Text="Ara" />
    <table border="1" class="auto-style1">
        <tr>
            <td>No</td>
            <td>Ad</td>
            <td>Yazar</td>
            <td>Yayın Evis</td>
            <td>Resim</td>
            <td></td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ID") %></td>
                    <td><%#Eval("Ad") %></td>
                    <td><%#Eval("YazarAdi") %></td>
                    <td><%#Eval("Yayinevi") %></td>
                    <td>
                        <img style="width: 100px;" src="<%#Eval("Resim") %>" />
                    </td>
                    <td><a href="KitapDetay.aspx?ID=<%#Eval("ID") %>">detay</a></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>