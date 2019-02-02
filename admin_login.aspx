<%@ Page Language="VB" AutoEventWireup="true" CodeFile="admin_login.aspx.vb" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   
    <meta charset="UTF-8">
    <%--<link rel="icon" href="<img src="image/logo.png" />--%>
    <title>Log in | Tourism</title>
    <link rel="shortcut icon" href="image/logo.png"> 
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.4 -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
  <body class="login-page">
    <div class="login-box">
      <div class="login-logo">
        <a href="admin_login.aspx"><b>Tourism</b><a />
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Sign in to start admin session</p>
        <form id="Form1"  runat="server">

           

          <div class="form-group has-feedback">        
            
          <asp:TextBox ID="txtuname" runat="server" class="form-control" placeholder="Username"
                  ></asp:TextBox>
              <%-- <input id="email" type="email" class="form-control" placeholder="Email" />--%>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
               <asp:RequiredFieldValidator ID="RFVName" runat="server" ErrorMessage="User Name is Required" ControlToValidate="txtuname" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
          <div class="form-group has-feedback">
             
          <asp:TextBox ID="txtpassword" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
              <%--<input id="password" type="password" class="form-control" placeholder="Password" />--%>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
              <asp:RequiredFieldValidator ID="RFVPassword" runat="server" ErrorMessage="Password is Required " ControlToValidate="txtpassword" ForeColor="#FF5050"></asp:RequiredFieldValidator>
          </div>
          <div class="row">
          
           
            <div class="col-xs-4">
              <asp:Button ID="btnsubmit" runat="server" Text="Submit" onclick="btnsubmit_Click" class="btn btn-primary btn-block btn-flat" 
              />
                <%-- <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>--%>
            </div><!-- /.col -->
          
        </form>

        </div><!-- /.col -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.4 -->
    <script src="../../plugins/jQuery/jQuery-2.1.4.min.js" type="text/javascript"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="../../plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <script>
        $(function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' // optional
            });
        });
    </script>
  </body>
</html>

