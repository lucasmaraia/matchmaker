<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <title>Lista de Encontros</title>

    <link rel="stylesheet"
        	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
        <script
        	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script
        	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>


    <style>
        a{
            color: white;
        }
        a:hover {
            color: white;
            text-decoration: none;
        }
    </style>

</head>
<body>

    <div class="modal" id="encontroSorteado" tabindex="-1" role="dialog">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">O encontro sorteado foi:</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <p id="nomeEncontro">Modal body text goes here.</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
          </div>
        </div>
      </div>
    </div>


    <div class="container">

        <h1 class="p-3">Lista de Encontros</h1>

        <form:form>

            <table class="table table-bordered">
            	<tr>
            		<th>Id</th>
            		<th>Name</th>
            		<th>endereco</th>
            		<th>observação</th>
            		<th>Url da Imagem</th>
            		<th>Ultima Atualização</th>
            		<th>Edit</th>
            		<th>Delete</th>
            	</tr>

            	<c:forEach var="e" items="${encontros}">
                    <tr>
                		<td>${e.encontroId}</td>
                		<td>${e.nome}</td>
                		<td>${e.endereco}</td>
                		<td>${e.observacao}</td>
                		<td>${e.urlImagem}</td>
                		<td><fmt:formatDate pattern="MM/dd/yyyy HH:mm:ss" value="${e.dataCadastro}" /></td>
                		<td><button type="button" class="btn btn-success">
                		    <a href="/editaEncontro/${e.encontroId}">Editar</a>
                		</button></td>
                		<td><button type="button" class="btn btn-danger">
                			<a href="/deletaEncontro/${e.encontroId}">Deletar</a>
                		</button></td>
                	</tr>

            	</c:forEach>

            </table>

        </form:form>
        <div class="row">
        <button type="button" class="btn btn-primary btn-block">
        	<a href="/adicionaEncontro">Adicione seu novo Encontro</a>
        </button>
        </div>
        <br>
        <br>
        <div class="row">
         <button type="button" onclick = "sorteiaEncontro()" class="btn btn-warning btn-block">
                	Sortear Encontro
          </button>
          </div>
    </div>

       <script th:inline="javascript">
                   window.onload = function() {
                       var msg = "${mensagem}";
                        console.log(msg);
                        if(msg != ""){
                            Command: toastr["success"]("${mensagem}")
                        }
           			toastr.options = {
                             "closeButton": true,
                             "debug": false,
                             "newestOnTop": false,
                             "progressBar": true,
                             "positionClass": "toast-top-right",
                             "preventDuplicates": false,
                             "showDuration": "300",
                             "hideDuration": "1000",
                             "timeOut": "5000",
                             "extendedTimeOut": "1000",
                             "showEasing": "swing",
                             "hideEasing": "linear",
                             "showMethod": "fadeIn",
                             "hideMethod": "fadeOut"
                           }




           	    }
               </script>

               <script>
               function sorteiaEncontro(){
               $.getJSON( "/sorteiaEncontro", function( data ) {
                    console.log(data);
                    $("#nomeEncontro").text(data.nome);
                });

               $('#encontroSorteado').modal('show');
               }

               </script>


</body>

</html>