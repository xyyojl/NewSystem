using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //统计在线人数
        Label2.Text = Application["count"].ToString() + " 人";
    }
    //标题字符过长，用于截断字符。
    public string SubString(string mString, int mLength)
    {
        if (mString.Length > mLength)
            return mString.Substring(0, mLength - 1);
        else
            return mString;
    }
}