<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelloWorld.aspx.cs" Inherits="FitnessSchedule.WebForms.HelloWorld" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type =" "text/javascript">
        //notes: set value to an integer value
        var myAge = 30;
        alert(myAge); 

        //notes: set value to a string value
        myAge = "Thirty"; 
        alert(myAge); 
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Hello World!
        <br />
        <asp:Label runat="server" ID ="lblDisplayMessage" />
    </div>
    </form>
</body>
</html>
