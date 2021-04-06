<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PopulerYazarlar.aspx.cs" Inherits="KutuphaneOtomasyonu.PopülerYazarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>Populer Yazarlar</h2>
    <ul>
        <asp:Repeater ID="rpYazar" runat="server" >
            <ItemTemplate>
                <li>
                    <a href="YazarDetay.aspx?ID=<%#Eval("ID")%>"><%#Eval("AdSoyad")%> - (<%#Eval("OkunmaSayisi")%>)</a>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
</asp:Content>
