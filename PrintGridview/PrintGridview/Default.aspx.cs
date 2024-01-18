using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace PrintGridview
{
    public partial class _Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            string query = "select top 50 kyc_ref_no,Full_name,Pan_no,Dob,email,otp from kyc_basic_master"; 
            SqlCommand cmd = new SqlCommand(query,con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();


        }
    }
}
