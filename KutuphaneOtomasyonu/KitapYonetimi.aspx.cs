using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneOtomasyonu
{
    public partial class KitapYonetimi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = Bag.SelectSogusuCalistir("select k.*,y.AdSoyad as yazarAdi from Kitap as k inner join Yazar y on y.ID = k.YazarID");
            Repeater1.DataBind();
        }
    }
}