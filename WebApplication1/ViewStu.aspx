<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewStu.aspx.cs" Inherits="WebApplication1.ViewStu"
 %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
        <h1 class="text-center">All Student's Info</h1>

        <div class="row">
            <div class="col-md-8 mx-auto">
                <asp:GridView ID="StuGridView" CssClass="table" runat="server" AutoGenerateColumns="false" OnRowCommand="StuGridView_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:BoundField DataField="roll" HeaderText="Roll" />
                        <asp:BoundField DataField="boarder" HeaderText="Boarder" />
                        <asp:BoundField DataField="room" HeaderText="Room No. " />
                        <asp:BoundField DataField="year" HeaderText="Year" />
                        <asp:BoundField DataField="term" HeaderText="Term" />
                       
                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                
                                <asp:LinkButton ID="DeleteLinkButton" CommandName="del" CommandArgument='<%#Eval("roll") %>' onclientclick="return confirm('Are you sure to delete?');" runat="server">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
