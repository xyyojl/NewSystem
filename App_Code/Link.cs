using System;
using System.Collections.Generic;

using System.Web;
using System.Data.SqlClient;


/// <summary>
///Link 的摘要说明
/// </summary>
public class Link
{
	public Link()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}


    //数据库连接代码
    public SqlConnection con()
    {
        string str = "server=localhost;database=NewSystem;uid=sa;pwd=123456ojl";

        SqlConnection con = new SqlConnection(str);

        con.Open();

        return con;
    }
}