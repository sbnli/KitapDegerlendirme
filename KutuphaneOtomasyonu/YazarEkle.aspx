<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="YazarEkle.aspx.cs" Inherits="KutuphaneOtomasyonu.YazarEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 82px;
    }
    .auto-style3 {
        width: 6px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2">Ad Soyad</td>
        <td class="auto-style3">:</td>
        <td>
            <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Doğum Tarihi</td>
        <td class="auto-style3">:</td>
        <td>
            <asp:TextBox ID="txtDogumtarihi" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Ölüm Tarihi</td>
        <td class="auto-style3">:</td>
        <td>
            <asp:TextBox ID="txtOlumTarihi" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Doğum Yeri</td>
        <td class="auto-style3">:</td>
        <td>
            <asp:TextBox ID="txtDogumYeri" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Button ID="btnKaydet" runat="server" OnClick="btnKaydet_Click" Text="Kaydet" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Label ID="lblErr" runat="server" ForeColor="Red" Visible="False"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
