﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class company : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //统计在线人数
        Label2.Text = Application["count"].ToString() + " 人";
    }
}