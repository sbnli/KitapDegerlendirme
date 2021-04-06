using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneOtomasyonu
{
    public partial class UyeOl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btkaydet_Click(object sender, EventArgs e)
        {
            if (furesim.HasFile)
            {
                var resimyolu = Server.MapPath("/Resimler/Kullanicilar/") + furesim.FileName;
                furesim.SaveAs(resimyolu);
                var cinsiyet =int.Parse( DropDownList1.SelectedValue);
                KullaniciIslemleri.kayit(txtkullaniciadi.Text, txtsifre.Text, txtad.Text, txtsoyad.Text, txtdogumtarih.Text, cinsiyet, "/Resimler/Kullanicilar/" + furesim.FileName);
                lblerr.Visible = true;
                lblerr.Text = "Kayıt Başarıyla yapıldı! <a href='Giris.aspx'>Giriş Yapmak İçin Tıklayınız</a>";
            }
            else
            {
                lblerr.Visible = true;
                lblerr.Text = "Hacı resim seç!";
            }
        }
    }
}