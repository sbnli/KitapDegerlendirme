<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="YuksekPuanliKitaplar.aspx.cs" Inherits="KutuphaneOtomasyonu.YuksekPuanlıKitaplar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Yüksek Puanlı Kitaplar</h2>
    <ul>
        <asp:Repeater ID="rpYuksekPuanli" runat="server" >
            <ItemTemplate>
                <li>
                    <a href="KitapDetay.aspx?ID=<%#Eval("ID")%>"><%#Eval("Ad")%> - (<%#Eval("Puan")%>)</a>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>

</asp:Content>
