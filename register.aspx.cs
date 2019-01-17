using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string user = username.Text.Trim();
        string pwd = password1.Text.Trim();
        string nl = age.Text.Trim();
        string xb = RadioButtonList1.SelectedItem.Text;
        string jg = roots.Text.Trim();
        string email = emails.Text.Trim();

        Functions fc = new Functions();

        if (fc.InsertAdmin(user, pwd, nl, xb, jg, email))
        {
            Label1.Text = "用户注册成功";
            //HyperLink1.Visible = true;
            username.Text = "";
            password1.Text = "";
            password1.Text = "";
            age.Text = "";
            roots.Text = "";
            emails.Text = "";
        }
        else
        {
            Label1.Text = "用户注册失败，用户名已存在，请输入其他用户名";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        username.Text = "";
        password1.Text = "";
        password1.Text = "";
        age.Text = "";
        roots.Text = "";
        emails.Text = "";
        Label1.Text = "";
    }
    protected void username_TextChanged(object sender, EventArgs e)
    {
        Label1.Text = "";
        //返回用户名的小写格式
        string user = username.Text.ToLower();
        Functions fc = new Functions();
        if (user.Length > 0)
        {
            if (fc.IsExit(user))
            {
                Label1.Text = "用户名已存在，请选择新的用户名";
            }
            else
            {
                Label1.Text = "用户名不存在，可以继续注册";
            }
        }
        else
        {
            Label1.Text = "用户名不能为空";
        }
    }
}