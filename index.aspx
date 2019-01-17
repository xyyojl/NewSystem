<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="./css/init.css">
    <link rel="stylesheet" type="text/css" href="./css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
    <form id="form1" runat="server">
    <header>
        <div class="navigation">
            <div class="container clearfix">
                <a href="#">
                    <h1 class="logo">
                    </h1>
                </a>
                <nav>
                    <ul class="clearfix">
                        <li class="active"><a href="index.aspx" class="active">首页</a> </li>
                        <li><a href="company.aspx">商业</a> </li>
                        <li><a href="business.aspx">创业</a> </li>
                        <li><a href="entertainment.aspx">互娱</a> </li>
                        <li><a href="technology.aspx">科技</a> </li>
                        <li><a href="about.aspx">关于</a> </li>
                    </ul>
                </nav>
                <div class="search">
                    <input name="keyword" placeholder="搜索" type="text" />
                    <input name="" type="submit" value="" class="btn-search" />
                </div>
            </div>
        </div>
        <div class="bannerAndNews">
            <div class="container clearfix">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="./images/banner/1.jpg" alt="轮播图片">
                            <p class="title">
                                得益于新产品的市场拉动力 联想连续2个季度蝉联全球PC出货量冠军</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="./images/banner/2.jpg" alt="轮播图片">
                            <p class="title">
                                【长文】张小龙史上最长演讲实录：每天有1亿人教我怎么做产品</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="./images/banner/3.jpg" alt="轮播图片">
                            <p class="title">
                                【万相】“怒怼”权健的丁香园也卖天价鞋垫？1980元一双</p>
                        </div>
                    </div>
                    <!-- 如果需要分页器 -->
                    <div class="swiper-pagination">
                    </div>
                    <!-- 如果需要导航按钮 -->
                    <div class="swiper-button-prev">
                    </div>
                    <div class="swiper-button-next">
                    </div>
                </div>
                <div class="hotNews">
                    <h3><a href="hotNew.aspx">快讯</a></h3>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                        DataSourceID="SqlDataSource1" ShowHeader="False" GridLines="None" class="hotNewsDetails">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                                SortExpression="ID" Visible="False" />
                            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="16px" Width="16px" ImageUrl="./images/icon/new1.png" />
                                    <a href="NewDetails.aspx?ID=<%# Eval("ID")%>&&typeid=1">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                                    </a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewSystemConnectionString %>"
                        SelectCommand="SELECT Top 6 [ID], [Title] FROM [hotNew]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </header>
    <main>
        <!-- entertainment -->
        <div class="column-row clearfix">
            <div class="column company">
                <div class="column-header clearfix">
                    <h3><a href="company.aspx">商业新闻</a></h3>
                    <a href="company.aspx">
                        <div class="moreR"></div>
                    </a>
                </div>
                <%--<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="ID" DataSourceID="SqlDataSource2" ShowHeader="False" GridLines="None" class="column-content">
                        <Columns>
                            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server" Height="16px" Width="16px" ImageUrl="./images/icon/new2.png" />
                                    <a href="NewDetails.aspx?ID=<%# Eval("ID")%>&&typeid=2">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title")  %>' class="newData"></asp:Label>
                                    </a>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                ReadOnly="True" SortExpression="ID" Visible="False" />
                            <asp:TemplateField HeaderText="Time" SortExpression="Time">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Time") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# SubString(Eval("Time").ToString(),11) %>'  class="newTime" ></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:NewSystemConnectionString %>" 
                        SelectCommand="SELECT Top 8 [ID], [Title], [Time] FROM [company]">
                    </asp:SqlDataSource>--%>
                    <ul class="column-content">
                        <li>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="ID" DataSourceID="SqlDataSource2" GridLines="None" 
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
                                            <a href="NewDetails.aspx?ID=<%# Eval("ID")%>&&typeid=2">
                                               <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>' class="newData"></asp:Label>
                                            </a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time"  DataFormatString="{0:d}" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:NewSystemConnectionString %>" 
                                SelectCommand="SELECT Top 8 [ID], [Title], [Time] FROM [company]">
                            </asp:SqlDataSource>
                        </li>
                    </ul>
            </div>
            <div class="column business">
                <div class="column-header clearfix">
                    <h3><a href="business.aspx">创业新闻</a></h3>
                    <a href="business.aspx">
                        <div class="moreR"></div>
                    </a>
                </div>
                     <ul class="column-content">
                        <li>
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="ID" DataSourceID="SqlDataSource3" GridLines="None" 
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
                                            <a href="NewDetails.aspx?ID=<%# Eval("ID")%>&&typeid=3">
                                               <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>' class="newData"></asp:Label>
                                            </a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time"  DataFormatString="{0:d}" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:NewSystemConnectionString %>" 
                                SelectCommand="SELECT Top 8 [ID], [Title], [Time] FROM [business]">
                            </asp:SqlDataSource>
                        </li>
                    </ul>
            </div>
            <div class="recommend">
                <div class="recommend-header clearfix">
                    <h3><a href="recommend.aspx">最新推荐</a></h3>
                    <a href="recommend.aspx">
                        <div class="moreR"></div>
                    </a>
                </div>
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="ID" DataSourceID="SqlDataSource4" ShowHeader="False" GridLines="None"  class="recommend-content">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                ReadOnly="True" SortExpression="ID" Visible="False" />
                            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <a href="NewDetails.aspx?ID=<%# Eval("ID")%>&&typeid=4">
                                        <asp:Label ID="Label1" runat="server" Text='<%# SubString(Eval("Title").ToString(),21) %>' ToolTip='<%# Bind("Title") %>'></asp:Label>
                                    </a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:NewSystemConnectionString %>" 
                        SelectCommand="SELECT Top 8 [ID], [Title] FROM [recommend]"></asp:SqlDataSource>
            </div>
        </div>
        <div class="column-row clearfix">
            <div class="column company">
                <div class="column-header clearfix">
                    <h3><a href="entertainment.aspx">互娱新闻</a></h3>
                    <a href="entertainment.aspx">
                        <div class="moreR"></div>
                    </a>
                </div>

                <ul class="column-content">
                    <li>
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="ID" DataSourceID="SqlDataSource5" GridLines="None" 
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
                                        <a href="NewDetails.aspx?ID=<%# Eval("ID")%>&&typeid=5">
                                           <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>' class="newData"></asp:Label>
                                        </a>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time"  DataFormatString="{0:d}" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NewSystemConnectionString %>" 
                            SelectCommand="SELECT Top 8 [ID], [Title], [Time] FROM [entertainment]">
                        </asp:SqlDataSource>
                    </li>
                </ul>
            </div>
            <div class="column business">
                <div class="column-header clearfix">
                    <h3><a href="technology.aspx">科技新闻</a></h3>
                    <a href="technology.aspx">
                        <div class="moreR"></div>
                    </a>
                </div>

                 <ul class="column-content">
                    <li>
                        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="ID" DataSourceID="SqlDataSource6" GridLines="None" 
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
                                           <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>' class="newData"></asp:Label>
                                        </a>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time"  DataFormatString="{0:d}" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NewSystemConnectionString %>" 
                            SelectCommand="SELECT Top 8 [ID], [Title], [Time] FROM [technology]">
                        </asp:SqlDataSource>
                    </li>
                </ul>
            </div>
            
            <div class="IT">
                <div class="IT-header clearfix">
                    <h3>IT也疯狂</h3>
                </div>

                <div class="IT-content">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="./images/small-banner/1.jpg" alt="轮播图片">
                                <p class="title">智能化重塑社区生态，看智慧社区如何运筹帷幄</p>
                            </div>
                            <div class="swiper-slide">
                                <img src="./images/small-banner/2.jpg" alt="轮播图片">
                                <p class="title">微信号地下交易牵出诈骗、色情行业等“灰色”利益链</p>
                            </div>
                            <div class="swiper-slide">
                                <img src="./images/small-banner/3.jpg" alt="轮播图片">
                                <p class="title">突破局限，华为nova4为你记录更广阔世界</p>
                            </div>
                            <div class="swiper-slide">
                                <img src="./images/small-banner/4.jpg" alt="轮播图片">
                                <p class="title">霍金学生谈神秘电波：霍金也会认为这与外星人无关</p>
                            </div>
                        </div>
                        <!-- 如果需要分页器 -->
                        <div class="swiper-pagination"></div>
    
                        <!-- 如果需要导航按钮 -->
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>
    
                        <!-- 如果需要滚动条 -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>

            </div>
        </div>
    </main>
    <footer>
        <p>版权所有：五邑大学经济管理学院信息管理与信息系统专业ojl <a href="login.aspx">管理入口</a></p>
        <p>
            网站当前的在线人数是：<asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
    </footer>
    <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="./js/main.js"></script>
    <script type="text/javascript" src="./js/swiper.min.js"></script>
    <script type="text/javascript">
        var mySwiper = new Swiper('.swiper-container', {
            // direction: 'vertical', // 垂直切换选项
            loop: true, // 循环模式选项
            autoplay:true,
            // 如果需要分页器
            pagination: {
                el: '.swiper-pagination',
            },

            // 如果需要前进后退按钮
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        })
        $(document).ready(function () {
            //initialize swiper when document ready
            var mySwiper = new Swiper('.swiper-container', {
                // Optional parameters
                // direction: 'vertical',
                loop: true
            })
        });
    </script>
    </form>
</body>
</html>
