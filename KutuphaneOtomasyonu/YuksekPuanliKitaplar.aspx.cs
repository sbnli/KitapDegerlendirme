using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneOtomasyonu
{
    public partial class YuksekPuanlıKitaplar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var q = @"select top 10 k.ID,k.Ad,AVG(kp.Puan) as puan from KitapPuan  kp
inner join Kitap k
on k.ID=kp.KitapID
group by k.ID,k.Ad order by 3 desc";
            rpYuksekPuanli.DataSource = Bag.SelectSogusuCalistir(q).Tables[0];
            rpYuksekPuanli.DataBind();

        }

        
    }
}