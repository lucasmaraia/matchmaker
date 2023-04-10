<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>
    <meta charset="ISO-8859-1">
    <title>Adicione um encontro</title>

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

        <h1 class="p-3">Adicione um Encontro</h1>

        <form:form action="/salvaEncontro" method="post" modelAttribute="encontro">
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
                  <div class="form-row">
              <div class="col">
                    <label for="StatusPreco">Status da Distancia</label>
                       <form:select path="statusDistancia.statusDistanciaId" class="form-control">
                        <option value = "">-Selecione uma Distancia-</option>
                        <option  value = "1">Perto</option>
                        <option  value = "2">Medio</option>
                        <option  value = "3">Distante</option>
                      </form:select>
                  </div>
                   <div class="col">
                     <label for="StatusPreco">Status do Preço</label>
                     <form:select path="statusPreco.statusPrecoId" id="StatusPreco" class="form-control">
                        <option value = "">-Selecione um Preco-</option>
                        <option value = "1">Barato</option>
                        <option value = "2">Medio</option>
                        <option value = "3">Caro</option>
                     </form:select>
                  </div>
                  </div>
                  <br>

                  <div class="row">
                       <button type="submit" class="btn btn-primary">Criar</button>
                  </div>
        </form:form>

    </div>


</body>

</html>