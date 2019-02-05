Attribute VB_Name = "Module2"
Sub Stockdatatotal()

' Will loop through all the sheets
Dim WS As Worksheet
For Each WS In ActiveWorkbook.Worksheets
WS.Activate

' Determine the Last Row
LastRow = WS.Cells(Rows.Count, 1).End(xlUp).Row

' Insert headings
Cells(1, "I").Value = "Ticker"
Cells(1, "J").Value = "Total Stock Volume"


Dim Open_Price As Double
Dim Close_Price As Double


Dim Ticker_Name As String


Dim Volume As Double
Volume = 0
Dim Row As Double
Row = 2
Dim Column As Integer
Column = 1
Dim i As Long


Open_Price = Cells(2, Column + 2).Value

' Loop through all ticker symbols
For i = 2 To LastRow

If Cells(i + 1, Column).Value <> Cells(i, Column).Value Then

Ticker_Name = Cells(i, Column).Value

Cells(Row, Column + 8).Value = Ticker_Name

Volume = Volume + Cells(i, Column + 6).Value

Cells(Row, Column + 9).Value = Volume

Row = Row + 1

Open_Price = Cells(i + 1, Column + 2)

Volume = 0

Else
Volume = Volume + Cells(i, Column + 6).Value

End If

Next i

Next WS

End Sub


