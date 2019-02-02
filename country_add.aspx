<%@ Page Language="VB" AutoEventWireup="false" Title="Add Country | Tourism" CodeFile="country_add.aspx.vb" MasterPageFile="~/admin.master" Inherits="place_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID ="maincontent" runat ="server" >
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
<h1>
Add Country
<%--<small>Control panel</small>--%>
</h1>
<ol class="breadcrumb">
<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
<li class="active">Add Country</li>
</ol>
</section>
        <!-- Main content -->
        <section class="content">
<div class="row">

<div class="col-xs-12">
    <div class="box">
    <div class="box-header">
        <h3 class="box-title"><asp:Label ID="lbltitle" runat="server" Text="Add New Country"></asp:Label></h3>
    </div><!-- /.box-header -->
    <div class="box-body">
        <table>
           
            <tr>
                <td>
                    <label>County Name</label>
                </td>
                <td>
                    <label style="margin-left:10px">
                    <asp:TextBox ID="txtcname"  runat="server" placeholder="Enter Country Name" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtcname" forecolor="Red" ErrorMessage="*" ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="only alphabet are allowed" ControlToValidate="txtcname" ValidationExpression="^[a-zA-Z'.\s]{1,40}$" />

                    </label>
                </td>
            </tr>
            
          
           
             
            <tr>
                <td>
                
                </td>
                <td>
                    <asp:Button ID="btnadd" runat="server" Text="Add" onclick="btnadd_Click1" 
                        Height="26px" />
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



