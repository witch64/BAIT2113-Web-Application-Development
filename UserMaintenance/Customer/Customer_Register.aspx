<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Register.aspx.cs" Inherits="UserMaintenance.Register_Artist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
        .auto-style2 {
            width: 200px;
        }
        .auto-style3 {
            height: 29px;
            width: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="name_txtBox" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="name_txtBox" ErrorMessage="Name is required !"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Username</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="username_txtBox" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username_txtBox" ErrorMessage="Username is required !"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Address</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="address_txtBox" runat="server" Height="80px" Width="180px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="address_txtBox" ErrorMessage="Address is required !"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Postcode</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="postcode_txtBox" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="postcode_txtBox" ErrorMessage="Postcode is required !"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="postcode_txtBox" ErrorMessage="Please enter only 6  number" ValidationExpression="[0-9]{5}"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td>Password</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="pwd_txtBox" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="pwd_txtBox" ErrorMessage="Passsword is required !"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Confirm Password</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="confirmpwd_txtBox" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="confirmpwd_txtBox" ErrorMessage="Confirm password is required !"></asp:RequiredFieldValidator><br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Not Match" ControlToCompare="pwd_txtBox" ControlToValidate="confirmpwd_txtBox"></asp:CompareValidator>
                        
                    </td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="email_txtBox" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="email_txtBox" ErrorMessage="Email is required !"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email_txtBox" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td>Country</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="country_ddl" runat="server" Width="180px">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>Malaysia</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                            <asp:ListItem>Korea</asp:ListItem>
                            <asp:ListItem>Taiwan</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="country_ddl" ErrorMessage="Please select country !" InitialValue="Select Country"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="register_btn" runat="server" Text="Register" OnClick="Button1_Click" Width="82px" />&nbsp; &nbsp;<input id="Reset1" type="reset" value="Reset" /> </td>
                    <td></td>
                </tr>
                
            </table>
        </div>
    </form>
</body>
</html>
