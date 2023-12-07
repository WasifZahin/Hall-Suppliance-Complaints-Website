<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddSplCmpl.aspx.cs" Inherits="WebApplication1.AddSplCmpl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container text-center">
        <h1>Apply for Necessary Suppliance and Submit Your Complaints! </h1>

        <div class="row">
            <div class="col-md-6 mx-auto">
                
              

                <div class="form-group">
                    <label for="roll">Roll</label>
                    <asp:TextBox ID="roll" class="form-control" runat="server" autocomplete="off"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="name">Name</label>
                    <asp:TextBox ID="name" class="form-control" runat="server" autocomplete="off"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="room">Room No.</label>
                    <asp:TextBox ID="room" class="form-control" runat="server" autocomplete="off"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label for="splcmpl">Supply & Complaints</label>
                    <asp:TextBox ID="splcmpl" class="form-control" runat="server" autocomplete="off"></asp:TextBox>
                </div>

               <div style="display: flex; justify-content: center;">
    <asp:Button CssClass="btn btn-info" ID="addsplcmpl" runat="server" Text="Tap To Add" OnClick="SplcmplAddButton_Click" style="width: 150px;" />

</div>
                <asp:Button ID="LogoutButton" runat="server" Text="Logout" OnClick="LogoutButton_Click" CssClass="btn btn-danger mt-3 mb-1" style="margin-left: 11px;" />

            </div>
        </div>
    </div>
</asp:Content>
