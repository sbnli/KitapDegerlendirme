using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KutuphaneOtomasyonu
{
    public class YazarIslemleri
    {
        public static void Ekle(string ad, string dogum, string olum, string yer)
        {
            string sorgu = @"INSERT INTO [dbo].[Yazar]
           ([AdSoyad]
           ,[DogumTarihi]
           ,[OlumTarihi]
           ,[DogumYeri])
     VALUES ('" + ad + "','" + dogum + "','" + olum + "','" + yer + "')";
            Bag.kaydet(sorgu);
        }
        public static DataSet TumYazarlar()
        {
            return Bag.SelectSogusuCalistir("select * from yazar");
        }
    }
}