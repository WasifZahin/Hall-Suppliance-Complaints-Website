<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="WebApplication1.AddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <div class="container text-center">

          <h1>WELCOME !</h1>
        <h2>Add a student</h2>

        <div class="row">
            <div class="col-md-6 mx-auto">
                
                <div class="form-group">
                    <label for="userid">UserID</label>
                    <asp:TextBox ID="id" class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <asp:TextBox ID="pass" class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="name">Name</label>
                    <asp:TextBox ID="name" class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="roll">Roll</label>
                    <asp:TextBox ID="roll" class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="boarder">Boarder</label>
                    <asp:TextBox ID="boarder" class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="room">Room No.</label>
                    <asp:TextBox ID="room" class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <label for="year">Year</label>
                        <asp:DropDownList CssClass="form-control" ID="year" runat="server">
                            <asp:ListItem Value="1st">1st</asp:ListItem>
                            <asp:ListItem Value="2nd">2nd</asp:ListItem>
                            <asp:ListItem Value="3rd">3rd</asp:ListItem>
                            <asp:ListItem Value="4th">4th</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-6">
                         <label for="term">Term</label>
                        <asp:DropDownList CssClass="form-control" ID="term" runat="server">
                            <asp:ListItem Value="1st">1st</asp:ListItem>
                            <asp:ListItem Value="2nd">2nd</asp:ListItem>
                        </asp:DropDownList>
                    </div>
<div style="text-align: center;">
    <asp:Button CssClass="btn btn-info mt-2" ID="addstu" runat="server" Text="Tap To Add" OnClick="StuAddButton_Click" style="width: 150px; margin-left: 210px;" />
</div>


<asp:Button CssClass="btn btn-info btn-block mt-4" ID="viewstu" runat="server" Text="View, Delete Student's Info" OnClick="view_Click" />
<asp:Button CssClass="btn btn-info btn-block mb-1" ID="upb" runat="server" Text="Update Student's Info" OnClick="up_Click" />
                    <asp:Button ID="LogoutButton" runat="server" Text="Logout" OnClick="LogoutButton_Click" CssClass="btn btn-danger mb-1" style="margin-left: 245px;" />



                </div>
            </div>
        </div>
    </div>
</asp:Content>
