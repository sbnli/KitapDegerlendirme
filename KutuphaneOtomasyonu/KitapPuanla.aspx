<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="KitapPuanla.aspx.cs" Inherits="KutuphaneOtomasyonu.KitapPuanla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="167px">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="btnPuan" runat="server" OnClick="btnPuan_Click" Text="Puan Ver" />
    <br />
    <asp:Label ID="lblPuanErr" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
    <br />
    <br />
    Alıntı Gir <br />
    Sayfa
    <asp:TextBox ID="txtSayfa" runat="server"></asp:TextBox><br />
    Cümle
    <asp:TextBox ID="txtCumle" runat="server"></asp:TextBox>
   <br />
    <asp:Button ID="BtnAlintiKaydet" runat="server" Text="Alıntı Kaydet" OnClick="BtnAlintiKaydet_Click" />
    <br />
    <asp:Label ID="lblAlintiErr" runat="server" Text="Label" Visible="False"></asp:Label>
    </asp:Content>
