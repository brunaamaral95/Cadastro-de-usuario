<!DOCTYPE html>
<html>
<body>

<%
'Conexão com o Banco de Dados
set conn=Server.CreateObject("ADODB.Connection")
conn.Open  "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sysmestra;Password=mestrasys;Initial Catalog=treinamento_java;Data Source=192.100.100.59"
'Executar query
sql = "Select * from Customers"
set rs = Server.CreateObject("ADODB.recordset")
Set rs = conn.execute(sql)

do until rs.EOF
    for each x in rs.Fields
       Response.Write(x.name)
       Response.Write(" = ")
       Response.Write(x.value & "<br>")
    next
    Response.Write("<br>")
    rs.MoveNext
loop

rs.close
conn.close
%>

</body>
</html>'
