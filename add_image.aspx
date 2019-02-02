<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/admin.master" Title="Add Image | Tourism" CodeFile="add_image.aspx.vb" Inherits="add_image" %>


<asp:Content ID="Content1" ContentPlaceHolderID ="maincontent" runat ="server" >
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
<h1>
Add New Image
<%--<small>Control panel</small>--%>
</h1>
<ol class="breadcrumb">
<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
<li class="active">Add Image</li>
</ol>
</section>
        <!-- Main content -->
        <section class="content">
<div class="row">

<div class="col-xs-12">
    <div class="box">
   
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

                <td>Select Image</td>
                <td>
                    <label style="margin-left:10px">
                    <asp:FileUpload ID="fileupload1" runat="server" />
                 

                    </label>
                </td>
            </tr>
            <tr>
             <td>
                     
            
            </td>
            <td>
              <asp:Button ID="Button1" runat="server" Text="Upload" />
            </td>
            </tr>
           </table>
            
    </div>
    </div>
    

           

    </div>
    </div>
    </div>
</asp:Content>
