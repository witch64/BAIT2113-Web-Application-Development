<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Artist_Register.aspx.cs" Inherits="UserMaintenance.Artist.Artist_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 338px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            width: 338px;
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="name_txtbox" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required." ControlToValidate="name_txtbox"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Username</td>
                    <td>
                        <asp:TextBox ID="username_txtbox" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Username is required." ControlToValidate="username_txtbox"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">Workshop Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="workshopName_txtbox" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Workshop name is required." ControlToValidate="workshopName_txtbox"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="pwd_txtbox" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password is required." ControlToValidate="pwd_txtbox"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <asp:TextBox ID="confirmpwd_txtbox" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Corfirm password is required." ControlToValidate="confirmpwd_txtbox"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Not Match" ControlToCompare="pwd_txtbox" ControlToValidate="confirmpwd_txtbox"></asp:CompareValidator>
                        
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
                    </td>
                    <td class="auto-style1"></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td class="auto-style1"></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td class="auto-style1"></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td class="auto-style1"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
