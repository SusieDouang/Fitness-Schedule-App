<%@ Page Language="C#" 
    AutoEventWireup="true" 
    Theme="Main"
    CodeBehind="HTMLIntro.aspx.cs" 
    Inherits="VelocityCoders.FitnessSchedule.Webforms.HTMLIntro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Info Page</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width">

    <style>
        .greenBorder
        {
            border: 1px solid green;
            border-collapse: collapse;
        }
        .blueBorder
        {
            border: 1px solid blue;
        }
        .redBorder
        {
            border: 1px solid red;
        }
        .orangeBorder
        {
            border: 1px solid orange;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server" action="Thanks.aspx" method="get">
    <div>
    <b>Bold</b>
        <i>italic</i>
        <u>underline</u>
        <h1>heading 1</h1>
        <h2>heading 2</h2>
        <h3>heading 3</h3>
     </div>
        
        <div class="form">
                <form name="adminInput" action="thanks">
                    <div class="datagrid">
                        <table id="table1">
                            <caption>Administrator Input</caption>
                <tr>
        <thead>
            <tr>
                <th>
                    Item
                </th>
                <th>
                    Selection
                </th>
            </tr>
        </thead>
                <tbody>
                    <tr id="tr1">
                        <td>First Name:</td>
                        <td>
                            <input type='text' name='firstName' />
                            </td>
                </tr>
                <tr id="tr2">
                    <td>Last Name:</td>
                    <td>
                        <input type='text' name='lastName' />
                    </td>
                </tr>
                <tr>
                    <td>Pay Grade:</td>
                    <td><input type='text' name='payGrade'></td>
                </tr>
                <tr>
                    <td>Date of Hire:</td>
                    <td><input type='date' name='dateHire'</td>
                </tr>
                <tr>
                    <td>Date of Termination:</td>
                    <td><input type='date' name='dateTerm' /></td>
                </tr>
                <tr>
                <td colspan='2'>
                    <textarea name='comments' rows="10" cols="25">
                </textarea>
                    </td>
                 </tr>
                </tbody>
            </table>
            </div>
              <center><input type="submit" value="Submit Form" /></center>
        </form>
    </div>

        <tr>
            <td colspan='2'>
                Terminate Employee: <input type="checkbox" name="chkTerm" value="term">
            </td>
        </tr></br></br>
            <tr>
                <td>
                    Favorite Animal:</br>
                </td>
                <td>
                    <input type="radio" name="animal" value="cat" />Cat<br />
                    <input type="radio" name="animal" value="cat" />Dog<br />
                    <input type="radio" name="animal" value="cat" />Snake<br />
                    <input type="radio" name="animal" value="cat" />Mouse<br />
                </td>
            </tr></br></br>

        <tr>
            <td>
                Favorite Food:
            </td>
            <td>
                <select name="food">
                    <option value="chicken">Chicken</option>
                    <option value="popcorn">Popcorn</option>
                    <option value="pizza">Pizza</option>
                    <option value="seafood">Seafood</option>
                </select>
            </td>
        </tr></br></br>

    </br></br>
        <div>
        <center><a href="http://london.com"><img src="Images/london.jpg" alt="Background Image" height="500" /></img></a></center></br>
        <center><a href=http://london.com">London</a></center></br>
        <center><a href="soutsada.d@gmail.com">Email Susie Here</a></center>
        <center><h2>iFrame Example</h2></center>
        <center><iframe src="http://london.com/" width ="800" height ="500></iframe></center></br></br>
        </div>

        <ol>
            <li>First</li>
            <li>Second</li>
       </ol>

        <ul type="square">
            <li>First Bullet</li>
            <li>Second Bullet</li>
        </ul>

        <table border="1">
            <tr>
                <td>Column 1</td>
                <td>Column 2</td>
                <td>Column 3</td>
                <td>Column 4</td>
            </tr>
            <tr>
                <td>Data 1</td>
                <td>Data 2</td>
                <td colspan ='2'>Data 3</td>
            </tr>
        </table>

    </form>
</body>
</html>
