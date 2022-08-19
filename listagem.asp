<!--#include file="conexao.asp"-->
<%
  Abre_Conexao
if request.QueryString("1") = "1" then
    categoria = request.form("categoria")
    busca_produto = request.form("busca_produto")
    
    sqlProdutos = "SELECT CategoryName, ProductName, QuantityPerUnit, UnitPrice from Products a INNER JOIN  Categories as b on  a.CategoryID = b.CategoryID where  a.CategoryID LIKE '%"&categoria&"%' and a.ProductName like '%"&busca_produto&"%'"

            
    'response.write(sqlProdutos)
    
    set rsProdutos = Server.CreateObject("ADODB.recordset")
    set rsProdutos = conn.Execute(sqlProdutos)
else
    sqlProdutos = "SELECT CategoryName, ProductName, QuantityPerUnit, UnitPrice from Products a  INNER JOIN  Categories as b on  a.CategoryID = b.CategoryID "
            
    'response.write(sqlProdutos)
    
    set rsProdutos = Server.CreateObject("ADODB.recordset")
    set rsProdutos = conn.Execute(sqlProdutos)
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
      <title>Listagem - NORTHWIND</title>
   </head>
   <body>

    <section>
      <div class="titulo">
         <%
            response.write("<h1>NORTHWIND</h1>")
        %>
        </div>
        <div class="titulo_sessao">
          Bem-vindo, <%Response.Write(Session("nome"))%>
         </div>
   
      <div class="login_texto">
         <a href="login.asp">
         <button class="Desconectar"> Desconectar</button>
         </a>
         </div>
    </section>
      
        <div class="form">
      <form method="post" action="listagem.asp?1=1" name="frm_busca" class="formulario_busca"  >
         <div class="formulario_texto">
            <label class="nome_produto" for="exampleInputNome1" class="form-label">Produto</label>
            <input type="text" class="form-control" id="busca_produto" name="busca_produto">
         </div>
         <div class="categoria">
            <label class="categoria_selecao"> Categoria</label>
            <select  name="categoria">
            </div>
            <div class="selecao">
            <option selected value="">Selecione</option>
         </div>
         <%
            SQLcombo = "SELECT CategoryID, CategoryName  from Categories"
                
            'response.write(SQLcombo)
            set rsCategoria = Server.CreateObject("ADODB.recordset")
            set rsCategoria = conn.Execute(SQLcombo)
            
               do until rsCategoria.EOF
            %>
         <option VALUE="<%=rsCategoria("CategoryID") %>"><%=rsCategoria("CategoryName") %></option>
         </tr>
         <%


            rsCategoria.MoveNext
            loop
            
            %>
         </select>
         <button type="submit" class="pesquisar" >Pesquisar</button>
      </form>

      
      <table >
      <thead>
         <th>Categoria</th>
         <th>Produto</th>
         <th>Quantidade</th>
         <th>Preço</th>
      </thead>
      <tbody>
         <% 
            do until rsProdutos.EOF
              
            %>
         <tr>
            <td><%=rsProdutos("CategoryName") %></td>
            <td><%=rsProdutos("ProductName") %></td>
            <td><%=rsProdutos("QuantityPerUnit") %></td>
            <td><%=rsProdutos("UnitPrice") %></td>
         </tr>
         <%
            rsProdutos.MoveNext
                loop
            %>
      </tbody>
      </table>
   </body>
</html>