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

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            int verify;
            String stmt = "select count(*) from admin where adminid='" + txtadminid.Text + "' and adminpassword='" + txtadminpswd.Text + "'";
            SqlHelper obj = new SqlHelper();
            verify = obj.MyRecordCount(stmt);
            if (verify == 1)
            {
                Response.Redirect("FlightsUpdation.aspx");
            }
            else
            {
                lbl.Text = "Invalid user ID";
            }
        }
        catch (Exception ex)
        {
            lbl.Text = "Something went wrong!!" + ex;
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtadminid.Text = String.Empty;
        txtadminpswd.Text = String.Empty;
    }
}