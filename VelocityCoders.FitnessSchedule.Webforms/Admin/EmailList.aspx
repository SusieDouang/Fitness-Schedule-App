<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmailList.aspx.cs" Inherits="VelocityCoders.FitnessSchedule.Webforms.Admin.EmailList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
    <div>
        <h1>Email List</h1></br>
        <a href="Index.aspx">Index</a>
    <table>
        <asp:Repeater runat="server" ID="rptEmailList">
            <HeaderTemplate>
                <tr>
                    <td>Email Id</td>
                    <td>Email Address</td>
                    <td>&nbsp;</td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("EmailId") %></td>
                    <td><%# Eval("EmailAddress") %></td>                                                               
                </tr>
            </ItemTemplate>
         </asp:Repeater>
       </table>
    </div>
    </form>
</body>
</html>
