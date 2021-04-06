using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneOtomasyonu
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var user = Session["Kullanici"] as DataRow;
            var userid = user["ID"].ToString();

            //populer kitaplar
            var q = @"select top 10 k.ID,k.Ad,COUNT(*)as OkunmaSayisi from KitapOkuma ko
inner join kitap k
on k.ID=ko.KitapID
group by k.ID,k.Ad
order by 3 desc";
            rpPopuler.DataSource = Bag.SelectSogusuCalistir(q).Tables[0];
            rpPopuler.DataBind();



        }
    }
}