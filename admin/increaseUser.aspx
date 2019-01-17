<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="increaseUser.aspx.cs" Inherits="admin_increaseUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../css/login.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .login-form span{
            font-size: 12px;
        }
        .login-form {
            margin: 0 auto;
        }
        .info
        {
            margin-top: 12px;
        }
        #aspnetForm label {
            display: inline-block;
            width: 100px;
            text-align: right;
        }
        #ctl00_ContentPlaceHolder1_RadioButtonList1
        {
            display: inline-block;
        }
        #ctl00_ContentPlaceHolder1_RadioButtonList1_1,
        #ctl00_ContentPlaceHolder1_RadioButtonList1_0
        {
            width: auto;
        }
        #aspnetForm label[for="ctl00_ContentPlaceHolder1_RadioButtonList1_1"],
        #aspnetForm label[for="ctl00_ContentPlaceHolder1_RadioButtonList1_0"] {
            width: auto;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div class="main">
		<div class="login-form">
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
			</p>
	</form>
        </div>
    </div>
    
</asp:Content>


