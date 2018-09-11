<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="util/head.jsp" />
<jsp:include page="util/menu.jsp" />

<!-- Bread crumb and right sidebar toggle -->
<div class="row page-titles">
	<div class="col-md-5 col-8 align-self-center">
		<h3 class="text-themecolor">Proyecto</h3>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<c:url value="/proyecto/pageProyecto"/>">Configuración</a></li>
			<li class="breadcrumb-item active">Proyecto</li>
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

				<div id="modalNew" class="modal fade" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title" id="myModalLabel">
									<i class="fas fa-file"></i>&nbsp; Nuevo proyecto
								</h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
							</div>
							<div class="modal-body">

								<div class="col-md-12">
									<div class="card card-body">
										<form id="formNew" class="form-horizontal" data-toggle="validator" role="form">
											<div class="form-group row">
												<label for="nomProy"
													class="col-sm-3 text-right control-label col-form-label">Nombre:</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" id="nomProy" required
														placeholder="Ingrese un nombre al proyecto">
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
				<div class="row divCen">
					<div class="col-md-10">
						<div class="table-responsive m-t-40">
							<table id="myTable"
								class="table table-bordered table-striped colCen">
								<thead>
									<tr>
										<th>Nombre</th>
										<th style="text-align: center;">Acción</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>PRUEBA</td>
										<td style="text-align: center;"><a
											class="btn btn-warning btn-xs margin_button"
											title="Editar usuario"><i class="fas fa-edit fa-lg"></i></a>
											&nbsp;&nbsp; <a class="btn btn-danger btn-xs margin_button"
											title="Eliminar"><i class="fas fa-times-circle fa-lg"></i></a>
										</td>
									</tr>
									<tr>
										<td>DEMO</td>
										<td style="text-align: center;"><a
											class="btn btn-warning btn-xs margin_button"
											title="Editar usuario"><i class="fas fa-edit fa-lg"></i></a>
											&nbsp;&nbsp; <a class="btn btn-danger btn-xs margin_button"
											title="Eliminar"><i class="fas fa-times-circle fa-lg"></i></a>
										</td>
									</tr>
									<tr>
										<td>PRUEBA 2</td>
										<td style="text-align: center;"><a
											class="btn btn-warning btn-xs margin_button"
											title="Editar usuario"><i class="fas fa-edit fa-lg"></i></a>
											&nbsp;&nbsp; <a class="btn btn-danger btn-xs margin_button"
											title="Eliminar"><i class="fas fa-times-circle fa-lg"></i></a>
										</td>
									</tr>
									<tr>
										<td>MOVIL</td>
										<td style="text-align: center;"><a
											class="btn btn-warning btn-xs margin_button"
											title="Editar usuario"><i class="fas fa-edit fa-lg"></i></a>
											&nbsp;&nbsp; <a class="btn btn-danger btn-xs margin_button"
											title="Eliminar"><i class="fas fa-times-circle fa-lg"></i></a>
										</td>
									</tr>
									<tr>
										<td>MOVIL</td>
										<td style="text-align: center;"><a
											class="btn btn-warning btn-xs margin_button"
											title="Editar usuario"><i class="fas fa-edit fa-lg"></i></a>
											&nbsp;&nbsp; <a class="btn btn-danger btn-xs margin_button"
											title="Eliminar"><i class="fas fa-times-circle fa-lg"></i></a>
										</td>
									</tr>
									<tr>
										<td>DEMO</td>
										<td style="text-align: center;"><a
											class="btn btn-warning btn-xs margin_button"
											title="Editar usuario"><i class="fas fa-edit fa-lg"></i></a>
											&nbsp;&nbsp; <a class="btn btn-danger btn-xs margin_button"
											title="Eliminar"><i class="fas fa-times-circle fa-lg"></i></a>
										</td>
									</tr>
									<tr>
										<td>PRUEBA</td>
										<td style="text-align: center;"><a
											class="btn btn-warning btn-xs margin_button"
											title="Editar usuario"><i class="fas fa-edit fa-lg"></i></a>
											&nbsp;&nbsp; <a class="btn btn-danger btn-xs margin_button"
											title="Eliminar"><i class="fas fa-times-circle fa-lg"></i></a>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Row -->

<jsp:include page="util/footer.jsp" />

<script>
	//DATA TABLE
    $(function() {
        $('#myTable').DataTable();
    });
	
    function openNew(){
		limpiarNewModal();
		modalFormat("#modalNew");
	}
	
	function limpiarNewModal(){
		$('#formNew').validator('destroy');
		$('#formNew').validator();
		$('#nomProy').val('');
	}

</script>
