using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Odevmoedcjvajsd
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=; Initial Catalog=dbodev; Integrated Security=true"))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("Select * from tbKullanici Where Kadi='" + txtKadi.Text + "' and Sifre='" + txtSifre.Text + "'",con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Session["Adi"] = dr["Adi"].ToString();
                    Response.Redirect("private.aspx");
                    Label1.Text = "Giriş Başarılı";
                    Response.Write("Giriş Başarılı");
                }
                else
                {
                    Response.Write("Kullanıcı adı veya Şifre Hatalı");
                    Label1.Text = "Kullanıcı adı veya Şifre Hatalı";
                }

            }
        }
    }
}