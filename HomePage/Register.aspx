<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HomePage.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
        font-size: x-large;
    }
        .auto-style14 {
        font-size: x-large;
        width: 125px;
    }
        .auto-style15 {
            width: 125px;
        height: 37px;
        font-size: x-large;
    }
        .auto-style16 {
            width: 131px;
        }
        .auto-style18 {
        font-size: x-large;
        width: 120px;
    }
        
        .auto-style21 {
            font-size: medium;
            border: 2px solid black;
        font-weight: bold;
    }

    .auto-style23 {
        width: 100%;
        height: 367px;
        font-size: xx-small;
            margin-bottom: 13px;
        }
    .auto-style24 {
        font-size: x-large;
        width: 125px;
        height: 36px;
    }
    .auto-style25 {
        height: 36px;
    }
    .auto-style26 {
        font-size: x-large;
        width: 125px;
        height: 27px;
    }
    .auto-style27 {
        height: 27px;
    }
    .auto-style28 {
        height: 37px;
    }
    .table{
        color:white;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    



    <div class="table">
    <table class="auto-style23" >
        <tr>
            <td class="auto-style18">
                <p class="auto-style11">
                    <strong>First Name</p>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Width="150px" CssClass="auto-style11" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Last Name</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Width="150px" CssClass="auto-style11" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Gender</strong></td>
            <td class="auto-style16">
                <strong">
                <asp:DropDownList ID="Text1" runat="server" AutoPostBack="True" CssClass="auto-style21" Height="25px" Width="155px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                </strong>
            </td>
            
        </tr>
    
        <tr>
            <td class="auto-style14">
                <p class="auto-style11">
                    <strong>ID</strong></p>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" Width="150px" CssClass="auto-style11" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Contry</strong></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" Width="150px" CssClass="auto-style11" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><strong>Address</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" Width="150px" CssClass="auto-style11" Height="25px"></asp:TextBox>
            </td>
        </tr>
    
        <tr>
            <td class="auto-style15">
                <p class="auto-style11">
                    <strong>Phone</strong></p>
            </td>
            <td class="auto-style28">
                <asp:TextBox ID="TextBox7" runat="server" BorderStyle="Solid" Width="150px" CssClass="auto-style11" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>E-Mail</strong></td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox8" runat="server" BorderStyle="Solid" Width="150px" CssClass="auto-style11" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>About You</strong></td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" BorderStyle="Solid" Width="150px" CssClass="auto-style11" Height="25px"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="ClickO" runat="server" OnClick="ClickO_Click" Text="Submit" Width="124px" Font-Size="18pt" />
            </td>
        </tr>
    </table>
    </div>




</asp:Content>
