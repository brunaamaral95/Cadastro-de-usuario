<!--#include file="conexao.asp"-->

<%
'cadastro já existente
if request.QueryString("cadastro") = "erro" then
%>
<!--alerta de cadastro já existente-->
<script>
alert("Usuário já cadastrado!")
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
    <title>Cadastro - NORTHWIND</title>

<!--CSS Reset é uma lista de regras que 'reiniciam' todos os estilos de navegador padrão.
obs:Lembre-se, a folha de estilo CSS Reset deve sempre ir primeiro. -->
    <link rel= "stylesheet" href="reset.css">
    
    <link rel="stylesheet" href="style.css">

</head>

<body>
    
    <div class="titulo">
        <%
            response.write("<h1>NORTHWIND</h1>")
        %>
    </div>

        

    
    <div class="formulario_login">
        <form method="post" action="verificaCadastro.asp"  name="frm_cadastro"  onsubmit="return conferir_cadastro(this);">

            <div class="form_nome">
            <label for="exampleInputNome1" class="form-label">Nome:</label> 
            <input  type="text" class="form-control" id="exampleInputNome1" aria-describedby="nomeHelp" name="nome" ><br><br>
            </div>

            <div class=form_email>
            <label for="exampleInputEmail1" class="form-label">E-mail:</label> 
            <input type="text" class="form-control "  id="exampleInputEmail1" aria-describedby="emailHelp"  name="email" ><br><br>
            </div>

            <div class="form_nascimento">
            <label for="exampleInputNascimento1" clas="form-label"> Data de Nascimento:</label>
            <input  type="date" class="form-control"  id="exampleInputNascimento1" aria-describedby="nascimentoHelp" name="nascimento" ><br><br>
            </div>

            <div class="form_password">
            <label for="exampleInputPassword1" class="form-label">Senha:</label> 
            <input type="password" class="form-control" id="exampleInputPassword1"  name="senha1"><br><br>
            <div id="passwordHelp" class="form-text"></div>
            </div>

            <div class="form_password ">
            <label for="exampleInputPassword1"  class="form-label">Confirme a senha: </label>
            <input type="password" class="form-control" id="exampleInputPassword2"  name="senha2"><br><br>
            <div id="passwordHelp" class="form-text"></div>
            </div>
            <div class="form-check">
            <input  type="checkbox" class="form-check-input" id="exampleCheck1" name="check" value="S">Desejo receber e-mail de confirmação<br><br>
            </div>
            <button type="submit" name="botao_gravar" id="botao_gravar">Gravar</button>
        </form>
    </div>
    
        <script defer  src="/default.js"></script>






</body>
</html>