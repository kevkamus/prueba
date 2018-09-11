package pe.org.aquarius.sicex.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/reporte")
public class ReporteController {
	
	final static Logger logger = Logger.getLogger(ReporteController.class);

	
	@RequestMapping(value = "pageReporte", method = RequestMethod.GET)
	public String pageReporte() {
		return "reporte";
	}
}
