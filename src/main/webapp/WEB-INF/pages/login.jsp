<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/resources/assets/images/favicon.png"/>">
    <title>Sicex</title>
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/resources/assets/plugins/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- Custom CSS -->
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" type="text/css" />
    <!-- You can change the theme colors from here -->
    <link href="<c:url value="/resources/css/colors/blue.css"/>" id="theme" rel="stylesheet" type="text/css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <section id="wrapper">
        <div class="login-register" style="background-image:url(resources/assets/images/background/login-register.jpg);">
            <div class="login-box card">
                <div class="card-body">
                    <form class="form-horizontal form-material" id="loginform" action="<c:url value="inicio" />">
                        <h3 class="box-title m-b-20">Ingreso</h3>
                        <div class="form-group ">
                            <div class="col-xs-12">
                                <input class="form-control" type="text" required="" placeholder="Usuario"> </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <input class="form-control" type="password" required="" placeholder="Contraseña"> </div>
                        </div>
                        <div class="form-group text-center m-t-20">
                            <div class="col-xs-12">
                                <button class="btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light" type="submit">Iniciar Sesión</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="<c:url value="/resources/assets/plugins/jquery/jquery.min.js" />" type="text/javascript"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<c:url value="/resources/assets/plugins/popper/popper.min.js" />" type="text/javascript"></script>
    <script src="<c:url value="/resources/assets/plugins/bootstrap/js/bootstrap.min.js" />" type="text/javascript"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="<c:url value="/resources/js/jquery.slimscroll.js" />" type="text/javascript"></script>
    <!--Wave Effects -->
    <script src="<c:url value="/resources/js/waves.js" />" type="text/javascript"></script>
    <!--Menu sidebar -->
    <script src="<c:url value="/resources/js/sidebarmenu.js" />" type="text/javascript"></script>
    <!--stickey kit -->
    <script src="<c:url value="/resources/assets/plugins/sticky-kit-master/dist/sticky-kit.min.js" />" type="text/javascript"></script>
    <script src="<c:url value="/resources/assets/plugins/sparkline/jquery.sparkline.min.js" />" type="text/javascript"></script>
    <!--Custom JavaScript -->
    <script src="<c:url value="/resources/js/custom.min.js" />" type="text/javascript"></script>
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="<c:url value="/resources/assets/plugins/styleswitcher/jQuery.style.switcher.js" />" type="text/javascript"></script>
    
</body>

</html>
