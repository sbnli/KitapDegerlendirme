using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KutuphaneOtomasyonu
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try {

                var user = Session["Kullanici"] as DataRow;
                var userid = user["ID"].ToString();



                if (Session["IsAdmin"] == null)
                {
                    // Kitap Tavsiye
                    var q = @"select k.ID,k.Ad,k.Soyad, KitapID,COUNT(*) as sayi from KitapOkuma
inner join Kullanici as k 
on k.ID=KitapOkuma.KullaniciID
where KitapID in(select KitapID from KitapOkuma 
where KullaniciID=" + userid + @") and KullaniciID!=" + userid + @"
group by k.ID,k.Ad,k.Soyad,KitapID";

                    rpKitapTavsiye.DataSource = Bag.SelectSogusuCalistir(q).Tables[0];
                    rpKitapTavsiye.DataBind();



                    //Puan Ortak
                    var pkData = Bag.SelectSogusuCalistir(@"select KitapID,Puan,KullaniciID from KitapPuan 
where KullaniciID=3
group by KitapID,Puan,KullaniciID").Tables[0].Rows;
                    var lst = new List<PuanKardesligi>();
                    foreach (DataRow item in pkData)
                    {
                        var KitapID = item["KitapID"].ToString();
                        var Puan = item["Puan"].ToString();

                        var subdata = Bag.SelectSogusuCalistir(@"select * from kitapPuan kp
inner join Kullanici k
on k.ID=kp.KitapID 
inner join Kitap kk
on kk.ID=kp.KitapID
where KitapID=" + KitapID + " and puan=" + Puan).Tables[0];

                        if (subdata.Rows.Count > 0)
                        {
                            foreach (DataRow r in subdata.Rows)
                            {
                                lst.Add(new PuanKardesligi
                                {
                                    KitapID = int.Parse(r["KitapID"].ToString()),
                                    KullaniciID = int.Parse(r["ID1"].ToString()),
                                    Puan = int.Parse(r["puan"].ToString()),
                                    Adi = r["Ad"] + " " + r["Soyad"],
                                    KitapAdi = r["Ad1"].ToString(),
                                });
                                
                            }
                        }
                        rpPuanKardesligi.DataSource = lst;
                        rpPuanKardesligi.DataBind();

                    }

                   

                    


                }
            }

            catch
            {

            }


        }

        public class PuanKardesligi
        {
            public string Adi { get; set; }
            public string KitapAdi { get; set; }
            public int KitapID { get; set; }
            public int KullaniciID { get; set; }
            public int Puan { get; set; }
        }
    }
}
