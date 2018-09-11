<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="util/head.jsp" />
<jsp:include page="util/menu.jsp" />

<!-- Bread crumb and right sidebar toggle -->
<div class="row page-titles">
	<div class="col-md-5 col-8 align-self-center">
		<h3 class="text-themecolor">Usuario</h3>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<c:url value="/usuario/pageUsuario"/>">Seguridad</a></li>
			<li class="breadcrumb-item active">Usuario</li>
		</ol>
	</div>
</div>
<!-- End Bread crumb and right sidebar toggle -->
<!-- Start Page Content -->
<!-- Row -->
<div class="row">
	<!-- Column -->
	<div class="col-lg-12 col-md-12">
		<div class="card">
			<div class="card-body">

				<div class="col-sm-12 col-xs-12">
					<form class="input-form">
						<div class="row divCen">
							<div class="col-md-7">
								<div class="input-group">
									<label for="inputEmail3"
										class="col-sm-3 text-right control-label col-form-label">Nombre:</label>
									<input type="text" class="form-control"
										placeholder="Ingrese un nombre...">
									<div class="input-group-append">
										<button class="btn btn-info" type="button" title="Buscar">
											<i class="fas fa-search"></i>
										</button>
										<button class="btn btn-success" type="button" title="Limpiar">
											<i class="fas fa-eraser"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
				
				<div class="form-group">
					<div class="col-xs-3">
						<button class="btn btn-info" title="Nuevo" onclick="openNew();">
							<i class="fas fa-file"></i>&nbsp; Nuevo
						</button>
					</div>
				</div>

				<div id="modalNew" class="modal fade" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title" id="myModalLabel">
									<i class="fas fa-address-card fa-lg"></i> &nbsp;&nbsp; Nuevo
									usuario
								</h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
							</div>
							<div class="modal-body">

								<div class="col-md-12">
									<div class="card card-body">
										<form id="formNew" class="form-horizontal" data-toggle="validator" role="form">
											<div class="form-group row">
												<label for="user"
													class="col-sm-3 text-right control-label col-form-label">Usuario:</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" id="user" required
														placeholder="Ingrese un usuario">
												</div>
											</div>
											<div class="form-group row">
												<label for="nomb"
													class="col-sm-3 text-right control-label col-form-label">Nombre:</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" id="nomb" required
														placeholder="Ingrese un nombre">
												</div>
											</div>
											<div class="form-group row">
												<label for="cboRol"
													class="col-sm-3 text-right control-label col-form-label">Rol:</label>
												<div class="col-sm-9">
													<select id="cboRol" class="form-control" style="width: 100%" required>
														<option value="">Seleccione un rol</option>
														<option value="CO">Consultor</option>
														<option value="AS">Asistente</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="cboPro"
													class="col-sm-3 text-right control-label col-form-label">Proyecto:</label>
												<div class="col-sm-9">
													<select id="cboPro" class="form-control select2" style="width: 100%" required>
														<option value="">Seleccione un proyecto</option>
														<optgroup label="Proyectos">
															<option value="DE">DEMO</option>
															<option value="PR">PRUEBA</option>
															<option value="PY">PROY</option>
															<option value="PR2">PRUEBA2</option>
														</optgroup>
													</select>
												</div>
											</div>

											<div class="form-group row">
												<div class="offset-sm-3 col-sm-3">
													<button type="submit"
														class="btn btn-info waves-effect waves-light m-t-10">Aceptar</button>
												</div>
												<div class="col-sm-3">
													<button type="button" data-dismiss="modal"
														class="btn btn-danger waves-effect waves-light m-t-10">Cancelar</button>
												</div>
											</div>

										</form>
									</div>
								</div>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>

				<div class="table-responsive m-t-40">
					<table id="myTable"
						class="table table-bordered table-striped colCen">
						<thead>
							<tr>
								<th>Usuario</th>
								<th>Nombre</th>
								<th>Rol</th>
								<th>Estado</th>
								<th>Acción</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>PRUEBA</td>
								<td>PRUEBA</td>
								<td>CONSULTOR</td>
								<td>ACTIVO</td>
								<td><a class="btn btn-warning btn-xs margin_button"
									title="Editar usuario"><i class="fas fa-edit fa-lg"></i></a>
									&nbsp;&nbsp; <a class="btn btn-danger btn-xs margin_button"
									title="Eliminar usuario"><i
										class="fas fa-times-circle fa-lg"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button"
									title="Reiniciar clave"><i class="fas fa-redo fa-lg"></i></a>
									&nbsp;&nbsp;</td>
							</tr>
							<tr>
								<td>DEMO</td>
								<td>NOMBRE</td>
								<td>CONSULTOR</td>
								<td>ACTIVO</td>
								<td><a class="btn btn-warning btn-xs margin_button"
									title="Editar usuario"><i class="fas fa-edit fa-lg"></i></a>
									&nbsp;&nbsp; <a class="btn btn-danger btn-xs margin_button"
									title="Eliminar usuario"><i
										class="fas fa-times-circle fa-lg"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button"
									title="Reiniciar clave"><i class="fas fa-redo fa-lg"></i></a>
									&nbsp;&nbsp;</td>
							</tr>
							<tr class="colCen">
								<td>PRUEBA 2</td>
								<td>JUAN</td>
								<td>ASISTENTE</td>
								<td>ACTIVO</td>
								<td><a class="btn btn-warning btn-xs margin_button"
									title="Editar usuario"><i class="fas fa-edit fa-lg"></i></a>
									&nbsp;&nbsp; <a class="btn btn-danger btn-xs margin_button"
									title="Eliminar usuario"><i
										class="fas fa-times-circle fa-lg"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button"
									title="Reiniciar clave"><i class="fas fa-redo fa-lg"></i></a>
									&nbsp;&nbsp;</td>
							</tr>
							<tr>
								<td>MOVIL</td>
								<td>LUIS</td>
								<td>CONSULTOR</td>
								<td>ACTIVO</td>
								<td><a class="btn btn-warning btn-xs margin_button"
									title="Editar usuario"><i class="fas fa-edit fa-lg"></i></a>
									&nbsp;&nbsp; <a class="btn btn-danger btn-xs margin_button"
									title="Eliminar usuario"><i
										class="fas fa-times-circle fa-lg"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button"
									title="Reiniciar clave"><i class="fas fa-redo fa-lg"></i></a>
									&nbsp;&nbsp;</td>
							</tr>
							<tr>
								<td>MOVIL</td>
								<td>MARCO</td>
								<td>ASISTENTE</td>
								<td>ACTIVO</td>
								<td><a class="btn btn-warning btn-xs margin_button"
									title="Editar usuario"><i class="fas fa-edit fa-lg"></i></a>
									&nbsp;&nbsp; <a class="btn btn-danger btn-xs margin_button"
									title="Eliminar usuario"><i
										class="fas fa-times-circle fa-lg"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button"
									title="Reiniciar clave"><i class="fas fa-redo fa-lg"></i></a>
									&nbsp;&nbsp;</td>
							</tr>
							<tr>
								<td>DEMO</td>
								<td>JORGE</td>
								<td>CONSULTOR</td>
								<td>ACTIVO</td>
								<td><a class="btn btn-warning btn-xs margin_button"
									title="Editar usuario"><i class="fas fa-edit fa-lg"></i></a>
									&nbsp;&nbsp; <a class="btn btn-danger btn-xs margin_button"
									title="Eliminar usuario"><i
										class="fas fa-times-circle fa-lg"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button"
									title="Reiniciar clave"><i class="fas fa-redo fa-lg"></i></a>
									&nbsp;&nbsp;</td>
							</tr>
							<tr>
								<td>PRUEBA</td>
								<td>JOSE</td>
								<td>ASISTENTE</td>
								<td>ACTIVO</td>
								<td><a class="btn btn-warning btn-xs margin_button"
									title="Editar usuario"><i class="fas fa-edit fa-lg"></i></a>
									&nbsp;&nbsp; <a class="btn btn-danger btn-xs margin_button"
									title="Eliminar usuario"><i
										class="fas fa-times-circle fa-lg"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button"
									title="Reiniciar clave"><i class="fas fa-redo fa-lg"></i></a>
									&nbsp;&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Row -->
<jsp:include page="util/footer.jsp" />

<link href="<c:url value="/resources/assets/plugins/select2/dist/css/select2.min.css"/>" rel="stylesheet" />
<script src="<c:url value="/resources/assets/plugins/select2/dist/js/select2.full.min.js"/>" type="text/javascript"></script>

<script>
	//DATA TABLE
	$(function() {
		$('#myTable').DataTable();
		// For select 2
        $(".select2").select2();
	});
	
	function openNew(){
		limpiarNewModal();
		modalFormat("#modalNew");
	}
	
	function limpiarNewModal(){
		$('#formNew').validator('destroy');
		$('#formNew').validator();
		$('#user').val('');
		$('#nomb').val('');
		$('#cboRol').val('');
		$('#cboPro').val('');
		$('#cboPro').trigger('change.select2');
	}

</script>
