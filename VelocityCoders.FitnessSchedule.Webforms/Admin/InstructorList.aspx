<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstructorList.aspx.cs" Inherits="VelocityCoders.FitnessSchedule.Webforms.Admin.InstructorList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
    <div>
        <h1>Instructor List</h1></br>
        <a href="Index.aspx">Index</a>
    <table>
        <asp:Repeater runat="server" ID="rptInstructorList">
            <HeaderTemplate>
                <tr>
                    <td>Instructor Id</td>
                    <td>Hire Date</td>
                    <td>First Name</td>
                    <td>&nbsp;</td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("InstructorId") %></td>
                    <td><%# Eval("HireDate") %></td>
                    <td><%# Eval("Description") %></td>                                                                   
                </tr>
            </ItemTemplate>
         </asp:Repeater>
       </table>
    </div>
    </form>
</body>
</html>
