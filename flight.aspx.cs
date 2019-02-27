using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class flight : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void Searchbtn_Click(object sender, EventArgs e)
    {
        if (ddl1.SelectedValue == ddl2.SelectedValue)
            lbl.Text = "There is no flights between these locations!! Please select another one....";
        else
            GridView1.Visible = true;
        GridView1.DataBind();
    }   
}