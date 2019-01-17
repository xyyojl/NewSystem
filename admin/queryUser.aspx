<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="queryUser.aspx.cs" Inherits="admin_queryUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
    ForeColor="#333333" GridLines="None" AllowPaging="True" 
     AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" class="table table-bordered table-hover">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" Visible="False" >
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="UserName" HeaderText="用户名" 
                SortExpression="UserName" >
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Pwd" HeaderText="密码" SortExpression="Pwd" />
            <asp:BoundField DataField="NL" HeaderText="年龄" SortExpression="NL" />
            <asp:BoundField DataField="XB" HeaderText="性别" SortExpression="XB" />
            <asp:BoundField DataField="JG" HeaderText="籍贯" SortExpression="JG" />
            <asp:BoundField DataField="Email" HeaderText="邮箱地址" SortExpression="Email" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NewSystemConnectionString %>" 
        SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>
    </form>
</asp:Content>


