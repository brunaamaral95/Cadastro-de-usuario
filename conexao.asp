<%
 
Dim conn

Sub Abre_Conexao
  Set conn = Server.CreateObject("ADODB.Connection") 
  conn.Open "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sysmestra;Password=mestrasys;Initial Catalog=treinamento_java;Data Source=192.100.100.59"
End Sub


Sub Fecha_Conexao
  conn.Close 
  Set conn = Nothing
End Sub

%>
