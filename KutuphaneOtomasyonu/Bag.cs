using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace KutuphaneOtomasyonu
{
    /// <summary>
    /// Veritabanı İşlemleri
    /// </summary>
    public class Bag
    {
        private static SqlConnection Baglanti()
        {
            return new SqlConnection(@"Data Source=;Initial Catalog=kUTUPHANEdb;Integrated Security=True");
        }
        /// <summary>
        /// Select Sorgularını Çalıştırır.
        /// </summary>
        /// <param name="cmd">SqlCommand Nesneniz</param>
        /// <returns>Sorgunuzdan Dönen DataSet</returns>
        public static DataSet SelectSogusuCalistir(SqlCommand cmd)
        {
            var ds = new DataSet();
            cmd.Connection = Baglanti();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            return ds;
        }
        /// <summary>
        /// Select Sorgularını çalıştırı
        /// </summary>
        /// <param name="query">Sql Sorgunuz</param>
        /// <returns>Sorgunuzdan Dönen DataSet</returns>
        public static DataSet SelectSogusuCalistir(string query)
        {
            var ds = new DataSet();
            SqlCommand cmd = new SqlCommand(query);
            cmd.Connection = Baglanti();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            return ds;
        }
        /// <summary>
        /// İnsert Sorgularınızı Çalıştırır
        /// </summary>
        /// <param name="cmd">SqlCommand Nesneniz</param>
        public static void kaydet(SqlCommand cmd)
        {
            cmd.Connection = Baglanti();
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
        /// <summary>
        /// İnsert Sorgularınızı Çalıştırır
        /// </summary>
        /// <param name="query">Sql Query</param>
        public static void kaydet(string query)
        {
            SqlCommand cmd = new SqlCommand(query);
            cmd.Connection = Baglanti();
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
    }
}