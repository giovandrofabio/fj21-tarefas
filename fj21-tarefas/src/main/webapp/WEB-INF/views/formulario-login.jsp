<html>
	<head>
		<script type="text/javascript" src="resources/js/jquery.js"></script>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	</head>
<body>
<h2>Página de Login das Tarefas</h2>
	<form action="efetuaLogin" method="post">
		<label class="form-label">Login: </label>
		<input class="form-control col-sm-9" type="text" name="login" /> <br/>
		<label class="form-label">Senha:</label> 
		<input class="form-control col-sm-9" type="password" name="senha"/> <br/>
		<button type="submit" class="btn btn-primary">Entrar nas tarefas</button>
	</form>
</body>
</html>