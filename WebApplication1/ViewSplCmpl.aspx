<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewSplCmpl.aspx.cs" Inherits="WebApplication1.ViewSplCmpl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">

          <h1 class="text-center">WELCOME SIR !</h1>
        <h2 class="text-center">All Supply Application and Complaints</h2>

        <div class="row">
            <div class="col-md-8 mx-auto">
                <asp:GridView ID="SplCmplGridView" CssClass="table" runat="server" AutoGenerateColumns="false" OnRowCommand="SplCmplGridView_RowCommand">
                    <Columns>
                       
                        <asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="roll" HeaderText="Roll" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:BoundField DataField="room" HeaderText="Room No." />
                        <asp:BoundField DataField="splcmpl" HeaderText="Application & Complaints" />
                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                <asp:LinkButton ID="dlt" CommandName="del" CommandArgument='<%#Eval("ID") %>' onclientclick="return confirm('Do you really want to delete ?');" runat="server">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Button ID="LogoutButton" runat="server" Text="Logout" OnClick="LogoutButton_Click" CssClass="btn btn-danger  mb-1" style="margin-left: 320px;" />
            </div>
        </div>
    </div>
</asp:Content>
