<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="TMS_Project.admin.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="~/dist/sweetalert2.min.css" rel="stylesheet" />
    <script src="../dist/sweetalert2.min.js"></script>

  <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin-top: 200px;
            background-image: url("https://th.bing.com/th/id/OIP.k-kkK9Nj9ZLjdBM06O_4bQHaEo?rs=1&pid=ImgDetMain");
     
        }
        form {
            border: 3px solid #f1f1f1;
            background-color: cadetblue;
            box-shadow: -1px 4px 30px 2px rgba(21,218,198,0.75);
-webkit-box-shadow: -1px 4px 30px 2px rgba(21,218,198,0.75);
-moz-box-shadow: -1px 4px 30px 2px rgba(21,218,198,0.75);
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
/*        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }*/
        .lgnbtn {
            background-color: crimson;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }
    </style>

 
</head>
<body>

    <form id="form1" runat="server" class="frmalg">
     <div class="container">
            <center>
                <h3 style="color : whitesmoke">&nbsp;Adimin Login</h3>
            </center>
            <label for="uname" style="color: whitesmoke"><b>Username</b></label>
            <asp:TextBox runat="server" ID="UsernameTxt"  placeholder="Enter Username"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UsernameTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Required Username"></asp:RequiredFieldValidator>
         <br />
         <label for="psw" style="color: whitesmoke"><b>Password</b></label>
            <asp:TextBox runat="server" ID="PasswordTxt" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="PasswordTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Required Password"></asp:RequiredFieldValidator>
            <asp:Button runat="server" ID="LoginBtn" OnClick="LoginBtn_Click" CssClass="lgnbtn" Text="Login" />
        </div>
    </form>
</body>
</html>
