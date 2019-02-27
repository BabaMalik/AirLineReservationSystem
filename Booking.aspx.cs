using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int64 count;
        String id, counts;
        string stmt = "select count(*) from booking";
        SqlHelper obj = new SqlHelper();
        count = obj.MyRecordCount(stmt);
        id = "BKID";
        count = count + 1;
        counts = Convert.ToString(count);
        counts = counts.PadLeft(6, '0');
        id += counts;
        lblbid.Text = id;
        lblcustid.Text = Session["custid"].ToString();
        lblflightid.Text = Session["flightid"].ToString();
       
      


    }

    protected void btnbooked_Click(object sender, EventArgs e)
    {
       
        String stmt = "insert into booking values(";
        stmt += "'" + lblbid.Text + "',";
        stmt += "'" + lblcustid.Text + "',";
        stmt += "'" + lblflightid.Text + "')";
        SqlHelper objsql = new SqlHelper();
        objsql.MyDML(stmt);
        Response.Redirect("Booked.aspx");
    }
}