<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="util/head.jsp" />
<jsp:include page="util/menu.jsp" />

<!-- Bread crumb and right sidebar toggle -->
<div class="row page-titles">
    <div class="col-md-5 col-8 align-self-center">
        <h3 class="text-themecolor">Cambio de clave</h3>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<c:url value="/usuario/pageCambioClave"/>">Seguridad</a></li>
            <li class="breadcrumb-item active">Cambio de clave</li>
        </ol>
    </div>
</div>
<!-- End Bread crumb and right sidebar toggle -->
<!-- Start Page Content -->
<!-- Row -->
<div class="row">
    <!-- Column -->
	<div class="col-lg-12 col-md-12">
		<section id="wrapper">
			<div class="login-box card">
				<div class="card-body">
					<form id="loginform" action="<c:url value="/inicio"/>" class="form-horizontal form-material" data-toggle="validator" role="form">
						<h3 class="box-title m-b-20">Nueva clave</h3>
						<div class="form-group">
							<div class="col-xs-12">
								<input id="pswd1" class="form-control" type="password" required="required" placeholder="Ingresar nueva clave">
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-12">
								<input id="pswd2" class="form-control" type="password" required="" placeholder="Confirme nueva clave">
							</div>
						</div>
						<div class="form-group text-center m-t-20">
							<div class="col-xs-12">
								<button
									class="btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light"
									type="button" onclick="change_pass()">Modificar</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</section>
	</div>
</div>
<!-- End Right sidebar -->	

<jsp:include page="util/footer.jsp" />

<script type="text/javascript">

function change_pass(){
	
	var hasErrors = $('#loginform').validator('validate').has('.has-error').length
	if (!hasErrors)
	{
		if($('#pswd1').val()!=$('#pswd2').val()){
			mnsjWar("La contraseña no coincide");	
			return
		}
		else
		{
			$("#loginform").submit();
		}
	}
}	

</script>