<%-- 
    Document   : contatos
    Created on : 05/10/2016, 15:47:44
    Author     : aluno
--%>

<%@page import="br.com.fatecpg.crud.Pessoa"%>
<%@page import="br.com.fatecpg.crud.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    if (request.getParameter("incluir") != null) {
        Pessoa p = new Pessoa();
        p.setNome(request.getParameter("nome"));
        p.setEmail(request.getParameter("mail"));
        p.setTelefone(request.getParameter("fone"));
        p.setEndereco(request.getParameter("endereco"));
        p.setCpf(request.getParameter("cpf"));
        p.setRg(request.getParameter("rg"));
        Database.getPessoasList().add(p);
        response.sendRedirect(request.getRequestURI());
    }
    if (request.getParameter("excluir") != null) {
        String par = request.getParameter("i");
        int i = Integer.parseInt(par);
        Database.getPessoasList().remove(i);
        response.sendRedirect(request.getRequestURI());
    }

%>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastro</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>

        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Cadastro</a>
                </div>                
            </div>
        </nav>

        <div id="main" class="container-fluid" style="margin-top: 50px">

            <div id="top" class="row">
                <div class="col-sm-6">
                    <h2>Clientes</h2>
                </div>                
                <div class="col-sm-6">
                    <a href="add.jsp" class="btn btn-primary pull-right h2">Novo Cliente</a>
                </div>
            </div> <!-- /#top -->
            <hr />
        <div id="list" class="row">
            <div class="table-responsive col-md-12">
                <table class="table table-striped" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>Email</th>
                            <th>Telefone</th>
                            <th>Endereco</th>
                            <th>CPF</th>
                            <th>RG</th>
                            <th class="actions">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (Pessoa p : Database.getPessoasList()) {%>
                        <tr>
                            <% int i = Database.getPessoasList().indexOf(p);%>
                            <td><%= i%></td>
                            <td><%= p.getNome()%></td>
                            <td><%= p.getEmail()%></td>
                            <td><%= p.getTelefone()%></td>
                            <td><%= p.getEndereco()%></td>
                            <td><%= p.getCpf()%></td>
                            <td><%= p.getRg()%></td>
                            <td>
                                <form>
                                    <input type='hidden' name='i' value='<%= i%>'/>
                                    <button class="btn btn-danger" type='submit' name='excluir'>Excluir</button>                                        
                                    <a href="edit.jsp" class="btn btn-primary" type="submit" name='editar'>Editar</a>
                                </form>
                            </td>
                        </tr>   
                        <%}%>
                    </tbody>
                </table>
            </div>
        </div> <!-- /#list -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
