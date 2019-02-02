<%@ Page Language="VB" AutoEventWireup="false" Title="Hotels | Tourism" CodeFile="hotellist.aspx.vb" masterpagefile="~/admin.master" Inherits="hotellist" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="maincontent" runat ="server" >

      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
           Hotel List
            <%--<small>Control panel</small>--%>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Hotel List</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
             <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Manage Hotels</h3>
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
                     <asp:Label ID="lblerror" ForeColor="Red" runat="server"/>

                      <label> Select Place</label>
                        <asp:DropDownList ID="ddlplacelist" runat="server"></asp:DropDownList>&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsearch" Text="Filter" runat="server" />&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnadd" runat="server" Text="Add" />
                        

                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
                    DataKeyNames="hid" OnRowDataBound="GridView1_RowDataBound"
                         CssClass="table table-bordered table-hover" onrowdeleting="GridView1_RowDeleting" 
                         onrowediting="GridView1_RowEditing" >
                   
                        <Columns>
                        <asp:BoundField HeaderText="HID" DataField="hid" />
                        <asp:BoundField HeaderText="HOTEL NAME" DataField="name" />
                        <asp:BoundField HeaderText="DESCRIPTION" DataField="description" />
                        <asp:BoundField HeaderText="PLACE" DataField="place" />
                        <asp:BoundField HeaderText="CONTACT INFO" DataField="contactinfo" />
                            
                            
                    <asp:TemplateField>
                <ItemTemplate>
                    <a href='addhotel.aspx?hid=<%#Eval("hid")  %>' >Edit</a>
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
