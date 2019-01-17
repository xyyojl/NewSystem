<%@ Page Language="C#" AutoEventWireup="true" CodeFile="technology.aspx.cs" Inherits="technology" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>DoNews科技</title>
    <link rel="stylesheet" type="text/css" href="./css/init.css">
    <link rel="stylesheet" type="text/css" href="./css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
    <form id="form1" runat="server">
    <header>
        <div class="navigation">
            <div class="container clearfix">
                <a href="index.aspx">
                    <h1 class="logo"></h1>
                </a>
                <nav>
                    <ul class="clearfix">
                        <li>
                            <a href="index.aspx" class="active">首页</a>
                        </li>
                        <li>
                            <a href="company.aspx">商业</a>
                        </li>
                        <li>
                            <a href="business.aspx">创业</a>
                        </li>
                        <li>
                            <a href="entertainment.aspx">互娱</a>
                        </li>
                        <li class="active">
                            <a href="technology.aspx">科技</a>
                        </li>
                        <li>
                            <a href="about.aspx">关于</a>
                        </li>
                    </ul>
                </nav>
                <div class="search">
                        <input name="keyword" placeholder="搜索" type="text" />
                        <input name="" type="submit" value="" class="btn-search" />
                    </div>
            </div>
        </div>
    </header>
    <main>
        <div class="breadCrumb">
            <a href="index.aspx">科技媒体DoNews首页</a>
            >
            <a href="technology.aspx">科技新闻资讯</a>
        </div>
        <div class="companyContent clearfix common">
            <div class="companyList commonList">
                <ul class="column-content">
                    <li>
                        
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="ID" DataSourceID="SqlDataSource1" GridLines="None" 
                            ShowHeader="False">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="ID" Visible="False" />
                                <asp:TemplateField HeaderText="Title" SortExpression="Title">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image3" runat="server" Height="16px" Width="16px" 
                                        ImageUrl="./images/icon/new2.png" />
                                        <a href="NewDetails.aspx?ID=<%# Eval("ID")%>&&typeid=6">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                                        </a>
                                    </ItemTemplate>
                                    <ItemStyle Height="36px" Width="700px" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" DataFormatString="{0:d}">
                                <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NewSystemConnectionString %>" 
                            SelectCommand="SELECT [ID], [Title], [Time] FROM [technology]">
                        </asp:SqlDataSource>
                        
                    </li>
                </ul>
            </div>
            <div class="columnList">
                <h3>专栏作者</h3>
                <ul class="authorList">
                    <li><img src="./images/author/1.jpg" alt="" ><span>maomaobear</span></li>
                    <li><img src="./images/author/2.jpg" alt="" ><span>科技好文章</span></li>
                    <li><img src="./images/author/3.jpg" alt="" ><span>姜伯静</span></li>
                    <li><img src="./images/author/4.jpg" alt="" ><span>耿彪</span></li>
                    <li><img src="./images/author/5.jpg" alt="" ><span>姜洪智</span></li>
                    <li><img src="./images/author/6.jpg" alt="" ><span>金竹</span></li>
                    <li><img src="./images/author/7.jpg" alt="" ><span>孙永杰</span></li>
                    <li><img src="./images/author/8.jpg" alt="" ><span>腾讯锐评</span></li>
                </ul>
            </div>
        </div>
    </main>
    <footer>
        <p>版权所有：五邑大学经济管理学院信息管理与信息系统专业ojl <a href="login.aspx">管理入口</a></p>
        <p>网站当前的在线人数是：<asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
    </footer>
    <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="./js/main.js"></script>
    <script type="text/javascript" src="./js/swiper.min.js"></script>
    </form>
</body>
</html>
