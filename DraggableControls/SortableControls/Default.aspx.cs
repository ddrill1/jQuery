using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Services;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (!IsPostBack)
            {
                var query = "SELECT Inventory.PART_NO " + Environment.NewLine +
                            "FROM Inventory " + Environment.NewLine +
                            "JOIN Location ON Location.PartID = Inventory.PartID " + Environment.NewLine +
                            "WHERE PART_NO = '01A223000A21-11'";

                string con = ConfigurationManager.ConnectionStrings["IMMSTest"].ConnectionString;
                SqlConnection connection = new SqlConnection(con);

                SqlDataAdapter da = new SqlDataAdapter();
                DataSet ds = new DataSet();

                try
                {
                    using (connection)
                    {

                        connection.Open();

                        da = new SqlDataAdapter(query, connection);
                        da.Fill(ds);

                        connection.Close();

                        BulletedList1.DataSource = ds.Tables[0];
                        BulletedList1.DataBind();

                    }
                }
                catch (SqlException)
                {
                    BulletedList1.DataSource = null;
                }
            }
        }
    }
}
