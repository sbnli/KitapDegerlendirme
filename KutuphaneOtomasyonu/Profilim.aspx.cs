using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneOtomasyonu
{
    public partial class Profilim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = Session["Kullanici"] as DataRow;
            var userid = user["ID"].ToString();

            lblAd.Text = user["Ad"].ToString();
            lblSoyad.Text = user["Soyad"].ToString();
            //lblCinsiyet.Text = user["Cinsiyet"].ToString() == "true" ? "Bayan" : "Bay";
            lblDogum.Text =DateTime.Parse( user["DogumTarihi"].ToString()).ToShortDateString();
            lblKullanici.Text = user["KullaniciAdi"].ToString();
            Image1.ImageUrl = user["Resim"].ToString();

            #region Alintilar
            var q = @"select ka.*,k.Ad as KitapAdi from KitapAlinti ka
inner join Kitap as k 
on k.ID=ka.ID
 where ka.ID =" + userid;
            rpalinti.DataSource = Bag.SelectSogusuCalistir(q);
            rpalinti.DataBind();
            #endregion

            #region Puan
             q = @"select * from KitapPuan kp
inner join  Kitap as k
on k.ID =kp.KitapID
where kp.KullaniciID=" + userid;
            RpPuan.DataSource = Bag.SelectSogusuCalistir(q);
            RpPuan.DataBind();
            #endregion

            #region Okuduklarim
            q = @"select * from KitapOkuma ko
inner join  Kitap as k
on k.ID =ko.KitapID
where ko.KullaniciID=" + userid;
            rpOkuduklarim.DataSource = Bag.SelectSogusuCalistir(q);
            rpOkuduklarim.DataBind();
            #endregion
        }
    }
}