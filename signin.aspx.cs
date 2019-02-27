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
        Int64 count;
        String id,counts;
        string stmt = "select count(*) from customer";
        SqlHelper obj = new SqlHelper();
        count=obj.MyRecordCount(stmt);
        id= "BMHA";
        count = count + 1;
        counts = Convert.ToString(count);
        counts = counts.PadLeft(6, '0');
        id += counts;
        lblid.Text = id;


    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            String stmt = "insert into customer values(";
            stmt += "'" + lblid.Text + "',";
            stmt += "'" + txtfn.Text + "',";
            stmt += "'" + txtln.Text + "',";
            stmt += "'" + txtdob.Text + "',";
            stmt += "'" + txtemail.Text + "',";
            stmt += "'" + txtpswd.Text + "',";
            stmt +="'" +rbgender.SelectedItem.Text+"',";
            stmt += "'" + txtddlnationality.SelectedItem.Text + "',";
            stmt += "'" + txtphonenum.Text + "',";
            stmt += "'" + txtaddress.Text + "')";
            SqlHelper objsql = new SqlHelper();
            objsql.MyDML(stmt);
            lblMsg.Text = "Record saved Successfully";
            lblid.Text = String.Empty;
            txtphonenum.Text = String.Empty;
            txtfn.Text = String.Empty;
            txtln.Text = String.Empty;
            txtdob.Text = String.Empty;
            txtemail.Text = String.Empty;
            txtpswd.Text = String.Empty;
            rbgender.SelectedIndex = -1;
            txtaddress.Text = String.Empty;
        }
        catch(Exception ex)
        {
            lblMsg.Text = "Something went wrong" + ex;
        }
       

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        lblid.Text = String.Empty;
        txtphonenum.Text = String.Empty;
        txtfn.Text = String.Empty;
        txtln.Text = String.Empty;
        txtdob.Text = String.Empty;
        txtemail.Text = String.Empty;
        txtpswd.Text = String.Empty;
        rbgender.SelectedIndex = -1;
        txtaddress.Text = String.Empty;

    }
}