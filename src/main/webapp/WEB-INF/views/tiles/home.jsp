<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Inicio de sesión</h3>
				</div>
				<div class="panel-body">
					<form:form method="POST" action="login" modelAttribute="usuario">
						<fieldset>
							<div class="form-group">
								<form:input cssClass="form-control" path="correo"
									placeholder="Ingresa tu correo" />
							</div>
							<div class="form-group">
								<form:password cssClass="form-control" path="password" />
							</div>
							<input type="submit" class="btn btn-lg btn-success btn-block"
								value="Iniciar sesión" />
						</fieldset>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>