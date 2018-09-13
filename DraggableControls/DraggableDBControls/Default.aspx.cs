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
    public string s;
    public string s2;
    public string valDB;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Search();
        }
    }
    public void Search()
    {
        var query = "SELECT Inventory.PART_NO, Inventory.[DESC], Inventory.PartID, Location.Location " + Environment.NewLine +
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

                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();

            }
        }
        catch (SqlException)
        {
            GridView1.DataSource = null;
        }
    }
}
