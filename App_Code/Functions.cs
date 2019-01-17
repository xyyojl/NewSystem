using System;
using System.Collections.Generic;

using System.Web;
using System.Data.SqlClient;
using System.IO;


public class Functions
{
	public Functions()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    //用户登录
    public bool Login(string users, string pwds)
    {
        //查询用户名和密码是否存在
        string sql = "select * from Admin where UserName='" + users + "' and Pwd='" + pwds + "'";

        //调用数据库连接类
        Link lk = new Link();

        SqlCommand cmd = new SqlCommand(sql, lk.con());

        SqlDataReader sda = cmd.ExecuteReader();

        if (sda.Read())
        {
            return true;

        }
        else
        {
            return false;
        }

    }


    //检测用户名是否已经存在
    public bool IsExit(string name)
    {
        string sql = "select * from Admin where UserName='" + name + "'";
        Link lk = new Link();

        SqlCommand cmd = new SqlCommand(sql, lk.con());

        SqlDataReader sda = cmd.ExecuteReader();

        if (sda.Read())
        {
            //存在用户名，则不允许继续注册
            return true;
        }
        else
        {
            //不存在该用户名，继续注册
            return false;
        }

    }

    //用户注册
    public bool InsertAdmin(string user, string pwd, string nl, string xb, string jg, string email)
    {

        //插入记录语句
        string sql = "insert into Admin(UserName,Pwd,NL,XB,JG,Email) values('" + user + "','" + pwd + "','" + nl + "','" + xb + "','" + jg + "','" + email + "')";

        Link lk = new Link();
        SqlCommand cmd = new SqlCommand(sql, lk.con());

        int num = Convert.ToInt32(cmd.ExecuteNonQuery());

        if (num == 1)       //记录插入成功
        {
            return true;
        }
        else
        {
            return false;

        }
    }

    //增加信息到快讯hotNew表
    public bool InserthotNew(string title, string author, string time, string content)
    {
        string sql = "insert into hotNew(Title,Author,Time,Content) values('" + title + "','" + author + "','" + time + "','" + content + "')";


        Link lk = new Link();
        SqlCommand cmd = new SqlCommand(sql, lk.con());

        int num = Convert.ToInt32(cmd.ExecuteNonQuery());

        if (num == 1)
        {
            return true;
        }
        else
        {
            return false;

        }
    }

    //增加信息到最新推荐recommend表
    public bool InsertRecommend(string title, string author, string time, string content)
    {
        string sql = "insert into recommend(Title,Author,Time,Content) values('" + title + "','" + author + "','" + time + "','" + content + "')";


        Link lk = new Link();
        SqlCommand cmd = new SqlCommand(sql, lk.con());

        int num = Convert.ToInt32(cmd.ExecuteNonQuery());

        if (num == 1)
        {
            return true;
        }
        else
        {
            return false;

        }
    }
    //增加信息到商业company表
    public bool InsertCompany(string title, string author, string time, string content)
    {
        string sql = "insert into company(Title,Author,Time,Content) values('" + title + "','" + author + "','" + time + "','" + content + "')";


        Link lk = new Link();
        SqlCommand cmd = new SqlCommand(sql, lk.con());

        int num = Convert.ToInt32(cmd.ExecuteNonQuery());

        if (num == 1)
        {
            return true;
        }
        else
        {
            return false;

        }
    }
    //增加信息到创业business表
    public bool InsertBusiness(string title, string author, string time, string content)
    {
        string sql = "insert into business(Title,Author,Time,Content) values('" + title + "','" + author + "','" + time + "','" + content + "')";


        Link lk = new Link();
        SqlCommand cmd = new SqlCommand(sql, lk.con());

        int num = Convert.ToInt32(cmd.ExecuteNonQuery());

        if (num == 1)
        {
            return true;
        }
        else
        {
            return false;

        }
    }
    //增加信息到互娱entertainment表
    public bool InsertEntertainment(string title, string author, string time, string content)
    {
        string sql = "insert into entertainment(Title,Author,Time,Content) values('" + title + "','" + author + "','" + time + "','" + content + "')";


        Link lk = new Link();
        SqlCommand cmd = new SqlCommand(sql, lk.con());

        int num = Convert.ToInt32(cmd.ExecuteNonQuery());

        if (num == 1)
        {
            return true;
        }
        else
        {
            return false;

        }
    }

    //增加信息到科技technology表
    public bool InsertTechnology(string title, string author, string time, string content)
    {
        string sql = "insert into technology(Title,Author,Time,Content) values('" + title + "','" + author + "','" + time + "','" + content + "')";


        Link lk = new Link();
        SqlCommand cmd = new SqlCommand(sql, lk.con());

        int num = Convert.ToInt32(cmd.ExecuteNonQuery());

        if (num == 1)
        {
            return true;
        }
        else
        {
            return false;

        }
    }

    

