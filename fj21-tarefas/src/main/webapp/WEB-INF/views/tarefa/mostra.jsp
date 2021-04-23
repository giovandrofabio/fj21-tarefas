<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
	<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw==" crossorigin="anonymous" />	
	</head>
<body>
  <h3>Alterar tarefa - ${tarefa.id}</h3>
  <form action="alteraTarefa" method="post">
    <input type="hidden" name="id" value="${tarefa.id}" />
     <strong class="col-sm-2">Descrição:</strong><br />
    <textarea class="form-control" name="descricao" cols="100" rows="5">
      ${tarefa.descricao}
    </textarea>
    <br />
     <strong class="col-sm-2">Finalizado? </strong><input class="form-check-input mt-0" type="checkbox" name="finalizado" value="true" ${tarefa.finalizado? 'checked' : ''}/> <br/>
    <strong class="col-sm-2">Data de finalização:</strong> <br />
    <div class="form-group row">
    <input id="dataFinalizacao" type="text" class="form-control col-sm-9" name="dataFinalizacao" value="<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" />"/>
    </div>
    <br/>
    <button type="submit" class="btn btn-warning">Alterar</button>
  </form>
  
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" integrity="sha512-T/tUfKSV1bihCnd+MxKD0Hm1uBBroVYBOYSk1knyvQ9VyZJpc/ALb4P0r6ubwVPSGB2GvjeoMAJJImBG12TiaQ==" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.pt-BR.min.js" integrity="sha512-mVkLPLQVfOWLRlC2ZJuyX5+0XrTlbW2cyAwyqgPkLGxhoaHNSWesYMlcUjX8X+k45YB8q90s88O7sos86636NQ==" crossorigin="anonymous"></script>    
	    
	<script type="text/javascript">
	$(document).ready(function(){
		$('#dataFinalizacao').datepicker({
			 format: 'dd/mm/yyyy',
			 language : 'pt-BR'
		});
	});
	</script>  
</body>
</html>