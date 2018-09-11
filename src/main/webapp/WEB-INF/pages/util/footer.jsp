<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

                <!-- End PAge Content -->
            </div>
            <!-- End Container fluid  -->
            <!-- footer -->
            <footer class="footer"> © 2018 Sicex by aquariusconsulting.com.pe </footer>
            <!-- End footer -->
        </div>
        <!-- End Page wrapper  -->
    </div>
    <!-- End Wrapper -->
</body>

</html>

<!-- CSS personal-->
<link href="<c:url value="/resources/css/propio.css"/>" rel="stylesheet">
<!--JS personal -->
<script src="<c:url value="/resources/js/propio.js" />" type="text/javascript"></script>

<!--Validator -->
<script src="<c:url value="/resources/js/validator.min.js" />" type="text/javascript"></script>
<!--Mensajes -->
<script src="<c:url value="/resources/js/toastr.js" />" type="text/javascript"></script>
<link href="<c:url value="/resources/assets/plugins/toast-master/css/jquery.toast.css" />" rel="stylesheet">
<script src="<c:url value="/resources/assets/plugins/toast-master/js/jquery.toast.js" />" type="text/javascript"></script>

<!-- Datatable -->
<script src="<c:url value="/resources/assets/plugins/datatables/datatables.min.js" />" type="text/javascript"></script>

<script type="text/javascript">

jQuery.fn.DataTable.ext.pager.numbers_length = 3;

jQuery.fn.dataTableExt.oApi.fnPagingInfo = function(oSettings) {
	return {
		"iStart" : oSettings._iDisplayStart,
		"iEnd" : oSettings.fnDisplayEnd(),
		"iLength" : oSettings._iDisplayLength,
		"iTotal" : oSettings.fnRecordsTotal(),
		"iFilteredTotal" : oSettings.fnRecordsDisplay(),
		"iPage" : oSettings._iDisplayLength === -1 ? 0 : Math
				.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength),
		"iTotalPages" : oSettings._iDisplayLength === -1 ? 0 : Math
				.ceil(oSettings.fnRecordsDisplay()
						/ oSettings._iDisplayLength)
	};
};

$.extend( true, $.fn.dataTable.defaults, {	
	"bSort":false,
	
    "bPaginate":true,
    "sPaginationType":"full_numbers",
   	"bJQueryUI": true,
   	
	"bStateSave" : false,
	"bFilter" : false,
	"bProcessing" : true,
	"iDisplayStart" : 0,
	"iDisplayLength" : 10,
	"dom": "rt<'bottom'ip><'clear'>",
	"scrollCollapse": true,
	
	"oLanguage": {
		"sProcessing":     "Procesando...",
	    "sLengthMenu":     "Mostrar _MENU_ registros",
	    "sZeroRecords":    "No se encontraron resultados",
	    "sEmptyTable":     "Ningún dato disponible en esta tabla",
		"sInfo":           "Registros del _START_ al _END_ de _TOTAL_ registros",
	    "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
	    "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
	    "sInfoPostFix":    "",
	    "sSearch":         "Buscar:",
	    "sUrl":            "",
	    "sInfoThousands":  ",",
	    "sLoadingRecords": "Cargando...",
	    "oPaginate": {
	        "sFirst":    "Primero",
	        "sLast":     "Último",
	        "sNext":     "Siguiente",
	        "sPrevious": "Anterior"
	    },
	    "oAria": {
	        "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
	        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
	    }
	}
} );


</script>