<!--#include file="conexao.asp"-->
<%
Abre_Conexao
%>
<%
' cadastro realizado com sucesso 
if request.QueryString("cadastro") = "ok" then
%>
<!--alerta na tela de cadastro realizado sucesso -->
<script>
alert("Usuário cadastrado  com sucesso")
</script>
<%
end if
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel= "stylesheet" href="reset.css">
    <link rel="stylesheet" href="style.css">
    <title>Login - NORTHWIND</title>
</head>
<body>
<div class="titulo">
     <%
    response.write("<h1>NORTHWIND</h1>")
    %>
</div>
<section>
<div class="formulario_login">
    <form method="post" action="verificalogin.asp" name="frm_login" onsubmit="return conferir_login(this);">
    <div>
        <label for="exampleInputEmail" class="form-label">E-mail: <label>
         <input type="text" class="form-control" id="exampleInputEmail" aria-describeby="emailHelp" name="frm_email" value><br>
    </div>
    <div class="form-text">
        <a  href="default.asp"  id="passwordHelp" class="form-text">Novo usuário</a><br><br><br>
        </div>
    <div>
        <label for="exampleInputPassword1" class="form-label">Senha:</label> 
        <input type="password" class="form-control" id="exampleInputPassword1" name="frm_senha"><br><br>
        </div>
    <button  type="submit" id="botao_gravar" name="gravar">Entrar</button>

        <%
        if request.QueryString("evento")="sucesso"  then
        %>
        <script>
            alert("Usuário logado com sucesso!")
        </script>
        <%
        end if
        %>
        <%
        if request.QueryString("evento")="erro"  then
        %>
        <script>
            alert("Usuário inválido ou senha incorreta")
        </script>
        <!--forma de mostrar na tela que o usuário é inválido:
        <h1>Usuário inválido ou senha incorreta</h1>  -->
        <%
        end if
        %>
    </form>
</div>
</section>

    <script defer  src="./scripts.js"></script>
</body>
</html>