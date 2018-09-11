<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="util/head.jsp" />
<jsp:include page="util/menu.jsp" />

<!-- Bread crumb and right sidebar toggle -->
<div class="row page-titles">
	<div class="col-md-5 col-8 align-self-center">
		<h3 class="text-themecolor">Seleccionar</h3>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<c:url value="/reporte/pageReporte"/>">Reportes</a></li>
			<li class="breadcrumb-item active">Seleccionar</li>
		</ol>
	</div>
</div>
<!-- Start Page Content -->
<div class="row">
	<!-- Column -->
	<div class="col-lg-12 col-md-12">
		<div class="card">
			<div class="card-body">

				<div class="table-responsive m-t-40">
					<table id="myTable" class="table table-bordered table-striped">
						<thead>
							<tr class="colCen">
								<th>Proyecto</th>
								<th>Tipo de conciliación</th>
								<th>Fecha</th>
								<th>Usuario</th>
								<th>Tipo de reporte</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>DEMO 1</td>
								<td>UBICACIÓN Y CÓDIGO</td>
								<td>viernes, 10 de agosto de 2018 10:37:52 a.m.</td>
								<td>ADMIN</td>
								<td style="text-align: center;"><a
									class="btn btn-success btn-xs margin_button"
									title="Estatus por tipo de conciliación"><i
										class="fas fa-clipboard-list fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Resumen valorizado"><i
										class="fas fa-newspaper fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Estatus valorizado"><i
										class="fas fa-dollar-sign fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-warning btn-xs margin_button"
									title="Ítems en mal estado"><i
										class="fas fa-exclamation-triangle fa-lg"
										style="color: black;"></i></a></td>
							</tr>
							<tr>
								<td>DEMO 1</td>
								<td>LOTE Y CÓDIGO</td>
								<td>viernes, 10 de agosto de 2018 10:33:44 a.m.</td>
								<td>ADMIN</td>
								<td style="text-align: center;"><a
									class="btn btn-success btn-xs margin_button"
									title="Estatus por tipo de conciliación"><i
										class="fas fa-clipboard-list fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Resumen valorizado"><i
										class="fas fa-newspaper fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-success btn-xs margin_button"
									title="Estatus valorizado"><i
										class="fas fa-dollar-sign fa-lg" style="color: black;"></i></a>
									&nbsp;&nbsp; <a class="btn btn-warning btn-xs margin_button"
									title="Ítems en mal estado"><i
										class="fas fa-exclamation-triangle fa-lg"
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
	
	//DATA TABLE
    $(function() {
        $('#myTable').DataTable();
    });
	
	//FILE UPLOAD
    $(document).ready(function() {
        // Basic
        $('.dropify').dropify();

        // Translated
        $('.dropify-fr').dropify({
            messages: {
                default: 'Glissez-déposez un fichier ici ou cliquez',
                replace: 'Glissez-déposez un fichier ou cliquez pour remplacer',
                remove: 'Supprimer',
                error: 'Désolé, le fichier trop volumineux'
            }
        });

        // Used events
        var drEvent = $('#input-file-events').dropify();

        drEvent.on('dropify.beforeClear', function(event, element) {
            return confirm("Do you really want to delete \"" + element.file.name + "\" ?");
        });

        drEvent.on('dropify.afterClear', function(event, element) {
            alert('File deleted');
        });

        drEvent.on('dropify.errors', function(event, element) {
            console.log('Has Errors');
        });

        var drDestroy = $('#input-file-to-destroy').dropify();
        drDestroy = drDestroy.data('dropify')
        $('#toggleDropify').on('click', function(e) {
            e.preventDefault();
            if (drDestroy.isDropified()) {
                drDestroy.destroy();
            } else {
                drDestroy.init();
            }
        })
    });
</script>