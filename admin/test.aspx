<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="admin_test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>后台管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="asset/css/plugins/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="asset/css/plugins/simple-line-icons.css"/>
    <link rel="stylesheet" type="text/css" href="asset/css/plugins/animate.min.css"/>
    <link rel="stylesheet" type="text/css" href="asset/css/plugins/fullcalendar.min.css"/>
    <link rel="stylesheet" type="text/css"  href="asset/css/style.css">
    <style type="text/css">
        .table-bordered{
            color: #333;
        }
        .table-bordered>tbody>tr>td,
        .table-bordered>tbody>tr>th,
        .table-bordered>tfoot>tr>td,
        .table-bordered>tfoot>tr>th,
        .table-bordered>thead>tr>td,
        .table-bordered>thead>tr>th
        {
            border: 1px solid rgb(145,140,140);
            text-align: center;
         }
         #left-menu .sub-left-menu .diff
         {
            height: 62px;    
         }
         #left-menu .sub-left-menu .diff .pos-left
         {
             position: absolute;
             top: 15px;
         }
         #left-menu .sub-left-menu .diff .text
         {
             position: absolute;
             left: 45px;
             top: 24px;
             padding: 0;
             line-height: 18px;
         }
         #left-menu .sub-left-menu .diff> span
         {
             padding-top: 23px;
             padding-right: 25px;
         }
    </style>
</head>
<body id="mimin" class="dashboard">
<!-- start: Header -->
<nav class="navbar navbar-default header navbar-fixed-top">
  <div class="col-md-12 nav-wrapper">
    <div class="navbar-header" style="width:100%;">
      <div class="opener-left-menu is-open"> 
        <span class="top"></span> 
        <span class="middle"></span> 
        <span class="bottom"></span> 
      </div>
      <a href="adminIndex.aspx" class="navbar-brand"> <b>首页</b> </a>
      <ul class="nav navbar-nav navbar-right user-nav">
        <li class="user-name"></li>
        <li class="dropdown avatar-dropdown">
            <img src="asset/img/avatar.jpg" class="img-circle avatar" alt="user name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"/>
          <ul class="dropdown-menu user-dropdown">
              <li><a href="#"><p value="" id="backli" onclick="back()"><span class="fa fa-power-off"></span> 退出登录</p></a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
