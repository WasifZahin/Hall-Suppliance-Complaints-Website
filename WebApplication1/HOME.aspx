<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="WebApplication1.HOME" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .background-image {
            background-image: url('rh.jpeg');
            background-size: cover;
            background-position: center;
            position: relative; 
            width: 100%;
            height: 100vh; 
            z-index: -1;
            opacity: 0.8;
        }

        .welcome-block {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .content-block {
            padding: 50px;
            background-color: rgba(128, 128, 128, 0.8);
            
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            color: white;
            position: relative;
            z-index: 1;
        }

        .content-block a {
            color: white; 
            
        }

        .row {
            display: flex;
            justify-content: space-between;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="background-image"></div>

    <div class="container text-center">
        <div class="welcome-block">
            <h1 class="mt-5">Welcome To Hall Suppliance & Complaints!</h1>

            <div class="row mt-4">
                <div class="col-md-3"></div>



                <div class="col-md-3"><a href="Login.aspx" class="btn btn-info btn-block">Login</a></div>
                
                <div class="col-md-3"></div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div id="contactInfo" class="col-md-6 content-block">
                <h2>Contact Information</h2>
                <p>Phone: <a href="tel:+8801902703327">+8801902703327</a></p>
                <p>Email: <a href="mailto:wzf8801@gmail.com">wzf8801@gmail.com</a></p>
            </div>

            <div id="about" class="col-md-6 content-block">
                <h2>About</h2>
                <p>This website will be very helpful to maintain a student hall. Hall officer can easily add new students, view, delete & update also. Students can apply for any suppliance if they need. They can also submit any complaints. Hall provost can see applications & complaints and take necessary actions accordingly. Provost can delete them after taking proper actions.</p>
            </div>
        </div>
    </div>

</asp:Content>
