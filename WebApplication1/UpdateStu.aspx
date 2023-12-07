<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateStu.aspx.cs" Inherits="WebApplication1.UpdateStu"
 %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container text-center">
        <h1>Update Information of the Roll You Enter Below </h1>

        <div class="row">
            <div class="col-md-6 mx-auto">

                 <div class="form-group">
                    <label for="roll">Roll</label>
                    <asp:TextBox ID="roll" class="form-control" runat="server"></asp:TextBox>
                </div>
                
                <div class="form-group">
                    <label for="userid">UserID</label>
                    <asp:TextBox ID="id" class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="name">Name</label>
                    <asp:TextBox ID="name" class="form-control" runat="server"></asp:TextBox>
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

                    <asp:Button CssClass="btn btn-info btn-block mt-4 mb-1" ID="StuButton" runat="server" Text="Update Info" OnClick="UpdateButton_Click" />

                </div>
            </div>
        </div>
    </div>
</asp:Content>