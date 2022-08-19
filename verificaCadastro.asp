<!--#include file="conexao.asp"-->
<%
 Abre_Conexao
nome=request.form("nome")
'response.write(nome)


email=request.form("email")
'response.write(email)

nascimento=request.form("nascimento")
'response.write(nascimento)

senha1=request.form("senha1")
'response.write(senha1)

'gravar S  ou N no checkbox   
checkbox=request.form("check")
if checkbox <> "S" then
    checkbox="N"
end if


SQLVerificaEmail = "SELECT COUNT(DCEML) AS TOTAL FROM ASP_USUARIO WHERE DCEML = '"&email&"';"


set rsVerificaEmail = Server.CreateObject("ADODB.recordset")
set rsVerificaEmail = conn.Execute(SQLVerificaEmail)


if  rsVerificaEmail("TOTAL") = 0 then

 


SQLCadastro = "INSERT INTO ASP_USUARIO(NMUSU, DCEML, DTNSC, DCSENUSU, FLEML)" 
SQLCadastro= SQLCadastro & "VALUES ('"&nome&"', '" &email& "','"&nascimento& "', '"&senha1& "','" &checkbox&"' )"


set rsInsercao = Server.CreateObject("ADODB.recordset")
set rsInsercao = conn.Execute(SQLCadastro)

response.redirect("login.asp?cadastro=ok")
else


response.redirect("default.asp?cadastro=erro")
end if

fecha_conexao
%>




