<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UyeOl.aspx.cs" Inherits="KutuphaneOtomasyonu.UyeOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 121px;
        }
        .auto-style3 {
            width: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
        <table class="auto-style1" style="background-image: url('Resimler/libraries.jpg'); color: #FFFFCC">
            <tr>
                <td class="auto-style2">Kullanıcı Adınız</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="txtkullaniciadi" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Şifreniz</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="txtsifre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Ad</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="txtad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Soyad</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="txtsoyad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Doğum Tarihi</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="txtdogumtarih" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Cinsiyet</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">Bayan</asp:ListItem>
                        <asp:ListItem Value="0">Bay</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Resim</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:FileUpload ID="furesim" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="btkaydet" runat="server" OnClick="btkaydet_Click" Text="Kaydet" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Label ID="lblerr" runat="server" ForeColor="#FFFFCC" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
       
    </form>
</body>
</html>
