using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneOtomasyonu
{
    public partial class YazarDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var q = "select * from yazar where ID=" + Request.QueryString["ID"];
            var data = Bag.SelectSogusuCalistir(q).Tables[0].Rows[0];

            lblad.Text = data["AdSoyad"].ToString();
            lblDogumtarihi.Text = data["DogumTarihi"].ToString();
            lblDogumYeri.Text = data["DogumYeri"].ToString();


            q = @"select * from kitap where yazarID=" + data["ID"];
            rpkitapalar.DataSource = Bag.SelectSogusuCalistir(q).Tables[0];
            rpkitapalar.DataBind();
        }
    }
}