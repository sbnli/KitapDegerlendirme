<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="YazarDetay.aspx.cs" Inherits="KutuphaneOtomasyonu.YazarDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 109px;
        }

        .auto-style3 {
            width: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Ad:</td>
            <td class="auto-style3">:</td>
            <td>
                <asp:label id="lblad" runat="server" text="Label"></asp:label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Doğum Tarihi</td>
            <td class="auto-style3">:</td>
            <td>
                <asp:label id="lblDogumtarihi" runat="server" text="Label"></asp:label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Doğum Yeri</td>
            <td class="auto-style3">:</td>
            <td>
                <asp:label id="lblDogumYeri" runat="server" text="Label"></asp:label>
            </td>
        </tr>
                
    </table>
    
    <h2>Kitapları</h2>
   
   <ul>
        <asp:Repeater ID="rpkitapalar" runat="server">
            <ItemTemplate>
                <li>
                    <img src="<%#Eval("Resim")%>" style="height:100px" />
                    <a href="KitapDetay.aspx?ID=<%#Eval("ID")%>"><%#Eval("Ad")%></a>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
   
</asp:Content>
