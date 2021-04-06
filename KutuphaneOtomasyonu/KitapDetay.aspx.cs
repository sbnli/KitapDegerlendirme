using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneOtomasyonu
{
    public partial class KitapDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["ID"];
            var data = Bag.SelectSogusuCalistir(@"select k.*,y.AdSoyad as yazarAdi from Kitap as k
inner join Yazar y
on y.ID =k.YazarID
where k.ID=" + id);
            var puandata = Bag.SelectSogusuCalistir("select AVG(Puan) from KitapPuan where KitapID=" + id).Tables[0].Rows[0][0].ToString();
            var okudumdata = Bag.SelectSogusuCalistir("select count(*) from KitapOkuma where KitapID=" + id).Tables[0].Rows[0][0].ToString();

            lblName.Text = data.Tables[0].Rows[0]["Ad"].ToString();
            img.ImageUrl = data.Tables[0].Rows[0]["Resim"].ToString();
            lblyazar.Text = data.Tables[0].Rows[0]["YazarAdi"].ToString();
            lblYayinevi.Text = data.Tables[0].Rows[0]["Yayinevi"].ToString();
            lblTanitim.Text = data.Tables[0].Rows[0]["TanitimYazisi"].ToString();
            lblOrtalamaPuan.Text = puandata;
            lblOkunmaSayisi.Text = okudumdata;

            rpAlinti.DataSource = Bag.SelectSogusuCalistir("select * from kitapalinti where kitapID=" + id).Tables[0];
            rpAlinti.DataBind();
        }

        protected void btnOkudum_Click(object sender, EventArgs e)
        {
            var user = Session["kullanici"] as DataRow;
            var userid = user["ID"];
            var kitapID = Request.QueryString["ID"];
            var q = @"INSERT INTO [dbo].[KitapOkuma]
           ([KullaniciID]
           ,[KitapID])
     VALUES (" + userid + "," + kitapID + ")";
            Bag.kaydet(q);
            Response.Redirect("KitapPuanla.aspx?ID="+kitapID);
        }
    }
}