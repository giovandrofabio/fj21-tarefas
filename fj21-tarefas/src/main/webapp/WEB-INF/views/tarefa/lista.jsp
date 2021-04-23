<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@	taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<script type="text/javascript" src="resources/js/jquery.js"></script>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	</head>
<body>
<script type="text/javascript">
function finalizaAgora(id) {
$.post("finalizaTarefa", {'id' : id}, function(resposta) {
  $("#tarefa_"+id).html(resposta);
});
}
</script>
	<a href="novaTarefa" class="btn btn-primary">Criar nova tarefa</a>
	<br/> <br/>
	<table class="table table-dark table-striped">
		<tr>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalizado</th>
			<th>Data de finalização</th>
			<th colspan="2" align="center">Opções</th>
		</tr>
			<c:forEach items="${tarefas}" var="tarefa">
				<tr id="tarefa_${tarefa.id}">
					<td>${tarefa.id}</td>
					<td>${tarefa.descricao}</td>

					<c:if test="${tarefa.finalizado	eq true}">
						<td>Finalizado</td>
					</c:if>
					
					<c:if test="${tarefa.finalizado eq false}">
						<td><a class="btn btn-success" href="#" onClick="finalizaAgora(${tarefa.id})">Finalizar</a></td>
					</c:if>
					<td>
						<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/>
					</td>
					<td><a href="removeTarefa?id=${tarefa.id}" class="btn btn-danger">Remover</a></td>
					<td><a href="mostraTarefa?id=${tarefa.id}" class="btn btn-warning">Alterar</a></td>
				</tr>
			</c:forEach>
	</table>
</body>
</html>