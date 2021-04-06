using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneOtomasyonu
{
    public partial class PopülerYazarlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = Session["Kullanici"] as DataRow;
            var userid = user["ID"].ToString();

            var q = @"select top 10 y.ID,y.AdSoyad,COUNT(*)as OkunmaSayisi from KitapOkuma ko
inner join kitap k
on k.ID=ko.KitapID
inner join Yazar y 
on y.ID=k.YazarID
group by y.ID,y.AdSoyad
order by 3 desc";
            rpYazar.DataSource = Bag.SelectSogusuCalistir(q).Tables[0];
            rpYazar.DataBind();
        }

        
    }
}