<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtName" runat="server" OnTextChanged="TextBox1_TextChanged" Width="302px"></asp:TextBox>
&nbsp;
        <asp:Button ID="btnSubmit" runat="server" BackColor="#009900" ForeColor="Yellow" OnClick="Button1_Click" Text="Submit" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mikesConString1 %>" SelectCommand="SELECT * FROM [Injection]"></asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
