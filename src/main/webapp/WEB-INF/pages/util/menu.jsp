<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body class="fix-header fix-sidebar card-no-border logo-center">
    <!-- Preloader - style you can find in spinners.css -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- Main wrapper - style you can find in pages.scss -->
    <div id="main-wrapper">
        <!-- Topbar header - style you can find in pages.scss -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- Logo -->
				<!-- <div class="navbar-header"> PARA CENTRARLO-->
                <div class="navbar">
                    <a class="navbar-brand" href="<c:url value="/inicio"/>">
                        <!-- Logo icon --><b>
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <!-- <img src="../assets/images/logo-icon.png" alt="homepage" class="dark-logo" /> -->
                            <!-- Light Logo icon -->
                            <img src="<c:url value="/resources/assets/images/logo-light-icon.png"/>" alt="homepage" class="light-logo" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text --><span>
                         <!-- dark Logo text -->
                         <!-- <img src="../assets/images/logo-text.png" alt="homepage" class="dark-logo" /> -->
                         <!-- Light Logo text -->    
                         <img src="<c:url value="/resources/assets/images/logo-light-text.png"/>" class="light-logo" alt="homepage" /></span></a>
                </div>
                <!-- End Logo -->
				
                <div class="navbar-collapse">
                    <!-- toggle and nav items -->
					<ul class="navbar-nav mr-auto mt-md-0">
						<!-- This is MENU PARA MOVIL  -->
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
                    </ul>
                    <!-- User profile and search -->
                    <ul class="navbar-nav my-lg-0">
                        <!-- CONF MENU -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">ADMIN <i class="mdi mdi-account-circle mdi-23px"></i></a>
							<div class="dropdown-menu dropdown-menu-right scale-up"> 
								<a class="dropdown-item" href="#" onclick="openConfProy();"><i class="fas fa-cog" style="color:black;"></i>&nbsp; Proyecto</a> 
								<a class="dropdown-item" href="login.html"><i class="fas fa-power-off" style="color:black;"></i>&nbsp; Cerrar sesión</a>
							</div>
						</li>
                    </ul>
					
                </div>
            </nav>
        </header>
        <!-- End Topbar header -->	
		<!-- MODAL CONF PROYECTO -->
		<div id="modalConfProyecto" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel"><i class="mdi mdi-folder-account" style="font-size:larger;"></i>&nbsp; Configuración de proyecto</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					</div>
					<div class="modal-body">
						<div class="col-md-12">
							<div class="card card-body">
								<form id="formConfProy" class="form-horizontal" data-toggle="validator" role="form">
									<div class="form-group row">
										<label for="cboConfProy" class="col-sm-3 text-right control-label col-form-label">Proyecto:</label>
										<div class="col-sm-9">
											<select id="cboConfProy" class="form-control select2" style="width: 100%" required>
												<option value="">Seleccione un proyecto</option>
												<option value="DE">DEMO 1</option>
												<option value="PR">PRUEBA</option>
												<option value="PY">DEMO 2</option>
												<option value="PL">PRUEBA 2</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<div class="offset-sm-3 col-sm-3">
											<button type="submit" class="btn btn-info waves-effect waves-light m-t-10">Aceptar</button>
										</div>
										<div class="col-sm-3">
											<button type="button" data-dismiss="modal" class="btn btn-danger waves-effect waves-light m-t-10">Cancelar</button>
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
		<!-- END MODAL CONF PROYECTO -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li>
                            <a class="has-arrow" href="#" aria-expanded="false"><i class="mdi mdi-security"></i><span class="hide-menu">Seguridad </span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<c:url value="/usuario/pageCambioClave"/>"><i class="mdi mdi-account-key"></i><span class="hide-menu">&nbsp; Cambiar clave</a></li>
                                <li><a href="<c:url value="/usuario/pageUsuario"/>"><i class="mdi mdi-account-plus"></i><span class="hide-menu">&nbsp; Usuario</a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow " href="#" aria-expanded="false"><i class="fas fa-cogs"></i><span class="hide-menu"> Configuración </span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<c:url value="/proyecto/pageProyecto"/>"><i class="fas fa-briefcase"></i><span class="hide-menu">&nbsp; Proyecto</a></li>
                                <li><a href="<c:url value="/kardex/pageKardex"/>"><i class="fas fa-database"></i><span class="hide-menu">&nbsp; Base de datos cliente</a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow" href="#" aria-expanded="false"><i class="mdi mdi-chart-bubble"></i><span class="hide-menu">Proceso </span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<c:url value="/importar_excel/pageImportarExcel"/>"><i class="fas fa-cloud-upload-alt"></i><span class="hide-menu">&nbsp; Importar excel</a></li>
                                <li><a href="<c:url value="/registro_manual/pageRegistroManual"/>">&nbsp;<i class="fas fa-file-alt"></i><span class="hide-menu">&nbsp;&nbsp; Registro manual</a></li>
                                <li><a href="<c:url value="/capturas/pageCapturas"/>">&nbsp;<i class="fas fa-search-plus"></i><span class="hide-menu">&nbsp; Capturas</a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow" href="#" aria-expanded="false"><i class="mdi mdi-file-tree"></i><span class="hide-menu">Conciliación </span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<c:url value="/conciliacion/pageConciliacion"/>"><i class="fas fa-caret-square-right"></i><span class="hide-menu">&nbsp; Iniciar</a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow " href="#" aria-expanded="false"><i class="mdi mdi-clipboard-text"></i><span class="hide-menu">Reportes </span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<c:url value="/reporte/pageReporte"/>"><i class="fas fa-recycle"></i><span class="hide-menu">&nbsp; Seleccionar</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
                <!-- Page wrapper  -->
        <div class="page-wrapper">
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->

<script>

	function openConfProy(){
		limpiarConfProyModal();
		$('#modalConfProyecto').modal({
			show : true,
			backdrop : 'static',
			keyboard : false
		});
	}
	
	function limpiarConfProyModal(){
		$('#formConfProy').validator('destroy');
		$('#formConfProy').validator();
		$('#cboConfProy').val('');
	}
	
</script>