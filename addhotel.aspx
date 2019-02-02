<%@ Page Language="VB" AutoEventWireup="false" Title="Add Hotel | Tourism" CodeFile="addhotel.aspx.vb" masterpagefile="~/admin.master" Inherits="addhotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="maincontent" runat ="server" >
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
<h1>
Add New Hotel
<%--<small>Control panel</small>--%>
</h1>
<ol class="breadcrumb">
<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
<li class="active">Add Hotel</li>
</ol>
</section>
        <!-- Main content -->
        <section class="content">
<div class="row">

<div class="col-xs-12">
    <div class="box">
    <div class="box-header">
        <h3 class="box-title"><asp:Label ID="lbltitle" runat="server" Text="Add hotel"></asp:Label></h3>
    </div><!-- /.box-header -->
    <div class="box-body">
        <table>
        <tr>
                <td>
                    <label>Select Place</label>
                </td>
                <td>
                   
                    <asp:DropDownList ID="DropDownList1" runat="server"> 
        </asp:DropDownList>
                 
                
                </td>
            </tr>
                
            <tr>
                <td>
                    <label>Hotel Name</label>
                </td>
                <td>
                    <label  style="margin-left:10px">
                    <asp:TextBox ID="txtname"  runat="server" placeholder="Enter Hotel Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" forecolor="Red" ErrorMessage="*" ></asp:RequiredFieldValidator>
                        <asp:Label ID="lblname" runat="server" Visible="false" Text="Hotel Name Alreay Exists" />
                    </label>  
                </td>
            </tr>
            <br />
            <tr>
                <td>
                    <label>Description</label>
                </td>
                <td>
                    <label  style="margin-left:10px">
                    <asp:TextBox TextMode="MultiLine" ID="txtdescription"  runat="server" placeholder="Enter Place Description"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtdescription" forecolor="Red" ErrorMessage="*" ></asp:RequiredFieldValidator>
                    </label>  
                </td>
            </tr>
            
          
             <tr>
                <td>
                    <label>Contact Info</label>
                </td>
                <td>
                    <label  style="margin-left:10px">
                    <asp:TextBox ID="txtcontact_info" runat="server" placeholder="Enter Contact Info"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtcontact_info" forecolor="Red" ErrorMessage="*" ></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only Number Are Allowed & Lenght Must Be 10 Characters" ControlToValidate="txtcontact_info" ValidationExpression="^[0-9]{10}$" />

                        <asp:Label ID="Label5" runat="server" Visible="false" Text="place Name Alreay Exists" />
                    </label>  
                </td>
            </tr>
           
            <tr>
               
                <td>
                    <asp:Button ID="btnadd" runat="server" Text="Add" onclick="btnadd_Click1" />
                    <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
                    
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