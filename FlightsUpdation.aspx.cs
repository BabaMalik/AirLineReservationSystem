using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            String stmt = "Insert into flight values(";
            stmt += "'" + txtfId.Text + "',";
            stmt += "'" + txtfName.Text + "',";
            stmt += "'" + txtfSource.Text + "',";
            stmt += "'" + txtfDest.Text + "',";
            stmt += "'" + txtArrTime.Text + "',";
            stmt += "'" + txtDeptTime.Text + "',";
            stmt += "'" + txtbcseats.Text + "',";
            stmt += "'" + txtecseats.Text + "',";
            stmt += "'" + txtbcostseats.Text + "',";
            stmt += "'" + txtcosteseats.Text + "')";

            SqlHelper objSql = new SqlHelper();
            objSql.MyDML(stmt);

            lblMsg.Text = "Flight details updated successfully";

            txtfId.Text = String.Empty;
            txtfName.Text = String.Empty;
            txtfSource.Text = String.Empty;
            txtfDest.Text = String.Empty;
            txtArrTime.Text = String.Empty;
            txtDeptTime.Text = String.Empty;
            txtbcseats.Text = String.Empty;
            txtecseats.Text = String.Empty;
            txtbcostseats.Text = String.Empty;
            txtcosteseats.Text = String.Empty;
            GridView1.DataBind();
        }
        catch(Exception ex)
        {
            lblMsg.Text = "Something went wrong!" + ex.ToString();
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtfId.Text = String.Empty;
        txtfName.Text = String.Empty;
        txtfSource.Text = String.Empty;
        txtfDest.Text = String.Empty;
        txtArrTime.Text = String.Empty;
        txtDeptTime.Text = String.Empty;
        txtbcseats.Text = String.Empty;
        txtecseats.Text = String.Empty;
        txtbcostseats.Text = String.Empty;
        txtcosteseats.Text = String.Empty;
    }
}