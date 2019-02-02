
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Public Partial Class admin
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        If (Session("uname") Is Nothing) Then

            Response.Redirect("admin_login.aspx")


        End If
    End Sub


    Protected Sub btnsignout_Click(sender As Object, e As EventArgs)
        Session.Abandon()
        Response.Redirect("admin_login.aspx")
	End Sub
End Class

'=======================================================
'Service provided by Telerik (www.telerik.com)
'Conversion powered by NRefactory.
'Twitter: @telerik
'Facebook: facebook.com/telerik
'=======================================================
