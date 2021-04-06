<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MesajKutusu.aspx.cs" Inherits="KutuphaneOtomasyonu.MesajKutusu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 73px;
        }
        .auto-style3 {
            width: 14px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 73px;
            height: 30px;
        }
        .auto-style6 {
            width: 14px;
            height: 30px;
        }
        .auto-style7 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h2>Gelen Kutusu</h2>
    <table>
        <tr>
            <td class="auto-style4">Tarih</td>
            <td class="auto-style4">Kimden</td>
            <td class="auto-style4">Başlık</td>
            <td class="auto-style4">İçerik</td>
        </tr>
        <asp:Repeater ID="rpMesajlar" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("tarih") %></td>
                    <td><%#Eval("Gonderen") %></td>
                    <td><%#Eval("Baslik") %></td>
                    <td><%#Eval("Mesaj") %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <h2>
        Yeni Mesaj yaz Bakalım
    </h2>
    
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Kullanıcı</td>
            <td class="auto-style3">:</td>
            <td>
                <asp:DropDownList ID="ddlKullnici" runat="server" Height="17px" Width="234px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Başlık</td>
            <td class="auto-style3">:</td>
            <td>
                <asp:TextBox ID="txtBaskik" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">İçerik</td>
            <td class="auto-style3">:</td>
            <td>
                <asp:TextBox ID="txticerik" runat="server" Height="118px" TextMode="MultiLine" Width="327px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
            <td class="auto-style7">
                <asp:Button ID="btnGonder" runat="server" Text="Gönder" OnClick="btnGonder_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Label ID="lblErr" runat="server" ForeColor="Lime" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    
</asp:Content>
