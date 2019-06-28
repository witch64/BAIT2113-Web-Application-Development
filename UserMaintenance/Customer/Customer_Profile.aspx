<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Profile.aspx.cs" Inherits="UserMaintenance.Customer_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="Registration_Data" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="Registration_Data">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                    <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                    <asp:BoundField DataField="POSTCODE" HeaderText="POSTCODE" SortExpression="POSTCODE" />
                    <asp:BoundField DataField="PWD" HeaderText="PWD" SortExpression="PWD" />
                    <asp:BoundField DataField="CONFIRM_PWD" HeaderText="CONFIRM_PWD" SortExpression="CONFIRM_PWD" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                    <asp:BoundField DataField="CREDIT_POINT" HeaderText="CREDIT_POINT" SortExpression="CREDIT_POINT" />
                </Columns>
            </asp:GridView>
            
        </div>
    </form>
</body>
</html>
