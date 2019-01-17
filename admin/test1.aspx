<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test1.aspx.cs" Inherits="admin_test1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link type="text/css" href="../Css/shutter.css" rel="Stylesheet" />
    <title></title>
    <%--//导入日期的脚本--%>
    <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js">
    </script>
    <style type="text/css">
        .style1
        {
            width: 1000px;
        }
        .style5
        {
            font-size: xx-large;
        }
    </style>
    <%--增加编辑器需要的样式和脚本--%>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../kindeditor/themes/default/default.css"/>
	<link rel="stylesheet" href="../kindeditor/plugins/code/prettify.css" />
	<script type="text/javascript" charset="utf-8" src="../kindeditor/kindeditor-all.js"></script>
	<script type="text/javascript" charset="utf-8" src="../kindeditor/lang/zh-CN.js"></script>
	<script type="text/javascript" charset="utf-8" src="../kindeditor/plugins/code/prettify.js"></script>
	<script type="text/javascript">
	    KindEditor.ready(function (K) {
	        var editor1 = K.create('#content1', {
	            cssPath: '../plugins/code/prettify.css',
	            uploadJson: '../asp.net/upload_json.ashx',
	            fileManagerJson: '../asp.net/file_manager_json.ashx',
	            allowFileManager: true,
	            afterCreate: function () {
	                var self = this;
	                K.ctrl(document, 13, function () {
	                    self.sync();
	                    K('form[name=example]')[0].submit();
	                });
	                K.ctrl(self.edit.doc, 13, function () {
	                    self.sync();
	                    K('form[name=example]')[0].submit();
	                });
	            }
	        });
	        prettyPrint();
	    });
	</script>

