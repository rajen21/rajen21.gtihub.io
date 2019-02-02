<%@ Page Language="VB" AutoEventWireup="false" Title="Images | Tourism" CodeFile="image_list.aspx.vb" masterpagefile="~/admin.master" Inherits="image_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="maincontent" runat ="server" >

   <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
          Image List
            <%--<small>Control panel</small>--%>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">image list</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
             <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Manage Images</h3>
                  <div class="box-tools">
                    <%--  <div class="input-group">
                    <input type="text" name="table_search" class="form-control input-sm pull-right" placeholder="Search" />
                      </div>--%>
                      <br />
                      <div class="input-group-btn">
                      <%-- <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button> --%>
                        <%--<asp:Button Text="Add New User" CssClass="btn btn-sm btn-default" 
                              runat="server" id="btnaddnew" onclick="btnaddnew_Click" />--%>
                      </div>
                      
                   
                    
                  </div>
                </div><!-- /.box-header -->
                <br />
                 <div class="box-body table-responsive no-padding">
                        <label> Select Place</label>
                        <asp:DropDownList ID="ddlplacelist" runat="server"></asp:DropDownList>&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsearch" Text="Filter" runat="server" />&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnadd" runat="server" Text="Add" />
                        <asp:gridview ID="gvimagelist" AllowPaging="true" PageSize="6" AutoGenerateColumns="false" DataKeyNames="pimgid" runat="server" >
                        <columns>
                      
                       
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:TemplateField HeaderText="Photos" >
                        <itemtemplate>
                        <img  src='./images/<%#eval("photos") %>'height="100" width="100" />
                        <asp:HiddenField ID="hdn" runat="server" Value='<%#eval("photos") %>' />



                        </itemtemplate>
                        </asp:TemplateField>
                        
                        <asp:CommandField ShowDeleteButton="true" />


                        </columns>

                        </asp:gridview>
                 </div>
               </div><!-- /.box -->
            </div>
          </div>
        </section>
        </div>

</asp:Content>
