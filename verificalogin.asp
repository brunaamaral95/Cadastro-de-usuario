<!--#include file="conexao.asp"-->
<%
Abre_Conexao

email=request.form("frm_email")
senha=request.form("frm_senha")


SQLVerificaLogin="SELECT * FROM ASP_USUARIO WHERE DCEML = '"&email&"' and DCSENUSU ='"&senha&"';"

set rsVerifica = Server.CreateObject("ADODB.recordset")
set rsVerifica = conn.Execute(SQLVerificaLogin)


if not rsVerifica.EOF   then
'para iniciar a sessão com nome do usuário cadastrado.
    session("nome") = rsVerifica("nmusu")
    
    response.redirect("listagem.asp")

else


fecha_conexao
'redirecionando para página de login quando o usuário for inválido
response.redirect("login.asp?evento=erro")

end if


%>