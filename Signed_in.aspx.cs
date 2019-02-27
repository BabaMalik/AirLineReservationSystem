using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Signed_in : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["custid"] == null)
        {
            Response.Redirect("sessionend.aspx");
        }
        gvavailflight.Visible = false;

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {

        
            gvavailflight.Visible = true;
    }

    protected void gvavailflight_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = gvavailflight.SelectedRow;
        string bc = gr.Cells[9].Text;
        string ec = gr.Cells[10].Text;
        string fid = gr.Cells[1].Text;

        Session["bccost"] = bc;
        Session["eccost"] = ec;
        Session["flightid"] = fid;
        Response.Redirect("~/passenger.aspx");


    }

 
}