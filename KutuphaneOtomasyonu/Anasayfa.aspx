<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="KutuphaneOtomasyonu.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a href="PopulerKitaplar.aspx">Popüler Kitaplar</a>
                    <br />
                    <a href="PopulerYazarlar.aspx">Popüler Yazarlar</a>
                    <br />
                    <a href="YuksekPuanliKitaplar.aspx">Yüksek Puanlı Kitaplar</a>
    

    <h2>Kitap Ortaklığı</h2>
    <ul>
        <asp:Repeater ID="rpKitapTavsiye" runat="server">
            <ItemTemplate>
                <li>
                    <a href="KitapDetay.aspx?ID=<%#Eval("KitapID")%>"><%#Eval("Ad")%> <%#Eval("Soyad")%>  - (<%#Eval("Sayi")%>)</a>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>

    <h2>Puan Ortaklığı</h2>
    <ul>
        <asp:Repeater ID="rpPuanKardesligi" runat="server">
            <ItemTemplate>
                <li>
                    <a href="KitapDetay.aspx?ID=<%#Eval("KitapID")%>"><%#Eval("Adi")%> - (<%#Eval("Puan")%>)</a> 
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
</asp:Content>
