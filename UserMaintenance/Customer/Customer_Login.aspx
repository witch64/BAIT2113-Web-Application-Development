<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Login.aspx.cs" Inherits="UserMaintenance.Login_Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        CUSTOMER LOGIN</p>
    <div>
        <table>
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox ID="username_txtbox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username_txtbox" ErrorMessage="Username is required."></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="pwd_txtbox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd_txtbox" ErrorMessage="Password is required."></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <asp:Button ID="login_btn" runat="server" OnClick="login_btn_Click" Text="Login" />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Customer/Customer_Register.aspx">No Account. Sign Up now!</asp:HyperLink>
                </td>
                <td></td>
            </tr>

            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
