<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
       <div class="container text-center">
        <h1>Welcome To Login</h1>

        <div class="row">
            <div class="col-md-6 mx-auto">
                
                <div class="form-group">
                    <label for="body_id">UserID</label>
                    <asp:TextBox ID="id" class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="body_pass">Password</label>
                    <asp:TextBox ID="pass" class="form-control" runat="server" autocomplete="off" TextMode="Password" ></asp:TextBox>
                </div>
                     <asp:Button CssClass="btn btn-info btn-block" ID="b"  runat="server" Text="Login"  OnClick="b_Click"/>
                </div>
            
        </div>
    </div>

</asp:Content>
