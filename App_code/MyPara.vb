
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web

''' <summary>
''' Summary description for MyPara
''' </summary>
Public Class MyPara
    Public Sub New()

    End Sub

    Public Sub New(n As [String], v As [String], p As ParaType)

        Name = n
        Value = v

        PType = p
    End Sub
    Public Property Name() As[String]
        Get

            Return m_Name

        End Get

        Set
            m_Name = Value

        End Set

    End Property

    Private m_Name As[String]
    Public Property Value() As[String]
        Get

            Return m_Value

        End Get

        Set
            m_Value = Value

        End Set

    End Property

    Private m_Value As[String]
    Public Property PType() As ParaType

        Get
            Return m_PType
        End Get
        Set

            m_PType = Value
        End Set
    End Property
    Private m_PType As ParaType
End Class
Public Enum ParaType

    StringType = 1
	NumberType = 2
	DateType = 3
End Enum

'=======================================================
'Service provided by Telerik (www.telerik.com)
'Conversion powered by NRefactory.
'Twitter: @telerik
'Facebook: facebook.com/telerik
'=======================================================
