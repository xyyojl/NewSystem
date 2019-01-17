using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class NewDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //统计在线人数
        Label6.Text = Application["count"].ToString() + " 人";

        if (Request.QueryString["ID"] != null)
        {
            string ID = Request.QueryString["ID"].ToString();
            string type = Request.QueryString["typeid"].ToString();


            //先查询当前页面的点击量，再更新数据，然后再查询最新的点击结果
            Functions fc = new Functions();
            //获取原有的点击量
            int num = fc.PageCount(ID, type);
            //更新点击量
            int count = num + 1;

            //保存新的点击量到数据库
            fc.UpdatePageCount(count, ID, type);

            string sql = "";
            //根据传输的type值，决定查询的数据表
            switch (type)
            {
                case "1":
                    sql = "select * from hotNew where ID='" + ID + "'";
                    break;
                case "2":
                    sql = "select * from company where ID='" + ID + "'";
                    break;
                case "3":
                    sql = "select * from business where ID='" + ID + "'";
                    break;
                case "4":
                    sql = "select * from recommend where ID='" + ID + "'";
                    break;
                case "5":
                    sql = "select * from entertainment where ID='" + ID + "'";
                    break;
                case "6":
                    sql = "select * from technology where ID='" + ID + "'";
                    break;

            }

            //string sql = "select * from News where ID='" + ID + "'";
            Link lk = new Link();

            SqlCommand cmd = new SqlCommand(sql, lk.con());

            SqlDataReader sda = cmd.ExecuteReader();

            if (sda.Read())
            {
                //Response.Write(sda[1].ToString());
                Label1.Text = sda[1].ToString();
                Label2.Text = sda[2].ToString();
                Label3.Text = sda[3].ToString();
                Label4.Text = sda[5].ToString();
                //Image1.ImageUrl = "~" + sda[5].ToString();
                Label5.Text = sda[4].ToString();

            }

        }
    }

}