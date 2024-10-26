<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_site.Master" AutoEventWireup="true" CodeBehind="Tutor_Login.aspx.cs" Inherits="TMS_Project.Tutor_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <br />
    <center>
   <div class="container">

       <div class="row">
           <div class ="col-md-4 mx-auto" style="box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75);
-webkit-box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75);
-moz-box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75);">
               <br />
               <div class="jumbotron text-white bg-primary">
                   <h2>Tutor Login</h2>
               </div>
                  <asp:TextBox runat="server" ID="UsernameTxt"  placeholder="Enter Username" CssClass="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UsernameTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Required Username"></asp:RequiredFieldValidator>
                  <br />
                  <asp:TextBox runat="server" ID="PasswordTxt" TextMode="Password" placeholder="Enter Password" CssClass="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="PasswordTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Required Password"></asp:RequiredFieldValidator>
               <br />
                 <asp:Button runat="server" ID="Tutor_LoginBtn" OnClick="Tutor_LoginBtn_Click" Text="Login" CssClass="btn btn-primary btn-block" />
               
               <div class="text-center">

                   <a href="Student_Login.aspx" class="text-center">Login As Student</a>
               </div>
               <br />
           </div>
       </div>
   </div>
    <br />
 </center>

</asp:Content>