    //查询点击量
    public int PageCount(string ID, string TypeID)
    {
        string sql = "";
        //根据传输的type值，决定查询的数据表
        switch (TypeID)
        {
            case "1":
                sql = "select PageCount from hotNew where ID='" + ID + "'";
                break;
            case "2":
                sql = "select PageCount from company where ID='" + ID + "'";
                break;
            case "3":
                sql = "select PageCount from business where ID='" + ID + "'";
                break;
            case "4":
                sql = "select PageCount from recommend where ID='" + ID + "'";
                break;
            case "5":
                sql = "select PageCount from entertainment where ID='" + ID + "'";
                break;
            case "6":
                sql = "select PageCount from technology where ID='" + ID + "'";
                break;

        }
        //调用数据库连接类
        Link lk = new Link();

        SqlCommand cmd = new SqlCommand(sql, lk.con());

        object ob = cmd.ExecuteScalar();

        int PageCount = 0;
        //判断表中的字段值是否为空，不为空，则把值读出来，为空，则返回值为0。
        if (ob.ToString().Length != 0)
        {
            PageCount = Convert.ToInt32(cmd.ExecuteScalar());
            return PageCount;
        }
        else
        {
            return PageCount;
        }

    }


    //更新点击量
    public void UpdatePageCount(int PageCount, string ID, string TypeID)
    {
        string sql = "";
        //根据传输的type值，决定更新的数据表
        switch (TypeID)
        {
            case "1":
                sql = "Update hotNew set PageCount='" + PageCount + "' where ID='" + ID + "'";
                break;
            case "2":
                sql = "Update company set PageCount='" + PageCount + "' where ID='" + ID + "'";
                break;
            case "3":
                sql = "Update business set PageCount='" + PageCount + "' where ID='" + ID + "'";
                break;
            case "4":
                sql = "Update recommend set PageCount='" + PageCount + "' where ID='" + ID + "'";
                break;
            case "5":
                sql = "Update entertainment set PageCount='" + PageCount + "' where ID='" + ID + "'";
                break;
            case "6":
                sql = "Update technology set PageCount='" + PageCount + "' where ID='" + ID + "'";
                break;
        }
        //调用数据库连接类
        Link lk = new Link();

        SqlCommand cmd = new SqlCommand(sql, lk.con());

        //更新数据
        cmd.ExecuteNonQuery();

    }

    ////上传图片，然后获取上传的路径
    //public string UploadFile(System.Web.UI.WebControls.FileUpload FileUpload1)
    //{
    //    if (FileUpload1.HasFile)
    //    {
    //        string upPath = "../images/";  //上传文件路径
    //        int upLength = 5;        //上传文件大小
    //        string upFileType = "|image/bmp|image/x-png|image/pjpeg|image/gif|image/png|image/jpeg|";

    //        string fileContentType = FileUpload1.PostedFile.ContentType;    //文件类型

    //        if (upFileType.IndexOf(fileContentType.ToLower()) > 0)
    //        {
    //            string name = FileUpload1.PostedFile.FileName;                  // 客户端文件路径

    //            FileInfo file = new FileInfo(name);

    //            string fileName = DateTime.Now.ToString("yyyyMMddhhmmssfff") + file.Extension; // 文件名称，当前时间（yyyyMMddhhmmssfff）
    //            //string webFilePath = Server.MapPath(upPath) + fileName;        // 服务器端文件路径
    //            string webFilePath = System.Web.HttpContext.Current.Server.MapPath(upPath) + fileName;
    //            string FilePath = upPath + fileName;   //页面中使用的路径

    //            if (!File.Exists(webFilePath))
    //            {
    //                if ((FileUpload1.FileBytes.Length / (1024 * 1024)) < upLength)
    //                {
    //                    try
    //                    {
    //                        FileUpload1.SaveAs(webFilePath);                                // 使用 SaveAs 方法保存文件

    //                        return FilePath.Substring(2, FilePath.Length - 2);
    //                    }
    //                    catch (Exception ex)
    //                    {
    //                        //上传文件失败
    //                        return "0";
    //                    }
    //                }
    //                else
    //                {
    //                    //上传文件超出大小
    //                    return "1";
    //                }
    //            }
    //            else
    //            {
    //                //上传文件已存在
    //                return "2";
    //            }
    //        }
    //        else
    //        {
    //            return "上传文件类型不匹配";
    //        }
    //    }
    //    else
    //    {
    //        return "没选择上传文件";
    //    }

    //}
}