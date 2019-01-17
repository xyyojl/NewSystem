<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="increaseRecommend.aspx.cs" Inherits="admin_increaseRecommend" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--//导入日期的脚本--%>
    <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js">
    </script>
    <%--增加编辑器需要的样式和脚本--%>
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="../kindeditor/themes/default/default.css"/>
	<link rel="stylesheet" type="text/css" href="../kindeditor/plugins/code/prettify.css" />
    <style type="text/css">
        .table {
            width: 80%;
            max-width: 100%;
            margin: 0 auto 20px;
        }
        .table .first{
            width: 200px;
        }
        .table>tbody>tr>td
        {
            vertical-align: middle;
        }
        .table .form input
        {
            width: 80%;
            
        }
        #ctl00_ContentPlaceHolder1_TextBox4
        {
            padding: 20px;
        }
        input[type=submit] 
        {
            display: inline-block;
            padding: .3em .5em;
            background-image: linear-gradient(#ddd, #bbb);
            border: 1px solid rgba(0,0,0,.2);
            border-radius: .3em;
            box-shadow: 0 1px white inset;
            text-align: center;
            text-shadow: 0 1px 1px black;
            color:white;
            font-weight: bold;
        }
        input[type=submit]:hover
        {
            box-shadow: .05em .1em .2em rgba(0,0,0,.6) inset;
            border-color: rgba(0,0,0,.3);
            background: #bbb;    
        }
        /*33, 150, 243*/
    </style>
	<script type="text/javascript" charset="utf-8" src="../kindeditor/kindeditor-all.js"></script>
	<script type="text/javascript" charset="utf-8" src="../kindeditor/lang/zh-CN.js"></script>
	<script type="text/javascript" charset="utf-8" src="../kindeditor/plugins/code/prettify.js"></script>
	<script type="text/javascript">
	    KindEditor.ready(function (K) {
	        var editor1 = K.create('#ctl00_ContentPlaceHolder1_Textarea1', {
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
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <form id="example" runat="server">
    <div>
         <table class="table table-bordered table-hover">
            <tr>
                <td class="first">标题</td>
                <td class="form">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>作者</td>
                <td class="form">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    发布时间</td>
                <td class="form">
                    <asp:TextBox ID="TextBox4" runat="server" class="Wdate" 
                        onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm:ss'})" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    正文</td>
                <td>
                <textarea id="Textarea1" cols="100" rows="8" style="width:600px;height:300px;visibility:hidden;" runat="server"></textarea>
                    </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Size="12pt" 
                        onclick="Button1_Click" Text="新增信息" />
                    &nbsp;<asp:Button ID="Button2" runat="server" Font-Size="12pt" 
                        onclick="Button2_Click" Text="信息重置" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Label ID="Label1" runat="server" Text="亲，出错信息会在这里展示哦！"></asp:Label></td>
            </tr>
        </table>
    
    </div>
    </form>
</asp:Content>


