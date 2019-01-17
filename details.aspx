<%@ Page Language="C#" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>关于DoNews</title>
    <link rel="stylesheet" type="text/css" href="./css/init.css">
    <link rel="stylesheet" type="text/css" href="./css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
    <header>
        <div class="navigation">
            <div class="container clearfix">
                <a href="#">
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
                        <li>
                            <a href="technology.aspx">科技</a>
                        </li>
                        <li class="active">
                            <a href="about.aspx">关于</a>
                        </li>
                    </ul>
                </nav>
                <div class="search">
                    <form id="search_news_form" action="">
                        <input name="keyword" placeholder="搜索" type="text" />
                        <input name="" type="submit" value="" class="btn-search" />
                    </form>
                </div>
            </div>
        </div>
    </header>
    <main>
        
    </main>
    <footer>
        <p>版权所有：五邑大学经济管理学院信息管理与信息系统专业ojl <a href="login.aspx">管理入口</a></p>
        <p>网站当前的在线人数是：</p>
    </footer>
    <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="./js/main.js"></script>
    <script type="text/javascript" src="./js/swiper.min.js"></script>
</body>
</html>