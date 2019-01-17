<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="queryTechnology.aspx.cs" Inherits="admin_queryTechnology" %>

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
            </asp:BoundField>
            <asp:BoundField DataField="Title" HeaderText="标题" 
                SortExpression="Title" >
            </asp:BoundField>
            <asp:BoundField DataField="Author" HeaderText="作者" 
                SortExpression="Author" />
            <asp:BoundField DataField="Time" HeaderText="发布时间" SortExpression="Time" />
            <asp:BoundField DataField="Content" HeaderText="具体内容" 
                SortExpression="Content" />
            <asp:BoundField DataField="PageCount" HeaderText="浏览次数" 
                SortExpression="PageCount" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NewSystemConnectionString %>" 
        SelectCommand="SELECT * FROM [technology]" 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [technology] WHERE [ID] = @original_ID AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Author] = @original_Author) OR ([Author] IS NULL AND @original_Author IS NULL)) AND (([Time] = @original_Time) OR ([Time] IS NULL AND @original_Time IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL)) AND (([PageCount] = @original_PageCount) OR ([PageCount] IS NULL AND @original_PageCount IS NULL))" 
        InsertCommand="INSERT INTO [technology] ([Title], [Author], [Time], [Content], [PageCount]) VALUES (@Title, @Author, @Time, @Content, @PageCount)" 
        OldValuesParameterFormatString="original_{0}" 
        UpdateCommand="UPDATE [technology] SET [Title] = @Title, [Author] = @Author, [Time] = @Time, [Content] = @Content, [PageCount] = @PageCount WHERE [ID] = @original_ID AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Author] = @original_Author) OR ([Author] IS NULL AND @original_Author IS NULL)) AND (([Time] = @original_Time) OR ([Time] IS NULL AND @original_Time IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL)) AND (([PageCount] = @original_PageCount) OR ([PageCount] IS NULL AND @original_PageCount IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_Author" Type="String" />
            <asp:Parameter Name="original_Time" Type="DateTime" />
            <asp:Parameter Name="original_Content" Type="String" />
            <asp:Parameter Name="original_PageCount" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Time" Type="DateTime" />
            <asp:Parameter Name="Content" Type="String" />
            <asp:Parameter Name="PageCount" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Time" Type="DateTime" />
            <asp:Parameter Name="Content" Type="String" />
            <asp:Parameter Name="PageCount" Type="Int32" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_Author" Type="String" />
            <asp:Parameter Name="original_Time" Type="DateTime" />
            <asp:Parameter Name="original_Content" Type="String" />
            <asp:Parameter Name="original_PageCount" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>


