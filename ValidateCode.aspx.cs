using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class ValidateCode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.ValidateCodea();
    }
    public void ValidateCodea()
    {
        string VNum = RndNum(4); //这里的数字4代表显示的是4位的验证字符串！
        int Gheight = (int)(VNum.Length * 30.5);
        //gheight为图片宽度,根据字符长度自动更改图片宽度
        System.Drawing.Bitmap Img = new System.Drawing.Bitmap(Gheight, 20);
        Graphics g = Graphics.FromImage(Img);
        g.DrawString(VNum, new System.Drawing.Font("Arial", 12), new System.Drawing.SolidBrush(Color.Black), 3, 3);
        //在矩形内绘制字串（字串，字体，画笔颜色，左上x.左上y） 
        System.IO.MemoryStream ms = new System.IO.MemoryStream();
        Img.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
        Response.ClearContent(); //需要输出图象信息 要修改HTTP头 
        Response.ContentType = "image/Png";
        Response.BinaryWrite(ms.ToArray());
        g.Dispose();
        Img.Dispose();
        Response.End();
    }

    //生成随机数函数中从Vchar数组中随机抽取
    //字母区分大小写
    public string RndNum(int VcodeNum)
    {
        string Vchar = "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,W,X,Y,Z";

        string[] VcArray = Vchar.Split(',');
        string VNum = "";//由于字符串很短，就不用StringBuilder了
        int temp = -1;//记录上次随机数值，尽量避免生产几个一样的随机数

        //采用一个简单的算法以保证生成随机数的不同
        Random rand = new Random();
        for (int i = 1; i < VcodeNum + 1; i++)
        {
            if (temp != -1)
            {
                rand = new Random(i * temp * unchecked((int)DateTime.Now.Ticks));
            }

            int t = rand.Next(35);
            if (temp != -1 && temp == t)
            {
                return RndNum(VcodeNum);
            }
            temp = t;
            VNum += VcArray[t];

        }
        Session["yan"]=VNum;
        return VNum;
    }
}