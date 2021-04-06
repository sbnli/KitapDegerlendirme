using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneOtomasyonu
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null)
            {
                Response.Redirect("Giris.aspx");
            }

            if (Session["IsAdmin"] == null)
            {
                PnlAdminMenu.Visible = false;
            }

            try
            {
                var kullanici = Session["kullanici"] as DataRow;
                if (Session["IsAdmin"]==null)
                {
                    //Normal Kullancı
                    lblKullaniciAdi.Text = kullanici["Ad"].ToString() + " " + kullanici["soyad"].ToString();
                }
                else
                {
                    //Admin
                    lblKullaniciAdi.Text = kullanici["AdSoyad"].ToString();

                }
            }
            catch (Exception)
            {

            }
        }
    }
}