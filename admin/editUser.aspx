<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="editUser.aspx.cs" Inherits="admin_editUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="SqlDataSource1" 
        class="table table-bordered table-hover" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" Visible="False" />
            <asp:BoundField DataField="UserName"  HeaderText="用户名" 
                SortExpression="UserName" />
            <asp:BoundField DataField="Pwd" HeaderText="密码" SortExpression="Pwd" />
            <asp:BoundField DataField="NL" HeaderText="年龄" SortExpression="NL" />
            <asp:BoundField DataField="XB" HeaderText="性别" SortExpression="XB" />
            <asp:BoundField DataField="JG" HeaderText="籍贯" SortExpression="JG" />
            <asp:BoundField DataField="Email" HeaderText="邮箱地址" SortExpression="Email" />
            <asp:CommandField ShowEditButton="True" HeaderText="编辑" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:NewSystemConnectionString %>" 
        DeleteCommand="DELETE FROM [Admin] WHERE [ID] = @original_ID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Pwd] = @original_Pwd) OR ([Pwd] IS NULL AND @original_Pwd IS NULL)) AND (([NL] = @original_NL) OR ([NL] IS NULL AND @original_NL IS NULL)) AND (([XB] = @original_XB) OR ([XB] IS NULL AND @original_XB IS NULL)) AND (([JG] = @original_JG) OR ([JG] IS NULL AND @original_JG IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))" 
        InsertCommand="INSERT INTO [Admin] ([UserName], [Pwd], [NL], [XB], [JG], [Email]) VALUES (@UserName, @Pwd, @NL, @XB, @JG, @Email)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Admin]" 
        UpdateCommand="UPDATE [Admin] SET [UserName] = @UserName, [Pwd] = @Pwd, [NL] = @NL, [XB] = @XB, [JG] = @JG, [Email] = @Email WHERE [ID] = @original_ID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Pwd] = @original_Pwd) OR ([Pwd] IS NULL AND @original_Pwd IS NULL)) AND (([NL] = @original_NL) OR ([NL] IS NULL AND @original_NL IS NULL)) AND (([XB] = @original_XB) OR ([XB] IS NULL AND @original_XB IS NULL)) AND (([JG] = @original_JG) OR ([JG] IS NULL AND @original_JG IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_Pwd" Type="String" />
            <asp:Parameter Name="original_NL" Type="String" />
            <asp:Parameter Name="original_XB" Type="String" />
            <asp:Parameter Name="original_JG" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Pwd" Type="String" />
            <asp:Parameter Name="NL" Type="String" />
            <asp:Parameter Name="XB" Type="String" />
            <asp:Parameter Name="JG" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Pwd" Type="String" />
            <asp:Parameter Name="NL" Type="String" />
            <asp:Parameter Name="XB" Type="String" />
            <asp:Parameter Name="JG" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_Pwd" Type="String" />
            <asp:Parameter Name="original_NL" Type="String" />
            <asp:Parameter Name="original_XB" Type="String" />
            <asp:Parameter Name="original_JG" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>


