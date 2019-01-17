using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_test1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //如果Session为空，则强制跳转回登录页面
        if (Session["user"] == null)
        {
            Response.Redirect("../Login.aspx");
        }
        //统计在线人数
        Label5.Text = Application["count"].ToString() + " 人";


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Title = TextBox1.Text.Trim();
        string Author = DropDownList1.SelectedItem.Text; ;
        string Time = TextBox4.Text.Trim();
        //string contents = TextBox5.Text.Trim();

        //获取html编辑的内容
        string Content = content1.Value;


        Functions fc = new Functions();

        if (fc.InserthotNew(Title, Author, Time, Content))
        {
            Label1.Text = "新增信息成功";
            TextBox1.Text = "";
            TextBox4.Text = "";
            content1.Value = "";
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