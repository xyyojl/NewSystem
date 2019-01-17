<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户注册</title>
    <link href="./css/login.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .login-form span{
            font-size: 12px;
        }
    </style>
</head>
<body>
    <div class="main">
		<div class="login-form">
			<h1>用户注册</h1>
					<div class="head">
						<img src="images/user.png" alt=""/>
					</div>
                 <%--   AutoPostBack="True"  ontextchanged="TextBox1_TextChanged"--%>
				<form id="form1" runat="server">
                        <div class="username">
                            <label>用户名：</label>
                            <asp:TextBox ID="username" runat="server" placeholder="用户名" AutoPostBack="True" 
                                        ontextchanged="username_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="username" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                        </div>
                        <div class="password">
                            <label>密码：</label>
                            <asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="密码"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="password" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                        </div>
                        <div class="password">
                            <label>确认密码：</label>
                            <asp:TextBox ID="password1" runat="server" TextMode="Password" placeholder="确认密码"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="password1" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="password" ControlToValidate="password1" ErrorMessage="不一致"></asp:CompareValidator>
                        </div>
                        <div class="age">
                            <label>年龄：</label>
                            <asp:TextBox ID="age" runat="server" placeholder="年龄"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="age" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                        </div>
                        <div class="sex">
                            <label>性别：</label>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div class="roots">
                            <label> 籍贯：</label>
                            <asp:TextBox ID="roots" runat="server" placeholder="籍贯"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="roots" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                        </div>
                        <div class="emails">
                            <label>邮箱地址：</label>
                            <asp:TextBox ID="emails" runat="server" placeholder="邮箱地址"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="emails" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                ControlToValidate="emails" ErrorMessage="格式不对" 
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
						<div style="text-align: center;">
                            <asp:Button ID="Button1" type="submit" runat="server" onclick="Button1_Click" Text="立即注册" />
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                Text="信息重置" ValidationGroup="1" />
                        </div>
					    <p class="info">
                            <asp:Label ID="Label1" runat="server" Text="亲，出错信息会在这里展示哦！"></asp:Label>
					        <a href="login.aspx">去登录</a>
				        </p>
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
