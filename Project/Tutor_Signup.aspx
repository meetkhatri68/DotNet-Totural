<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_site.Master" AutoEventWireup="true" CodeBehind="Tutor_Signup.aspx.cs" Inherits="TMS_Project.Tutor_Signup" %>
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
            <h1 class="jumbotron bg-primary text-white text-center">Tutor SignUp</h1>
        </div>
        </div>
        <%-- <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Country Name is Required"></asp:RequiredFieldValidator>--%>
        <div class="row">
            <div class="col-md-4">

                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
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
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Should be Within 20 To 80" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="80" MinimumValue="20" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                <br />

                <asp:TextBox ID="EmailTextBox" CssClass="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage=" Email is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Email is  Invalidate" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />

                <asp:DropDownList ID="MaritalStatusDropDownList" CssClass="form-control" runat="server">
                <asp:ListItem>Select Status</asp:ListItem>
                <asp:ListItem>Single</asp:ListItem>
                <asp:ListItem>Engaged</asp:ListItem>
                <asp:ListItem>Married</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Status" ControlToValidate="MaritalStatusDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator18" runat="server" ErrorMessage="Status is Required"></asp:RequiredFieldValidator>
                
               <%--<asp:DropDownList ID="CountryDropDownList" runat="server" CssClass="form-control"></asp:DropDownList>--%>
                </div>
            
            <div class="col-md-4">

                <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Country Name is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ErrorMessage="City Name is Required"></asp:RequiredFieldValidator>
               <%-- <asp:DropDownList ID="CityDropDownList" runat="server" CssClass="form-control"></asp:DropDownList>--%>
                <br />

                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="6" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                <br />

               <asp:DropDownList ID="QualificationDropDownList" CssClass="form-control" runat="server">
               <asp:ListItem>Select Qualification</asp:ListItem>
                <asp:ListItem>Computer Science</asp:ListItem>
                <asp:ListItem>BCA</asp:ListItem>
                <asp:ListItem>Masters</asp:ListItem>
                <asp:ListItem>PHD</asp:ListItem>
                <asp:ListItem>Gradution</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Qualification" ControlToValidate="QualificationDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Qualification is Required"></asp:RequiredFieldValidator>

               </div>

            <div class="col-md-4">

                <asp:DropDownList ID="ExperienceDropDownList" CssClass="form-control" runat="server">
                <asp:ListItem>Select Experience</asp:ListItem>
                <asp:ListItem>1 Years</asp:ListItem>
                <asp:ListItem>2 Years</asp:ListItem>
                <asp:ListItem>3 years</asp:ListItem>
                <asp:ListItem>4 years</asp:ListItem>
                <asp:ListItem>5+ years</asp:ListItem>
                <asp:ListItem>8+ Years</asp:ListItem>
                <asp:ListItem>10+ years</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Experience" ControlToValidate="ExperienceDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Experience is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Contact Number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Contact Number is Required"></asp:RequiredFieldValidator>
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
                <asp:Button ID="TutorSignUpButton" OnClick="TutorSignUpButton_Click" runat="server" Text="SignUp" CssClass="btn btn-primary btn-block" />
                <a href="Student_Signup.aspx" class="btn btn-success btn-block">SignUp As Student</a>
                <a href="Tutor_Signup.aspx" class="btn btn-info btn-block">SignUp As Tutor</a>
            </div>
        </div>
        <br />
    </div>
    <br />


</asp:Content>
