using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adminIndex : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Server.MachineName.ToString();

        Label2.Text = Request.UserHostAddress.ToString();

        Label3.Text = Request.Browser.Type.ToString();

        Label4.Text = Session["user"].ToString();

        Label5.Text = Session["time"].ToString();
    }
}