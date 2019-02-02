
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

''' <summary>
''' Summary description for JQueryUtils
''' </summary>
Namespace Util
    Public Class JQueryUtils
        Public Shared Sub RegisterTextBoxForDatePicker(page As Page, ParamArray textBoxes As TextBox())
            RegisterTextBoxForDatePicker(page, "dd-mm-yy", textBoxes)
        End Sub
        Public Shared Sub RegisterTextBoxForDatePicker(page As Page, format As String, ParamArray textBoxes As TextBox())
            Dim allTextBoxNull As Boolean = True
            For Each textBox As TextBox In textBoxes
                If textBox IsNot Nothing Then
                    allTextBoxNull = False
                End If
            Next
            If allTextBoxNull Then
                Return
            End If
            page.ClientScript.RegisterClientScriptInclude(page.[GetType](), "jquery", "JQuery/jquery.js")
            page.ClientScript.RegisterClientScriptInclude(page.[GetType](), "jquery.ui.all", "JQuery/ui/jquery.ui.all.js")
            page.ClientScript.RegisterClientScriptBlock(page.[GetType](), "datepickerCss", "<link  rel=""stylesheet"" href=""JQuery/themes/" + "flora/flora.datepicker.css"" />")
            Dim sb As New StringBuilder()
            sb.Append("$(document).ready(function() {")
            For Each textBox As TextBox In textBoxes
                If textBox IsNot Nothing Then


                    'sb.Append("$('#" + textBox.ClientID + "').datepicker(
                    '   {
                    'dateFormat: \"" + format + "\"});");
                    sb.Append((Convert.ToString("$('#" + textBox.ClientID + "').datepicker({dateFormat:""") & format) + """});")
                End If
            Next
            sb.Append("});")
            page.ClientScript.RegisterClientScriptBlock(page.[GetType](), "jQueryScript", sb.ToString(), True)
        End Sub
    End Class
End Namespace

'=======================================================
'Service provided by Telerik (www.telerik.com)
'Conversion powered by NRefactory.
'Twitter: @telerik
'Facebook: facebook.com/telerik
'=======================================================
