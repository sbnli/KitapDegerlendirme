using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KutuphaneOtomasyonu
{
    public class KullaniciIslemleri
    {
        public static DataRow YoneticiGiris(string KullaniciAdi, string Sifre)
        {
            var sorgu = "select * from Yonetici where aktif=1 and KullaniciAdi='" + KullaniciAdi + "' and Sifre='" + Sifre + "'";
            var KullaniciData = Bag.SelectSogusuCalistir(sorgu);
            if (KullaniciData.Tables[0].Rows.Count == 1)
            {
                return KullaniciData.Tables[0].Rows[0];
            }
            else
            {
                return null;
            }
        }

        public static DataRow KullaniciGiris(string KullaniciAdi, string Sifre)
        {
            var sorgu = "select * from Kullanici where KullaniciAdi='" + KullaniciAdi + "' and Sifre='" + Sifre + "'";
            var KullaniciData = Bag.SelectSogusuCalistir(sorgu);
            if (KullaniciData.Tables[0].Rows.Count == 1)
            {
                return KullaniciData.Tables[0].Rows[0];
            }
            else
            {
                return null;
            }
        }
        public static void kayit(string k_ad, string sifre, string ad, string soyad, string dogumtarih, int cinsiyet, string resim)
        {
            var q = @"INSERT INTO [dbo].[Kullanici]
           ([KullaniciAdi]
           ,[Sifre]
           ,[Ad]
           ,[Soyad]
           ,[Cinsiyet]
           ,[DogumTarihi]
           ,[Resim])
     VALUES ('" + k_ad + "','" + sifre + "','" + ad + "','" + soyad + "'," + cinsiyet + ",'" + dogumtarih + "','" + resim + "')";
            Bag.kaydet(q);
        }
    }
}