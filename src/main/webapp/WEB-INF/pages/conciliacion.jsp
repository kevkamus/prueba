<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="util/head.jsp" />
<jsp:include page="util/menu.jsp" />

<!-- Bread crumb and right sidebar toggle -->
<div class="row page-titles">
	<div class="col-md-5 col-8 align-self-center">
		<h3 class="text-themecolor">Iniciar</h3>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<c:url value="/conciliacion/pageConciliacion"/>">Conciliación</a></li>
			<li class="breadcrumb-item active">Iniciar</li>
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
										class="col-sm-3 text-right control-label col-form-label">Seleccionar
										tipo:</label> <select class="select2" style="width: 50%;">
										<option>Seleccione un tipo</option>
										<option value="DE">CÓDIGO</option>
										<option value="PR">CÓDIGO Y SERIE</option>
										<option value="PY">LOTE Y CÓDIGO</option>
										<option value="PT">UBICACIÓN Y CÓDIGO</option>
										<option value="PD">SUB-ALMACÉN Y CÓDIGO</option>
									</select>
									<div class="input-group-append">
										<button class="btn btn-info" type="button">
											<i class="fas fa-sync-alt"></i>&nbsp; Conciliar
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
								<th>Proyecto</th>
								<th>Tipo</th>
								<th>Fecha</th>
								<th>Usuario</th>
								<th>Acción</th>
							</tr>
						</thead>
						<tbody>
							<tr class="colCen">
								<td>DEMO 1</td>
								<td>UBICACIÓN Y CÓDIGO</td>
								<td>viernes, 10 de agosto de 2018 10:37:52 a.m.</td>
								<td>ADMIN</td>
								<td><a class="btn btn-success btn-xs margin_button"
									title="Reporte PDF"><i class="fas fa-file-pdf fa-lg"
										style="color: black;"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button"
									title="Reporte Excel"><i class="fas fa-file-excel fa-lg"
										style="color: black;"></i></a> &nbsp;&nbsp; <a
									class="btn btn-danger btn-xs margin_button" title="Eliminar"><i
										class="fas fa-times-circle fa-lg" style="color: black;"></i></a></td>
							</tr>
							<tr class="colCen">
								<td>DEMO 1</td>
								<td>LOTE Y CÓDIGO</td>
								<td>viernes, 10 de agosto de 2018 10:33:44 a.m.</td>
								<td>ADMIN</td>
								<td><a class="btn btn-success btn-xs margin_button"
									title="Reporte PDF"><i class="fas fa-file-pdf fa-lg"
										style="color: black;"></i></a> &nbsp;&nbsp; <a
									class="btn btn-success btn-xs margin_button"
									title="Reporte Excel"><i class="fas fa-file-excel fa-lg"
										style="color: black;"></i></a> &nbsp;&nbsp; <a
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