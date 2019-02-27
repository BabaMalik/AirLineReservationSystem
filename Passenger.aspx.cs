using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Int64 count;
        String id, counts;
        string stmt = "select count(*) from passenger";
        SqlHelper obj = new SqlHelper();
        count = obj.MyRecordCount(stmt);
        id = "TAIR";
        count = count + 1;
        counts = Convert.ToString(count);
        counts = counts.PadLeft(6, '0');
        id += counts;
        lblpassid.Text = id;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            decimal cost = Convert.ToDecimal(lblscost.Text);
            string stmt = "insert into passenger values(";
  
            stmt += "'" + lblpassid.Text + "',";
            stmt += "'" + txtPName.Text + "',";
            stmt += "'" + txtAge.Text + "',";
            stmt += "'" + ddlGender.SelectedItem.Text + "',";
            stmt += "'" + txtdoj.Text + "',";
            stmt += "'" + ddlseat.SelectedItem.Text + "',";
            stmt += "" + cost + ")";

            SqlHelper objsql = new SqlHelper();
            objsql.MyDML(stmt);

            lblMsg.Text = "Record saved Successfully";
            lblpassid.Text = String.Empty;
            txtPName.Text = String.Empty;
            txtAge.Text = String.Empty;
            txtdoj.Text = String.Empty;


        }
        catch (Exception ex)
        {
            lblMsg.Text = "Something went wrong" + ex;
        }

        gv.DataBind();

    }

    protected void addpassdetails_Click(object sender, EventArgs e)
    {
        divPassenger.Visible = true;
        gv.Visible = false;

    }

    protected void btnsavepassdetails_Click(object sender, EventArgs e)
    {

        Response.Redirect("Booking.aspx");

    }

    protected void ddlseat_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlseat.SelectedValue == "Bussiness Class")
        {
            lblscost.Text = Convert.ToString(Session["bccost"]);

        }
        else
        {
            lblscost.Text = Convert.ToString(Session["eccost"]);
        }
    }

    protected void txtshowpass_Click(object sender, EventArgs e)
    {
        gv.Visible = true;
        gv.DataBind();

    }


}