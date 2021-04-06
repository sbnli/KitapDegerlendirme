<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PopulerKitaplar.aspx.cs" Inherits="KutuphaneOtomasyonu.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h2>Populer Kitaplar</h2>
    <ul>
        <asp:Repeater ID="rpPopuler" runat="server">
            <ItemTemplate>
                <li>
                    <a href="KitapDetay.aspx?ID=<%#Eval("ID")%>"><%#Eval("Ad")%> - (<%#Eval("OkunmaSayisi")%>) </a>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>

   
</asp:Content>
