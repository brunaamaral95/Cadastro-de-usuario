<%
 
Dim conntemp

Sub Abre_Conexao
  Set conntemp = Server.CreateObject("ADODB.Connection") 
  conntemp.Open "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sysmestra;Password=mestrasys;Initial Catalog=treinamento_java;Data Source=192.100.100.59"
End Sub


Sub Fecha_Conexao
  conntemp.Close 
  Set conntemp = Nothing
End Sub

%>