<!-- end: Header -->
<div class="container-fluid mimin-wrapper"> 
  <!-- start:Left Menu -->
  <div id="left-menu">
    <div class="sub-left-menu scroll">
      <ul class="nav nav-list">
        <li>
          <div class="left-bg"></div>
        </li>
        <li class="active ripple diff"> 
          <a class="tree-toggle nav-header pos-left"><span class="fa-home fa"></span><a href="adminIndex.aspx" class="text">首页</a>
              <span class="fa-angle-right fa right-arrow text-right"></span>
          </a>
        </li>
        <li class="active ripple diff"> 
          <a class="tree-toggle nav-header pos-left"><span class="fa-home fa"></span><a href="../index.aspx" class="text">返回前台</a>
              <span class="fa-angle-right fa right-arrow text-right"></span>
          </a>
        </li>
        <li class="ripple">
          <a class="tree-toggle nav-header"><p id="leveljudge" value="" onclick="leveljudge()"> <span class="fa-diamond fa"></span> 用户管理
              <span class="fa-angle-right fa right-arrow text-right"></span> </p>
          </a>
          <ul class="nav nav-list tree">
            <li><a href="queryUser.aspx">查询信息</a></li>
            <li><a href="increaseUser.aspx">新增信息</a></li>
            <li><a href="editUser.aspx">编辑信息</a></li>
            <li><a href="deleteUser.aspx">删除信息</a></li>
             <%-- id="leveljudge1"--%>
          </ul>
        </li>
        <li class="ripple"> 
          <a class="tree-toggle nav-header"><span class="fa fa-check-square-o"></span> 快讯新闻管理 
            <span class="fa-angle-right fa right-arrow text-right"></span> 
          </a> 
          <ul class="nav nav-list tree">
            <li><a href="queryhotNew.aspx">查询信息</a></li>
            <li><a href="increasehotNew.aspx">新增信息</a></li>
            <li><a href="edithotNew.aspx">编辑信息</a></li>
            <li><a href="deletehotNew.aspx">删除信息</a></li>
          </ul>
        </li>
        <li class="ripple"> 
          <a class="tree-toggle nav-header"><span class="fa fa-check-square-o"></span> 最新推荐管理 
            <span class="fa-angle-right fa right-arrow text-right"></span> 
          </a> 
          <ul class="nav nav-list tree">
            <li><a href="">查询信息</a></li>
            <li><a href="">新增信息</a></li>
            <li><a href="">编辑信息</a></li>
            <li><a href="">删除信息</a></li>
          </ul>
        </li>
        <li class="ripple"> 
          <a class="tree-toggle nav-header"><span class="fa fa-check-square-o"></span> 商业新闻管理 
            <span class="fa-angle-right fa right-arrow text-right"></span> 
          </a> 
          <ul class="nav nav-list tree">
            <li><a href="">查询信息</a></li>
            <li><a href="">新增信息</a></li>
            <li><a href="">编辑信息</a></li>
            <li><a href="">删除信息</a></li>
          </ul>
        </li>
        <li class="ripple"> 
          <a class="tree-toggle nav-header"><span class="fa fa-check-square-o"></span> 创业新闻管理 
            <span class="fa-angle-right fa right-arrow text-right"></span> 
          </a> 
          <ul class="nav nav-list tree">
            <li><a href="">查询信息</a></li>
            <li><a href="">新增信息</a></li>
            <li><a href="">编辑信息</a></li>
            <li><a href="">删除信息</a></li>
          </ul>
        </li>
        <li class="ripple"> 
          <a class="tree-toggle nav-header"><span class="fa fa-check-square-o"></span> 互娱新闻管理 
            <span class="fa-angle-right fa right-arrow text-right"></span> 
          </a> 
          <ul class="nav nav-list tree">
            <li><a href="">查询信息</a></li>
            <li><a href="">新增信息</a></li>
            <li><a href="">编辑信息</a></li>
            <li><a href="">删除信息</a></li>
          </ul>
        </li>
        <li class="ripple"> 
          <a class="tree-toggle nav-header"><span class="fa fa-check-square-o"></span> 科技新闻管理 
            <span class="fa-angle-right fa right-arrow text-right"></span> 
          </a> 
          <ul class="nav nav-list tree">
            <li><a href="">查询信息</a></li>
            <li><a href="">新增信息</a></li>
            <li><a href="">编辑信息</a></li>
            <li><a href="">删除信息</a></li>
          </ul>
        </li>

      </ul>
    </div>
  </div>
  <!-- end: Left Menu -->
  <!-- start: content -->
  <div id="content" style="background: #f0f3f4;">
    <div class="panel">
      <div class="panel-body">
        <div class="col-md-6 col-sm-12">
          <h3 class="animated fadeInLeft">欢迎您：xxxx</h3>
          <p class="animated fadeInDown"><span class="fa  fa-map-marker"></span> 首页</p>
        </div>
      </div>
    </div>
      <%--<div style="height: 1000px; border:1px solid red;">
      </div>--%>
      <div class="col-md-12" style="padding:20px; background: #f0f3f4">
        
      </div>
  </div>
  <!-- end: content -->
</div>
<!-- start: Javascript --> 
 <li class="active ripple diff"> 
              <a class="tree-toggle nav-header pos-left"><span class="fa-home fa"></span><a href="adminIndex.aspx" class="text">首页</a>
                  <span class="fa-angle-right fa right-arrow text-right"></span>
              </a>
            </li>
<script type="text/javascript" src="asset/js/jquery.min.js"></script> 
<script type="text/javascript" src="asset/js/jquery.ui.min.js"></script> 
<script type="text/javascript" src="asset/js/bootstrap.min.js"></script> 
<!-- plugins --> 
<script type="text/javascript" src="asset/js/plugins/jquery.nicescroll.js"></script> 
<!-- custom --> 
<script type="text/javascript" src="asset/js/main.js"></script>
<script type="text/javascript"t src="asset/js/moment.js"></script>
<script type="text/javascript" src="../js/Confim.js"></script>
<!-- end: Javascript -->
</body>
</html>