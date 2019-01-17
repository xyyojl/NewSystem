<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登录页面</title>
    <link href="./css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="main">
		<div class="login-form">
			<h1>用户登陆</h1>
			<div class="head">
				<img src="./images/user.png" alt="" />
			</div>
             <%--value="用户名"--%>
			<form id="form1" runat="server">
                <div class="username">
                    <label>用户名：</label>
                    <asp:TextBox ID="username" runat="server" placeholder="用户名"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="username" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                </div>
                <div class="password">
                    <label>密码：</label>
                    <asp:TextBox ID="password" runat="server" placeholder="密码" name="password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="password" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                </div>
                <div class="code">
                    <label>验证码：</label>
                    <asp:TextBox ID="code" runat="server" placeholder="验证码"></asp:TextBox>
                    <asp:Image ID="Image1" runat="server" ImageUrl="ValidateCode.aspx" style="width: 65px;transform: scale(2.0) translateX(15px);" />
                </div>
				
                <input type="password" id="password1" name="password1" value="password" style="display: none;">
                <%--<div class="username"></div>--%>
                <div style="text-align: center;">
                    <asp:Button ID="Button1" type="submit" runat="server" onclick="Button1_Click" Text="立即登录" />
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="信息重置" ValidationGroup="1" />
                </div>
				<p class="info">
                    <asp:Label ID="Label1" runat="server" Text="亲，出错信息会在这里展示哦！"></asp:Label>
					<a href="register.aspx">注册</a>
				</p>
                <p>测试账号：admin，密码：123456789</p>
			</form>
		</div>
		<!--//End-login-form-->
		<div class="copy-right">
			<p><a> &nbsp;&nbsp;&nbsp;Copyright &copy; 2019</a></p>
		</div>
	</div>

    <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
</body>
</html>
