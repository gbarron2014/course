<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- Solo el Body -->
<section>
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h1 class="display-4">Listado de Estudiantes</h1>
		</div>
	</div>
</section>

<section class="container">
	<div class="row">
		<table>
			<thead>
				<tr>
					<td>Número de control</td>
					<td>Nombre</td>
					<td>Apellidos</td>
					<td>Grupo</td>
					<td>Edad</td>
					<td>&nbsp;</td>
				</tr>
			</thead>
			<c:forEach items="${estudiantes}" var="estudiante">
				<tr>
					<td>${estudiante.numeroControl}</td>
					<td>${estudiante.nombre}</td>
					<td>${estudiante.apellidos}</td>
					<td>${estudiante.edad}</td>
					<td><a
						href="<c:url value='/estudiante/edit/${estudiante.numeroControl}' />">Edit</a></td>
					<td><a
						href="<c:url value='/estudiante/delete/${estudiante.numeroControl}' />">Eliminar</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div class="row align-items-right">
		<div class="col-md-12">
    		<a href ="<c:url value='/estudiante/new'/>">Agregar nuevo estudiante </a>
		</div>
	</div>
</section>
