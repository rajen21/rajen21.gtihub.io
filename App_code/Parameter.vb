
Imports MySql.Data.MySqlClient
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web

''' <summary>
''' Summary description for Parameter
''' </summary>
Public Class Parameter

    Public Property name() As String
        Get
            Return m_name
        End Get
        Set
            m_name = Value
        End Set
    End Property
    Private m_name As String

    Public Property value() As String
        Get
            Return m_value
        End Get
        Set
            m_value = Value
        End Set
    End Property
    Private m_value As String

    Public Property type() As MySqlDbType
        Get
            Return m_type
        End Get
        Set
            m_type = Value
        End Set
    End Property
    Private m_type As MySqlDbType

    Public Sub New()
    End Sub

    Public Sub New(name As String, value As String, type As MySqlDbType)
        Me.name = name
        Me.value = value
        Me.type = type
    End Sub

End Class

'=======================================================
'Service provided by Telerik (www.telerik.com)
'Conversion powered by NRefactory.
'Twitter: @telerik
'Facebook: facebook.com/telerik
'=======================================================
