using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KutuphaneOtomasyonu
{
    public class KitapIslemleri
    {
        public static void Kaydet(string Ad, string Yayinevi, int YazarID, string TanitimYazisi, string Resim)
        {
            var sorgu = @"INSERT INTO [dbo].[Kitap]
           ([Ad]
           ,[Yayinevi]
           ,[YazarID]
           ,[TanitimYazisi]
           ,[Resim])
     VALUES ('" + Ad + "','" + Yayinevi + "'," + YazarID + ",'" + TanitimYazisi + "','" + Resim + "')";
            Bag.kaydet(sorgu);
        }

        public static DataSet KitapAra(string KitapAdi = "", string YazarAdi = "")
        {
            var sorgu = @"select k.*,y.AdSoyad as yazarAdi from Kitap as k
inner join Yazar y
on y.ID = k.YazarID
where k.Ad like '%" + KitapAdi + "%' or y.AdSoyad like'%" + YazarAdi + "%'";
            return Bag.SelectSogusuCalistir(sorgu);
        }
    }
}