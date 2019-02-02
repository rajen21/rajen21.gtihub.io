<%@ Page Language="VB" AutoEventWireup="true" Title="Users | Job Card" CodeFile="user_list.aspx.vb" MasterPageFile="~/admin.master" Inherits="user_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="maincontent" runat ="server" >

      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
           User List
            <%--<small>Control panel</small>--%>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">user list</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
             <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Manage User</h3>
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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
                    DataKeyNames="uid" OnRowDataBound="GridView1_RowDataBound"
                         CssClass="table table-bordered table-hover" onrowdeleting="GridView1_RowDeleting" 
                         onrowediting="GridView1_RowEditing" >
                   
                        <Columns>
                        <asp:BoundField HeaderText="ADMIN ID" DataField="uid" />
                        <asp:BoundField HeaderText="USER NAME" DataField="uname" />
                        <asp:BoundField HeaderText="PASSWORD" DataField="password" />
                     

                        
                        
                         <asp:TemplateField>
                <ItemTemplate>
                    <a href='user_add.aspx?uid=<%#Eval("uid")  %>' >Edit</a>
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