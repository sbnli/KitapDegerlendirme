<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="KitapEkle.aspx.cs" Inherits="KutuphaneOtomasyonu.KitapEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 5px;
    }
    .auto-style3 {
        width: 88px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3">Kitap Adı</td>
        <td class="auto-style2">:</td>
        <td>
            <asp:TextBox ID="txtAd" runat="server" Width="208px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Yayınevi</td>
        <td class="auto-style2">:</td>
        <td>
            <asp:TextBox ID="txtYayinevi" runat="server" Width="207px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Yazar</td>
        <td class="auto-style2">:</td>
        <td>
            <asp:DropDownList ID="ddlYazar" runat="server" Height="24px" Width="214px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Resim</td>
        <td class="auto-style2">:</td>
        <td>
            <asp:FileUpload ID="fuResim" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Tanıtım Yazısı</td>
        <td class="auto-style2">:</td>
        <td>
            <asp:TextBox ID="txtTanitim" runat="server" Height="132px" TextMode="MultiLine" Width="227px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Label ID="lblErr" runat="server" ForeColor="Red" Visible="False"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
