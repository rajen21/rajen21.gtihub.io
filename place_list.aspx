<%@ Page Language="VB" AutoEventWireup="false" Title="Places | Tourism" CodeFile="place_list.aspx.vb" masterpagefile="~/admin.master" Inherits="place_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="maincontent" runat ="server" >

      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
           Place List
            <%--<small>Control panel</small>--%>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">place list</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
             <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Manage Place</h3>
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

                 <label> Select Country</label>
                        <asp:DropDownList ID="ddlcountrylist" runat="server" AutoPostBack="True"></asp:DropDownList>&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsearch" Text="Filter" runat="server" />&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnadd" runat="server" Text="Add" />
                    

                 <div class="box-body table-responsive no-padding">
                     <asp:Label ID="lblerror" ForeColor="Red" runat="server"/>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
                    DataKeyNames="place_id" OnRowDataBound="GridView1_RowDataBound"
                         CssClass="table table-bordered table-hover" onrowdeleting="GridView1_RowDeleting" 
                         onrowediting="GridView1_RowEditing" >
                   
                        <Columns>
                        <asp:BoundField HeaderText="PLACE ID" DataField="place_id" />
                        <asp:BoundField HeaderText="PLACE NAME" DataField="name" />
                        <asp:BoundField HeaderText="DESCRIPTION" DataField="description" />
                         <asp:BoundField HeaderText="OPENING HOURS" DataField="opening_hours" />
                          <asp:BoundField HeaderText="LAT" DataField="lat" />
                           <asp:BoundField HeaderText="LNG" DataField="lng" />
                            <asp:BoundField HeaderText="CONTACT INFO" DataField="contact_info" />
                     
                             <asp:TemplateField>
                <ItemTemplate>
                    <a href='image_list.aspx?place_id=<%#Eval("place_id")  %>' >View Photo</a>
                </ItemTemplate>
            </asp:TemplateField>

                        <asp:TemplateField>
                <ItemTemplate>
                    <a href='add_image.aspx?place_id=<%#Eval("place_id")  %>' >Add Photo</a>
                </ItemTemplate>
            </asp:TemplateField>
                        
                         <asp:TemplateField>
                <ItemTemplate>
                    <a href='add_place.aspx?place_id=<%#Eval("place_id")  %>' >Edit</a>
                </ItemTemplate>
            </asp:TemplateField>
                        <asp:TemplateField >
                         <ItemTemplate>
                           <asp:LinkButton ID="LinkButton1" 
                           
                             CommandName="Delete" runat="server">
                             Delete</asp:LinkButton>
                         </ItemTemplate>
                       </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                 </div>
               </div><!-- /.box -->
            </div>
          </div>
        </section>
        </div>

    </asp:Content>