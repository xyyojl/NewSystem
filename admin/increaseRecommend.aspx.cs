using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_increaseRecommend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //如果Session为空，则强制跳转回登录页面
        if (Session["user"] == null)
        {
            Response.Redirect("../Login.aspx");
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Title = TextBox1.Text.Trim();
        string Author = TextBox2.Text.Trim();
        string Time = TextBox4.Text.Trim();

        //获取html编辑的内容
        string Content = Textarea1.Value;


        Functions fc = new Functions();

        if (fc.InsertRecommend(Title, Author, Time, Content))
        {
            Label1.Text = "新增信息成功";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            Textarea1.Value = "";
        }
        else
        {
            Label1.Text = "新增信息失败";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox4.Text = "";
        Label1.Text = "";
    }
}