<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>
    <meta charset="ISO-8859-1">
    <title>Edit Anime</title>

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

</head>
<body>

    <div class="container">

        <h1 class="p-3"> Edit Anime </h1>

        <form:form action="/editaEncontro" method="post" modelAttribute="encontro">

                    <div class="row">
                    	<div class="form-group col-md-12">
                    		<div class="col-md-6">
                    			<form:hidden path="encontroId" class="form-control input-sm" />
                    		</div>
                    	</div>
                    </div>

                    <div class="form-row">
                                       <div class="col">
                               		    <label for="nome">Nome</label>
                               		    <form:input type="text" path="nome" id="nome" class="form-control input-sm" required="required" />
                                       </div>
                                       <div class="col">
                               		<label for="endereco">Endereço</label>
                               			<form:input type="text" path="endereco" id="endereco" class="form-control input-sm" required="required" />
                               		</div>
                                  </div>
                                  <div class="form-row">
                                       <div class="col">
                                      <label for="observacao">Observacao</label>
                                      <form:input type="text" path="observacao" id="observacao" class="form-control input-sm" required="required" />
                                      	</div>
                                  </div>
                                   <div class="form-row">
                                    <div class="col">
                                       <label for="urlImagem">URl da Imagem</label>
                                       <form:input type="text" path="urlImagem" id="urlImagem" class="form-control input-sm" required="required" />
                                     </div>
                                    </div>
                                    <br>

                    <div class="row p-2">
                    	<div class="col-md-2">
                    		<button type="submit" value="Register" class="btn btn-success">Atualizar</button>
                    	</div>
                    </div>

                </form:form>

    </div>


</body>

</html>