</head>
<body>
    <form id="example" runat="server">
    <div>
    
        <table align="center" border="0" cellpadding="0" cellspacing="1" class="style1" 
            bgcolor="#3399FF">
            <tr>
                <td colspan="2" height="80" bgcolor="White" class="style5" 
                    style="text-align: center">
                    校园新闻发布系统</td>
            </tr>
            <tr>
                <td colspan="2" height="120">
                    <img alt="" src="../images/61.jpg" width="1000" /></td>
            </tr>
            <tr>
                <td colspan="2" bgcolor="White" height="30">
                    &nbsp;</td>
            </tr>
            <tr bgcolor="White">
                <td height="200" align="left" valign="top" style="height: 600px" width="150">
                    <asp:TreeView ID="TreeView1" runat="server" ImageSet="News" NodeIndent="10" 
                        ShowLines="True">
                        <HoverNodeStyle Font-Underline="True" />
                        <Nodes>
                            <asp:TreeNode NavigateUrl="~/admin/Admin.aspx" Text="后台管理首页" Value="后台管理首页">
                            </asp:TreeNode>
                            <asp:TreeNode Text="返回首页" Value="返回首页" NavigateUrl="~/Default.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="用户注销" Value="用户注销" NavigateUrl="~/admin/Logout.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="用户信息管理" Value="用户信息管理">
                                <asp:TreeNode Text="查询信息" Value="查询信息" NavigateUrl="~/admin/SelUser.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="新增信息" Value="新增信息" NavigateUrl="~/admin/InSertUser.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="编辑信息" Value="编辑信息" NavigateUrl="~/admin/EditUser.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="删除信息" Value="删除信息" NavigateUrl="~/admin/DelUser.aspx"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="简讯信息管理" Value="简讯信息管理">
                            <asp:TreeNode Text="查询信息" Value="查询信息" NavigateUrl="~/admin/SelJianxun.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="新增信息" Value="新增信息" 
                                    NavigateUrl="~/admin/InSertJianxun2.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="编辑信息" Value="编辑信息" NavigateUrl="~/admin/EditJianxn.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="删除信息" Value="删除信息" NavigateUrl="~/admin/DelJianxun.aspx"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="公告信息管理" Value="公告信息管理">
                            <asp:TreeNode Text="查询信息" Value="查询信息" NavigateUrl="~/admin/SelGonggao.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="新增信息" Value="新增信息" 
                                    NavigateUrl="~/admin/InSertGonggao2.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="编辑信息" Value="编辑信息" NavigateUrl="~/admin/EditGonggao.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="删除信息" Value="删除信息" NavigateUrl="~/admin/DelGonggao.aspx"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="通知信息管理" Value="通知信息管理">
                            <asp:TreeNode Text="查询信息" Value="查询信息" NavigateUrl="~/admin/SelTongzhi.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="新增信息" Value="新增信息" 
                                    NavigateUrl="~/admin/InSertTongzhi2.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="编辑信息" Value="编辑信息" NavigateUrl="~/admin/EditTongzhi.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="删除信息" Value="删除信息" NavigateUrl="~/admin/DelTongzhi.aspx"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="学习信息管理" Value="学习信息管理">
                            <asp:TreeNode Text="查询信息" Value="查询信息" NavigateUrl="~/admin/SelStudy.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="新增信息" Value="新增信息" NavigateUrl="~/admin/InSertStudy2.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="编辑信息" Value="编辑信息" NavigateUrl="~/admin/EditStudy.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="删除信息" Value="删除信息" NavigateUrl="~/admin/DelStudy.aspx"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="学校要闻管理" Value="学校要闻管理">
                                <asp:TreeNode NavigateUrl="~/admin/SelNews.aspx" Text="查询信息" Value="查询要闻信息">
                                </asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/admin/InSertNews2.aspx" Text="新增信息" 
                                    Value="新增要闻信息"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/admin/EditNews.aspx" Text="编辑信息" Value="编辑要闻信息">
                                </asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/admin/DelNews.aspx" Text="删除信息" Value="删除要闻信息">
                                </asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Arial" Font-Size="14pt" ForeColor="Black" 
                            HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="2px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" 
                            VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td align="left" valign="top" width="850">
                <br />
                    <asp:Panel ID="Panel1" runat="server" GroupingText="新增通知信息">
        <br />
                        <table align="center">
                            <tr>
                                <td align="right" width="70">
                                    标题</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Width="590px" Font-Size="14pt"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="TextBox1" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="70">
                                    部门</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="14pt">
                                        <asp:ListItem>五邑大学</asp:ListItem>
                                        <asp:ListItem>经管学院</asp:ListItem>
                                        <asp:ListItem>信息学院</asp:ListItem>
                                        <asp:ListItem>机电学院</asp:ListItem>
                                        <asp:ListItem>数学学院</asp:ListItem>
                                        <asp:ListItem>物理学院</asp:ListItem>
                                        <asp:ListItem>政法学院</asp:ListItem>
                                        <asp:ListItem>艺术学院</asp:ListItem>
                                        <asp:ListItem>轨道学院</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="70">
                                    发布时间</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" class="Wdate" 
                                        onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm:ss'})" Font-Size="14pt"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="TextBox4" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="70">
                                    正文</td>
                                <td>
                                <textarea id="content1" cols="100" rows="8" style="width:600px;height:300px;visibility:hidden;" runat="server"></textarea>
                                    </td>
                            </tr>
                            <tr>
                                <td align="right" width="70">
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Font-Size="12pt" 
                                        onclick="Button1_Click" Text="新增信息" />
                                    &nbsp;<asp:Button ID="Button2" runat="server" Font-Size="12pt" 
                                        onclick="Button2_Click" Text="信息重置" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="70">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" width="70">
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" width="70">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="2" height="60" style="text-align: center; padding-top: 5px;" 
                    bgcolor="White"><a href="#" 
                        style="text-decoration: none; line-height: 30px; color: #000000;">版权所有：五邑大学经济管理学院电子商务专业</a><br />
                    网站当前的在线人数是：<asp:Label ID="Label5" runat="server"></asp:Label></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>