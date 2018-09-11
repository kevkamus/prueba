package pe.org.aquarius.sicex.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/conciliacion")
public class ConciliacionController {
	
	final static Logger logger = Logger.getLogger(ConciliacionController.class);

	
	@RequestMapping(value = "pageConciliacion", method = RequestMethod.GET)
	public String pageProyecto() {
		return "conciliacion";
	}
}
