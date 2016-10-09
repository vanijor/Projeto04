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
                    <a class="navbar-brand" href="#">POO-FATEC</a>
                </div>                
            </div>
        </nav>
        <div id="main" class="container-fluid">
            <h3 class="page-header">Editar Cliente</h3>
            <form action="#">
                
                <div class="row" >
                    <div class="form-group col-md-4">
                        <label for="campo1">Nome</label>
                        <input type="text" class="form-control" id="campo1" name='nome'>                  
                    </div>
                    <div class="form-group col-md-4">
                        <label for="campo2">CPF</label>
                        <input type="text" class="form-control" id="campo3" name='cpf'>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="campo3">RG</label>
                        <input type="text" class="form-control" id="campo3" name='rg'>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="campo4">Email</label>
                        <input type="text" class="form-control" id="campo4" name='mail'>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="campo5">Telefone</label>
                        <input type="text" class="form-control" id="campo5" name='fone'>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="campo6">Endereço</label>
                        <input type="text" class="form-control" id="campo6" name='endereco'>
                    </div>
                </div>
                
                <!-- area de campos do form -->
                <hr />
                <div id="actions" class="row">
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary" name='incluir' value='incluir'>Salvar</button>
                        <a href="index.jsp" class="btn btn-default">Voltar</a>
                    </div>
                </div>
            </form>
        </div>        
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
