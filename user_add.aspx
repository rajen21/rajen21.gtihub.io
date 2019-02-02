<%@ Page Language="VB" AutoEventWireup="true"  CodeFile="user_add.aspx.vb" MasterPageFile="~/admin.master" Inherits="user_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID ="maincontent" runat ="server" >
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
<h1>
ADD user
<%--<small>Control panel</small>--%>
</h1>
<ol class="breadcrumb">
<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
<li class="active">Add User</li>
</ol>
</section>
        <!-- Main content -->
        <section class="content">
<div class="row">

<div class="col-xs-12">
    <div class="box">
    <div class="box-header">
        <h3 class="box-title"><asp:Label ID="lbltitle" runat="server" Text="Add New User"></asp:Label></h3>
    </div><!-- /.box-header -->
    <div class="box-body">
        <table>
            <tr>
                <td>
                    <label>User name</label>
                </td>
                <td>
                    <label  style="margin-left:10px">
                    <asp:TextBox ID="txtuname" runat="server" placeholder="Enter User Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuname" forecolor="Red" ErrorMessage="*" ></asp:RequiredFieldValidator>
                        <asp:Label ID="lbluname" runat="server" Visible="false" Text="User Name Alreay Exists" />
                    </label>  
                </td>
            </tr>
            <tr>
                <td>
                    <label>Password</label>
                </td>
                <td>
                    <label style="margin-left:10px">
                    <asp:TextBox ID="txtpassword"  runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" forecolor="Red" ErrorMessage="*" ></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexp1" runat="server" ErrorMessage="Password Contain Alphabets & Numbers,Length Must be 7-10." ControlToValidate="txtpassword" ValidationExpression="^[a-zA-Z0-9\s]{7,10}$" />

                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Confirm Password</label>
                </td>
                <td>
                    <label style="margin-left:10px">
                    <asp:TextBox ID="txtcPassword"  runat="server" placeholder="Re-Enter Password" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtcPassword" forecolor="Red" ErrorMessage="*" ></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Password Contain Alphabets & Numbers,Length Must be 7-10." ControlToValidate="txtpassword" ValidationExpression="^[a-zA-Z0-9\s]{7,10}$" />
                    </label><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtcPassword" ControlToCompare="txtpassword" ErrorMessage="Password and confirm password must match"></asp:CompareValidator>
                </td>
            </tr>
          
           
             
            <tr>
                <td>
                
                </td>
                <td>
                    <asp:Button ID="btnadd" runat="server" Text="Add" onclick="btnadd_Click1" />
                    <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
                    <asp:Button ID="btnreset" runat="server" Text="Reset" onclick="btn_reset" />
                </td>
            </tr>
        </table>
        
          

        <div class="box-footer">
                   
        </div>
              
    </div><!-- /.box -->
</div>
</div>

</div>
</section>
    </div>
</asp:Content>

