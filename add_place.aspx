<%@ Page Language="VB" AutoEventWireup="false" Title="Add Place | Tourism" CodeFile="add_place.aspx.vb" masterpagefile="~/admin.master" Inherits="add_place" %>


<asp:Content ID="Content1" ContentPlaceHolderID ="maincontent" runat ="server" >
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
<h1>
Add place
<%--<small>Control panel</small>--%>
</h1>
<ol class="breadcrumb">
<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
<li class="active">Add Place</li>
</ol>
</section>
        <!-- Main content -->
        <section class="content">
<div class="row">

<div class="col-xs-12">
    <div class="box">
    <div class="box-header">
        <h3 class="box-title"><asp:Label ID="lbltitle" runat="server" Text="Add New place"></asp:Label></h3>
    </div><!-- /.box-header -->
    <div class="box-body">
        <table>
        <tr>
            <td>
                <label> Select Country</label>
                </td>
                <td>
             <asp:DropDownList ID="ddlcountrylist" runat="server"></asp:DropDownList>
             </td>
             </tr>


             <tr>
                <td>
                    <label>Place Name</label>
                </td>
                <td>
                    <label  style="margin-left:10px">
                    <asp:TextBox ID="txtname"  runat="server" placeholder="Enter Place Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" forecolor="Red" ErrorMessage="*" ></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="regexp1" runat="server" ErrorMessage="Please Enter Valid Characters: Alphabets and Space." ControlToValidate="txtname" ValidationExpression="^[a-zA-Z ]*$" />
                    <asp:Label ID="lblname" runat="server" Visible="false" Text="place Name Alreay Exists" />
                    </label>  
                </td>
            </tr>
            <tr>
                <td>
                    <label>Description</label>
                </td>
                <td>
                    <label  style="margin-left:10px">
                    <asp:textbox TextMode="MultiLine" ID="txtdescription"  runat="server" placeholder="Enter Place Description"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtdescription" forecolor="Red" ErrorMessage="*" ></asp:RequiredFieldValidator>
                        <asp:Label ID="Label1" runat="server" Visible="false" Text="place Name Alreay Exists" />
                    </label>  
                </td>
            </tr>
            
           <tr>
                <td>
                    <label>Opening Hours</label>
                </td>
                <td>
                    <label  style="margin-left:10px">
                    <asp:TextBox ID="txtopening_hours" Textmode="Time" runat="server" placeholder="Enter Place Opening Hours"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtopening_hours" forecolor="Red" ErrorMessage="*" ></asp:RequiredFieldValidator>
                        <asp:Label ID="Label2" runat="server" Visible="false" Text="place Name Alreay Exists" />
                    </label>  
                </td>
            </tr>
           
               <tr>
                <td>
                    <label>Lat</label>
                </td>
                <td>
                    <label  style="margin-left:10px">
                    <asp:TextBox ID="txtlat"  runat="server" placeholder="Enter Place Lat"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtlat" forecolor="Red" ErrorMessage="*" ></asp:RequiredFieldValidator>
                        <asp:Label ID="Label3" runat="server" Visible="false" Text="Place Name Alreay Exists" />
                    </label>  
                </td>
            </tr>
             <tr>
                <td>
                    <label>Lng</label>
                </td>
                <td>
                    <label  style="margin-left:10px">
                    <asp:TextBox ID="txtlng"  runat="server" placeholder="Enter Place Lng"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtlng" forecolor="Red" ErrorMessage="*" ></asp:RequiredFieldValidator>
                        <asp:Label ID="Label4" runat="server" Visible="false" Text="place Name Alreay Exists" />
                    </label>  
                </td>
            </tr>
             <tr>
                <td>
                    <label>Contact Info</label>
                </td>
                <td>
                    <label  style="margin-left:10px">
                    <asp:TextBox ID="txtcontact_info"  runat="server" placeholder="Enter Contact Info"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtcontact_info" forecolor="Red" ErrorMessage="*" ></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only Number Are Allowed & Lenght Must Be 10 Characters" ControlToValidate="txtcontact_info" ValidationExpression="^[0-9]{10}$" />
                    <asp:Label ID="Label5" runat="server" Visible="false" Text="place Name Alreay Exists" />
                    </label>  
                </td>
            </tr>
           
            <tr>
                <td>
                
                </td>
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