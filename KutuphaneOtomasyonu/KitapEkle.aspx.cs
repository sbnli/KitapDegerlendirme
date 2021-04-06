using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneOtomasyonu
{
    public partial class KitapEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlYazar.DataTextField = "AdSoyad";
                ddlYazar.DataValueField = "ID";
                ddlYazar.DataSource = YazarIslemleri.TumYazarlar();
                ddlYazar.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (fuResim.HasFile)
            {
                var path = Server.MapPath("/Resimler/Kitaplar/") + fuResim.FileName;
                fuResim.SaveAs(path);
                var resimyolu = "/Resimler/Kitaplar/" + fuResim.FileName;
                var yid = int.Parse(ddlYazar.SelectedValue.ToString());
                KitapIslemleri.Kaydet(txtAd.Text, txtYayinevi.Text, yid, txtTanitim.Text, resimyolu);
                lblErr.Visible = true;
                lblErr.Text = "Kitap Kaydı Yapıldı!";
            }
            else
            {
                lblErr.Visible = true;
                lblErr.Text = "Lütfen Resim Seçiniz!";
            }

        }
    }
}