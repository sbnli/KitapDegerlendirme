using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneOtomasyonu
{
    public partial class KitapPuanla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPuan_Click(object sender, EventArgs e)
        {
            var user = Session["kullanici"] as DataRow;
            var userid = user["ID"];
            var kitapID = Request.QueryString["ID"];

            var q = @"INSERT INTO [dbo].[KitapPuan]
           ([KullaniciID]
           ,[KitapID]
           ,[Puan])
     VALUES (" + userid + "," + kitapID + "," + DropDownList1.SelectedValue + ")";
            Bag.kaydet(q);
            lblPuanErr.Visible = true;
            lblPuanErr.Text = "Puanınız Kaydedildi";
        }

        protected void BtnAlintiKaydet_Click(object sender, EventArgs e)
        {
            var user = Session["Kullanici"] as DataRow;
            var userid = user["ID"];
            var kitapID = Request.QueryString["ID"];

            var sorgu = @"INSERT INTO [dbo].[KitapAlinti]
           ([KitapID],
            [KullaniciID],
            [Sayfa]
           ,[Cumle])
     VALUES (" + kitapID + "," + userid + "," + txtSayfa.Text + ",'" + txtCumle.Text + "')";
            Bag.kaydet(sorgu);
            lblAlintiErr.Visible = true;
            lblAlintiErr.Text = "Alinti Kaydedildi";
        }
    }
}