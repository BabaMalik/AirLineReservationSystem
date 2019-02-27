using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;


public partial class Account_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string custid = Convert.ToString(Session["custid"]);

        string stmt = "select * from customer where custid='" + custid + "'";
        SqlHelper obj = new SqlHelper();
        SqlDataReader reader = obj.mydatareader(stmt);
        if(reader.Read())
        {
            lblmsg.Text = Convert.ToString(reader["custid"]);
            lblurnm.Text = Convert.ToString(reader["fname"]);
            lbldob.Text = Convert.ToString(reader["DOB"]);
            lblemail.Text = Convert.ToString(reader["email"]);
            lblphonenum.Text = Convert.ToString(reader["phno"]);
            lbladdress.Text = Convert.ToString(reader["address"]);
        }
    }
}