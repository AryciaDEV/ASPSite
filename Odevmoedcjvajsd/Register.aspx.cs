using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Odevmoedcjvajsd
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=; Initial Catalog=dbodev; Integrated Security=true"))
            {
                con.Open();


                SqlCommand cmd = new SqlCommand("Insert into tbKullanici(Kadi, Adi, Soyadi, Eposta, Sifre) values ('" + txtKadi.Text + "','" + txtAdi.Text + "','" + txtSoyadi.Text + "','" + txtEposta.Text + "','" + txtSifre.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("Kayıt Başarılı");
                Response.Redirect("login.aspx");
            }


        }
    }
}