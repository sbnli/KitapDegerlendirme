using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneOtomasyonu
{
    public partial class MesajKutusu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var user = Session["Kullanici"] as DataRow;
                var userid = user["ID"].ToString();

                var data = Bag.SelectSogusuCalistir("select ID,(Ad+' '+Soyad)as Ad from Kullanici where ID != " + userid).Tables[0];
                ddlKullnici.DataValueField = "ID";
                ddlKullnici.DataTextField = "Ad";
                ddlKullnici.DataSource = data;
                ddlKullnici.DataBind();


                var q = @"select m.*, gon.Ad +' '+gon.Soyad as Gonderen
, Giden.Ad +' '+Giden.Soyad as Giden
 from Mesaj m
inner join Kullanici as gon
on gon.ID=m.GonderenKullaniciID
inner join Kullanici as Giden 
on Giden.ID=m.GidenKullaniciID
where m.GidenKullaniciID="+userid;
                var Mesajlar = Bag.SelectSogusuCalistir(q).Tables[0];
                rpMesajlar.DataSource = Mesajlar;
                rpMesajlar.DataBind();
            }
        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            var user = Session["Kullanici"] as DataRow;
            var userid = user["ID"].ToString();

            var q = @"INSERT INTO [dbo].[Mesaj]
           ([GonderenKullaniciID]
           ,[GidenKullaniciID]
           ,[Baslik]
           ,[Mesaj]
           ,[Tarih])
     VALUES (" + userid + "," + ddlKullnici.SelectedValue + ",'" + txtBaskik.Text + "','" + txticerik.Text + "',CAST('" + DateTime.Now.ToString("yyyy-MM-dd") + "' as datetime))";

            Bag.kaydet(q);
            lblErr.Visible = true;
            lblErr.Text = "Mesaj Gönderildi";
        }
    }
}