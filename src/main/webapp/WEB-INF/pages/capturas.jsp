<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="util/head.jsp" />
<jsp:include page="util/menu.jsp" />

<!-- Bread crumb and right sidebar toggle -->
<div class="row page-titles">
	<div class="col-md-5 col-8 align-self-center">
		<h3 class="text-themecolor">Capturas</h3>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<c:url value="/capturas/pageCapturas"/>">Proceso</a></li>
			<li class="breadcrumb-item active">Capturas</li>
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
				<br>

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
	
</script>