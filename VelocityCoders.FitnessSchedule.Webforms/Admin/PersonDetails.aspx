<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonDetails.aspx.cs" Inherits="VelocityCoders.FitnessSchedule.Webforms.Admin.PersonDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Person Details</h1></br>
        <a href="Index.aspx">Index</a>&nbsp;&nbsp;<a href="PersonList.aspx">Person List</a>
        </br>
        </br>
     <asp:Label runat="server" ID="message1" /></br>
        <b>Person Id:</b> &nbsp; <asp:Label runat="server" ID="personIdMessage" /> </br>
        <b>First Name:</b> &nbsp; <asp:Label runat="server" ID="firstNameMessage" /> </br>
        <b>Last Name:</b> &nbsp; <asp:Label runat="server" ID="lastNameMessage" /></br>
        <b>Preferred Name:</b> &nbsp; <asp:Label runat="server" ID="displayFirstNameMessage" /></br>
        <b>Gender:</b> &nbsp; <asp:Label runat="server" ID="genderMessage" /></br>
    </div>
    </form>
</body>
</html>
