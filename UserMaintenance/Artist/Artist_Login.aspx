<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Artist_Login.aspx.cs" Inherits="UserMaintenance.Artist.Artist_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        ARTIST LOGIN<br />

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
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Artist/Artist_Register.aspx">No Account? Sign Up Now!</asp:HyperLink>
                </td>
                <td></td>
            </tr>
        </table>
    </form>
</body>
</html>
