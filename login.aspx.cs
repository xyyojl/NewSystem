using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Response.Redirect("admin/adminIndex.aspx");
        }
    }
    //重置信息
    protected void Button2_Click(object sender, EventArgs e)
    {
        username.Text = "";
        password.Text = "";
        code.Text = "";

        Label1.Text = "";
    }

    //用户登录
    protected void Button1_Click(object sender, EventArgs e)
    {
        string user = username.Text.Trim();
        string pwd = password.Text.Trim();
        //获取验证码
        string yzm = code.Text.Trim();


        //先判断验证码是否正确，Session["yan"]值在ValidateCode.aspx中生成。
        if (Session["yan"].ToString() == yzm)
        {
            Functions fc = new Functions();

            if (fc.Login(user, pwd))
            {
                Session["user"] = user;
                Session["time"] = System.DateTime.Now.ToString();
                Response.Redirect("admin/adminIndex.aspx");
                username.Text = "";
                password.Text = "";
                code.Text = "";
            }
            else
            {
                Label1.Text = "用户名或者密码有误，请重新输入";
                username.Text = "";
                password.Text = "";
                code.Text = "";
            }
        }
        else
        {
            Label1.Text = "验证码有误，请重新输入";
            username.Text = "";
            password.Text = "";
            code.Text = "";
        }


    }
}