<%@	taglib uri="http://www.springframework.org/tags/form" prefix="form"	%>

<html>
	<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	</head>
	<body>
		<h3>Adicionar tarefas</h3>
		<form:errors path="tarefa.descricao" cssStyle="color:red"/>
		<form action="adicionaTarefa" method="post">
			<label class="form-label">Descrição: </label><br/>
			<div class="form-floating">
			<textarea class="form-control" name="descricao"  id="floatingTextarea2" style="height: 100px"></textarea><br/>
			 <label for="floatingTextarea2">Descrição da Tarefa</label>
			</div>
			<button type="submit" class="btn btn-primary">Adicionar</button>
		</form>
	</body>
</html>