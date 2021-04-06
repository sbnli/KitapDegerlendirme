using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneOtomasyonu
{
    public partial class KitapAra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAra_Click(object sender, EventArgs e)
        {
            var data = KitapIslemleri.KitapAra(txtKey.Text, txtKey.Text);
            Repeater1.DataSource = data;
            Repeater1.DataBind();
        }
    }
}