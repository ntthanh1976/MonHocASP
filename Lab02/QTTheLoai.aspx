<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QTTheLoai.aspx.cs" Inherits="Lab02.QTTheLoai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="w-50">
            <asp:SqlDataSource ID="dsTheLoai" runat="server" 
                ConnectionString="<%$ ConnectionStrings:TinTucDBConnectionString %>" 
                DeleteCommand="DELETE FROM [TheLoai] WHERE [Id] = @Id" 
                InsertCommand="INSERT INTO [TheLoai] ([TenTheLoai], [TrangThai]) VALUES (@TenTheLoai, @TrangThai)"
                SelectCommand="SELECT * FROM [TheLoai]" 
                UpdateCommand="UPDATE [TheLoai] SET [TenTheLoai] = @TenTheLoai, [TrangThai] = @TrangThai WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TenTheLoai" Type="String" />
                    <asp:Parameter Name="TrangThai" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenTheLoai" Type="String" />
                    <asp:Parameter Name="TrangThai" Type="Boolean" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gvLoaiTin" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="dsTheLoai">
                <Columns>
                  
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="TenTheLoai" HeaderText="Tên thể loại" SortExpression="TenTheLoai" />
                    <asp:CheckBoxField DataField="TrangThai" HeaderText="Trạng thái" SortExpression="TrangThai" />
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <HeaderStyle CssClass="alert alert-info" />
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
