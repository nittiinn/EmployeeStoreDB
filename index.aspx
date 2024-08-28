<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: #2F3645;
            height: 100%;
            width: 100%;
            background-color: #F7F9F2;
        }
        .container {
            max-height: 100%;
            width: 50%;
            background-color: #EEEEEE;
            border-radius: 5%;
            border: 1px solid black;
            box-shadow: rgba(50, 50, 93, 0.25) 0px 30px 60px -12px inset, rgba(0, 0, 0, 0.3) 0px 18px 36px -18px inset;
        }

        .btn {
            font-family: inherit;
            font-weight: 500;
            font-size: 16px;
            margin:10px;
            padding: 0.7em 1.4em 0.7em 1.1em;
            color: white;
            background: #ad5389;
            background: linear-gradient(0deg, rgba(20,167,62,1) 0%, rgba(102,247,113,1) 100%);
            border: none;
            box-shadow: 0 0.7em 1.5em -0.5em #14a73e98;
            letter-spacing: 0.05em;
            border-radius: 20em;
            cursor: pointer;
            user-select: none;
            touch-action: manipulation;
        }

        .btn:hover {
            background-color:dodgerblue;
            box-shadow: 0 0.5em 1.5em -0.5em #14a73e98;
        }

        .container .title {
            background-color: #008000;
            box-shadow: gray 0px -50px 36px -28px inset;
            border-radius: 25%;
            width: 100%;
            max-height: 100px;
            background-color: aliceblue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="title text-center">
                <h2>Employee Register</h2>
            </div>
            <div class="form-group">
                <label for="txtFirstName">First Name:</label>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="Please Fill this" ForeColor="Red" ControlToValidate="txtFirstName" runat="server"></asp:RequiredFieldValidator>

            </div>
            <div class="form-group">
                <label for="txtLastName">Last Name:</label>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="Please Fill this" ForeColor="Red" ControlToValidate="txtLastName" runat="server"></asp:RequiredFieldValidator>

            </div>
            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RegularExpressionValidator ID="Revor" runat="server"
                ControlToValidate="txtEmail" ErrorMessage="Invalid Email"
                ValidationExpression="^([a-z-0-9]+[@]{1}[a-z]{5}.[a-z]{3})$" ForeColor="Red">
            </asp:RegularExpressionValidator>
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="text-center">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary w-25" />
            </div>

            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="UserId">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("UserId") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FirstName">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("FirstName") %>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="LastName">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("LastName") %>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Email") %>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
