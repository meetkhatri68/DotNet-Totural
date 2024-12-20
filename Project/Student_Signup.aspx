﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_site.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="TMS_Project.Student_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container" style="box-shadow:-3px 1px 11px 3px rgba(0,0,0,0.75);
-webkit-box-shadow: -3px 1px 11px 3px rgba(0,0,0,0.75);
-moz-box-shadow: -3px 1px 11px 3px rgba(0,0,0,0.75)";>
        <br />
        <div class="row">
            <div class="col-md-12">
            <h1 class="jumbotron bg-primary text-white text-center">Student SignUp</h1>
        </div>
        </div>
        <%-- <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Country Name is Required"></asp:RequiredFieldValidator>--%>
        <div class="row">
            <div class="col-md-4">

                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="FatherNameTextBox" CssClass="form-control" placeholder="Enter Father Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="FatherNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Father Name is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter Surname" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Surname Name is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                 <asp:RequiredFieldValidator InitialValue="Select Gender" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator14" runat="server" ErrorMessage="Gender is Required"></asp:RequiredFieldValidator>
                <br />
                 <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Age is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Should be Within 5 To 60" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="5" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                <br />
              <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Country Name is Required"></asp:RequiredFieldValidator>
                <%--<asp:DropDownList ID="CountryDropDownList" runat="server" CssClass="form-control"></asp:DropDownList>--%>
                </div>
            
            <div class="col-md-4">

                <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ErrorMessage="City Name is Required"></asp:RequiredFieldValidator>
               <%-- <asp:DropDownList ID="CityDropDownList" runat="server" CssClass="form-control"></asp:DropDownList>--%>
                <br />
                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="4" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                <br />
                 <asp:TextBox ID="StandardTextBox" CssClass="form-control" placeholder="Enter Standard" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="StandardTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Standard is Required "></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="GoingToDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select GoingTo</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>University</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select GoingTo" ControlToValidate="GoingToDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator15" runat="server" ErrorMessage="GoingTo is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="SubjectTextBox" CssClass="form-control" placeholder="Enter Subject" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="SubjectTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Subject is Required"></asp:RequiredFieldValidator>
                </div>

            <div class="col-md-4">
                <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Contact Number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Contact Number is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="TuitionDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tuition Type</asp:ListItem>
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Physical</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Tuition Type" ControlToValidate="TuitionDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator16" runat="server" ErrorMessage="Tuition is Required"></asp:RequiredFieldValidator>
                <br />
                 <asp:DropDownList ID="TutorPreferDropDownList" CssClass="form-control" runat="server">
                     <asp:ListItem>Select Tutor Preferred</asp:ListItem>
                     <asp:ListItem>Graduate</asp:ListItem>
                     <asp:ListItem>Masters</asp:ListItem>
                     <asp:ListItem>MPHIL</asp:ListItem>
                     <asp:ListItem>PHD</asp:ListItem>
                     <asp:ListItem>Computer Science</asp:ListItem>
                     <asp:ListItem>BCA</asp:ListItem>
                     <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Tutor Preferred" ControlToValidate="TutorPreferDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator17" runat="server" ErrorMessage="Tutor Preferred is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="UsernameTextBox" CssClass="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="UsernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator11" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="PasswordTextBox" CssClass="form-control" placeholder="Enter Password" TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Strong Password" ValidationExpression="^(?=^.{8,}$)((?=.*\d)|(?=.*\w+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator>

                <br />
                <asp:TextBox ID="ConfirmpasswordTextBox" CssClass="form-control" placeholder="Re-Enter Password" TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ConfirmpasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator13" runat="server" ErrorMessage="Please Enter Confirm Password"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmpasswordTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password Or Confirm Password Must be Same"></asp:CompareValidator>
                </div>
        </div>
        <br />

        <div class="row">
            <div class="col-md-6 mx-auto">
                <asp:Button ID="StudentSignUpButton" OnClick="StudentSignUpButton_Click" runat="server" Text="SignUp" CssClass="btn btn-primary btn-block" />
               <a href="Student_Signup.aspx" class="btn btn-success btn-block">SignUp As Student</a>
                <a href="Tutor_Signup.aspx" class="btn btn-info btn-block">SignUp As Tutor</a>
            </div>

            
        </div>
        <br />
    </div>
    <br />
</asp:Content>
