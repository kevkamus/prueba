<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="util/head.jsp" />
<jsp:include page="util/menu.jsp" />

<!-- Bread crumb and right sidebar toggle -->
<div class="row page-titles">
	<div class="col-md-5 col-8 align-self-center">
		<h3 class="text-themecolor">Registro manual</h3>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<c:url value="/registro_manual/pageRegistroManual"/>">Proceso</a></li>
			<li class="breadcrumb-item active">Registro manual</li>
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
										class="col-sm-3 text-right control-label col-form-label">Código:</label>
									<input type="text" class="form-control"
										placeholder="Ingrese un código...">
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
									<i class="fas fa-file"></i>&nbsp; Nuevo registro
								</h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
							</div>
							<div class="modal-body">

								<div class="col-md-12">
									<div class="card card-body">
										<form id="formNew" class="form-horizontal" data-toggle="validator" role="form">
											<div class="form-group row">

												<label for="codi"
													class="col-sm-4 text-right control-label col-form-label">Código:</label>
												<div class="col-sm-8">
													<div class="input-group">
														<input type="text" class="form-control" id="codi" required
															placeholder="Ingrese un código">
														<div class="input-group-append">
															<button type="button"
																class="btn btn-primary waves-effect waves-light">
																<i class="fas fa-search"></i>
															</button>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="desc"
													class="col-sm-4 text-right control-label col-form-label">Descripción:</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" id="desc"
														placeholder="Ingrese una descripción">
												</div>
												<label for="unid"
													class="col-sm-4 text-right control-label col-form-label">U.M.:</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" id="unid"
														placeholder="Ingrese una U.M.">
												</div>
												<label for="cant"
													class="col-sm-4 text-right control-label col-form-label">Cantidad:</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" id="cant"
														placeholder="Ingrese una cantidad">
												</div>
												<label for="ubic"
													class="col-sm-4 text-right control-label col-form-label">Ubicación:</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" id="ubic"
														placeholder="Ingrese una ubicación">
												</div>
												<label for="cboAlma"
													class="col-sm-4 text-right control-label col-form-label">Almacén:</label>
												<div class="col-sm-8">
													<select id="cboAlma" class="form-control select2" style="width: 100%">
														<option value="">Seleccione un almacén</option>
														<option value="DE">0001</option>
														<option value="PR">0002</option>
														<option value="PY">0003</option>
													</select>
												</div>
												<label for="cboSubA"
													class="col-sm-4 text-right control-label col-form-label">SubAlmacén:</label>
												<div class="col-sm-8">
													<select id="cboSubA" class="form-control select2" style="width: 100%">
														<option value="">Seleccione un sub-almacén</option>
														<option value="DE">A1-50</option>
														<option value="PR">A2-30</option>
														<option value="PY">A3-10</option>
													</select>
												</div>
												<label for="lote"
													class="col-sm-4 text-right control-label col-form-label">Lote:</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" id="lote"
														placeholder="Ingrese un lote">
												</div>
												<label for="seri"
													class="col-sm-4 text-right control-label col-form-label">Serie:</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" id="seri"
														placeholder="Ingrese una serie">
												</div>
												<label for="cboEsta"
													class="col-sm-4 text-right control-label col-form-label">Estado:</label>
												<div class="col-sm-8">
													<select id="cboEsta" class="form-control select2" style="width: 100%">
														<option value="">Seleccione un estado</option>
														<option value="DE">REGULAR</option>
														<option value="PR">BUENO</option>
														<option value="PY">MALO</option>
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
					<table id="myTable" class="table table-bordered table-striped">
						<thead>
							<tr class="colCen">
								<th>Código</th>
								<th>Descripción</th>
								<th>U.M.</th>
								<th>Ubicación</th>
								<th>Cantidad</th>
								<th>Almacén</th>
								<th>Sub-Almacén</th>
								<th>Lote</th>
								<th>Serie</th>
								<th>Estado</th>
								<th>Acción</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="colCen">10102-J4200</td>
								<td>MOTOR BARE GA16DNE</td>
								<td class="colCen">UND</td>
								<td class="colCen">A102AA</td>
								<td class="colCen">12</td>
								<td class="colCen">0001</td>
								<td class="colCen">A1-50</td>
								<td class="colCen">L100</td>
								<td class="colCen"></td>
								<td class="colCen">BUENO</td>
								<td class="colCen"><a
									class="btn btn-danger btn-xs margin_button" title="Eliminar"><i
										class="fas fa-times-circle fa-lg" style="color: black;"></i></a></td>
							</tr>
							<tr>
								<td class="colCen">20101-J4201</td>
								<td>MOTOR CORE RA15DNE</td>
								<td class="colCen">UND</td>
								<td class="colCen">A102AA</td>
								<td class="colCen">8</td>
								<td class="colCen">0001</td>
								<td class="colCen">A1-50</td>
								<td class="colCen">L100</td>
								<td class="colCen"></td>
								<td class="colCen">BUENO</td>
								<td class="colCen"><a
									class="btn btn-danger btn-xs margin_button" title="Eliminar"><i
										class="fas fa-times-circle fa-lg" style="color: black;"></i></a></td>
							</tr>
							<tr>
								<td class="colCen">30102-J4202</td>
								<td>MOTOR ROTT LA18DNE</td>
								<td class="colCen">UND</td>
								<td class="colCen">A102AA</td>
								<td class="colCen">15</td>
								<td class="colCen">0001</td>
								<td class="colCen">A1-50</td>
								<td class="colCen">L100</td>
								<td class="colCen"></td>
								<td class="colCen">BUENO</td>
								<td class="colCen"><a
									class="btn btn-danger btn-xs margin_button" title="Eliminar"><i
										class="fas fa-times-circle fa-lg" style="color: black;"></i></a></td>
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
		$('#codi').val('');
		$('#desc').val('');
		$('#unid').val('');
		$('#cant').val('');
		$('#ubic').val('');
		$('#cboAlma').val('');
		$('#cboSubA').val('');
		$('#lote').val('');
		$('#seri').val('');
		$('#cboEsta').val('');
	}

</script>