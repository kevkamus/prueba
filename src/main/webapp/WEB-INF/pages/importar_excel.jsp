<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="util/head.jsp" />
<jsp:include page="util/menu.jsp" />

<!-- Bread crumb and right sidebar toggle -->
<div class="row page-titles">
	<div class="col-md-5 col-8 align-self-center">
		<h3 class="text-themecolor">Importar</h3>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<c:url value="/importar_excel/pageImportarExcel"/>">Proceso</a></li>
			<li class="breadcrumb-item active">Importar excel</li>
		</ol>
	</div>
</div>
<!-- Start Page Content -->
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
				<br>
				<div class="form-group">
					<div class="col-lg-12 col-md-12">
						<div class="col-xs-3">
							<button class="btn btn-info" title="Nuevo" onclick="openNew();">
								<i class="fas fa-file"></i>&nbsp; Nuevo
							</button>
							<button class="btn btn-success" title="Exportar">
								<i class="fas fa-cloud-download-alt"></i>&nbsp; Exportar
							</button>
						</div>
					</div>
				</div>

				<div id="modalNew" class="modal fade" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title" id="myModalLabel">
									<i class="fas fa-file"></i>&nbsp; Nuevo excel
								</h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
							</div>
							<div class="modal-body">

								<div class="col-md-12">
									<div class="card card-body">
										<form id="formNew" class="form-horizontal" data-toggle="validator" role="form">
											<div class="form-group row">
												<label for="fileUp"
													class="col-sm-4 text-right control-label col-form-label">Seleccionar:</label>
												<div class="col-sm-8">
													<div class="row">
														<div class="col-lg-12 col-md-12">
															<div class="card">
																<div class="card-body">
																	<input type="file" id="fileUp" class="form-control dropify" required
																		data-allowed-file-extensions="xls xlsx" />
																</div>
															</div>
														</div>
													</div>
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
								<th>Nombre</th>
								<th style="text-align: center;">Acción</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>PRUEBA</td>
								<td style="text-align: center;"><a
									class="btn btn-success btn-xs margin_button" title="Validar"><i
										class="fas fa-check-square fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Reporte"><i class="fas fa-download fa-lg"
										style="color: black;"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button" title="Eliminar"><i
										class="fas fa-times-circle fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Procesar"><i class="fas fa-sync-alt fa-lg"
										style="color: black;"></i></a></td>
							</tr>
							<tr>
								<td>DEMO</td>
								<td style="text-align: center;"><a
									class="btn btn-success btn-xs margin_button" title="Validar"><i
										class="fas fa-check-square fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Reporte"><i class="fas fa-download fa-lg"
										style="color: black;"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button" title="Eliminar"><i
										class="fas fa-times-circle fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Procesar"><i class="fas fa-sync-alt fa-lg"
										style="color: black;"></i></a></td>
							</tr>
							<tr>
								<td>PRUEBA 2</td>
								<td style="text-align: center;"><a
									class="btn btn-success btn-xs margin_button" title="Validar"><i
										class="fas fa-check-square fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Reporte"><i class="fas fa-download fa-lg"
										style="color: black;"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button" title="Eliminar"><i
										class="fas fa-times-circle fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Procesar"><i class="fas fa-sync-alt fa-lg"
										style="color: black;"></i></a></td>
							</tr>
							<tr>
								<td>MOVIL</td>
								<td style="text-align: center;"><a
									class="btn btn-success btn-xs margin_button" title="Validar"><i
										class="fas fa-check-square fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Reporte"><i class="fas fa-download fa-lg"
										style="color: black;"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button" title="Eliminar"><i
										class="fas fa-times-circle fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Procesar"><i class="fas fa-sync-alt fa-lg"
										style="color: black;"></i></a></td>
							</tr>
							<tr>
								<td>MOVIL</td>
								<td style="text-align: center;"><a
									class="btn btn-success btn-xs margin_button" title="Validar"><i
										class="fas fa-check-square fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Reporte"><i class="fas fa-download fa-lg"
										style="color: black;"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button" title="Eliminar"><i
										class="fas fa-times-circle fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Procesar"><i class="fas fa-sync-alt fa-lg"
										style="color: black;"></i></a></td>
							</tr>
							<tr>
								<td>DEMO</td>
								<td style="text-align: center;"><a
									class="btn btn-success btn-xs margin_button" title="Validar"><i
										class="fas fa-check-square fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Reporte"><i class="fas fa-download fa-lg"
										style="color: black;"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button" title="Eliminar"><i
										class="fas fa-times-circle fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Procesar"><i class="fas fa-sync-alt fa-lg"
										style="color: black;"></i></a></td>
							</tr>
							<tr>
								<td>PRUEBA</td>
								<td style="text-align: center;"><a
									class="btn btn-success btn-xs margin_button" title="Validar"><i
										class="fas fa-check-square fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Reporte"><i class="fas fa-download fa-lg"
										style="color: black;"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button" title="Eliminar"><i
										class="fas fa-times-circle fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Procesar"><i class="fas fa-sync-alt fa-lg"
										style="color: black;"></i></a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="util/footer.jsp" />

<!-- jQuery file upload -->
<link rel="stylesheet" href="<c:url value="/resources/assets/plugins/dropify/dist/css/dropify.min.css" />">
<script src="<c:url value="/resources/assets/plugins/dropify/dist/js/dropify.min.js" />"></script>

<script>
		
    $(function() {
    	//DATA TABLE
        $('#myTable').DataTable();
      	//FILE UPLOAD
        $('.dropify').dropify();
    });
    
    function openNew(){
		limpiarNewModal();
		modalFormat("#modalNew");
	}
	
	function limpiarNewModal(){
		$('#formNew').validator('destroy');
		$('#formNew').validator();
		$('.dropify-clear').click();
	}
	
</script>