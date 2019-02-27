using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Data;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Savebtn_Click(object sender, EventArgs e)
    {try
        {
            int verify;
            String stmt = "select count(*) from customer where custid='" + txturnm.Text + "' and password='" + txtpswd.Text + "'";
            SqlHelper obj = new SqlHelper();
            verify = obj.MyRecordCount(stmt);
            if (verify == 1)
            {
                Session["custid"] = txturnm.Text;
                Response.Redirect("UserPage.aspx");
            }
            else
            {
                lbl.Text = "Invalid Password";
            }
        }
        catch(Exception ex)
        {
            lbl.Text = "somthing went wrong" + ex;
        }
    }
}