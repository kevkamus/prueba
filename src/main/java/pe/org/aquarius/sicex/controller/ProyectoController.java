package pe.org.aquarius.sicex.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/proyecto")
public class ProyectoController {
	
	final static Logger logger = Logger.getLogger(ProyectoController.class);

	
	@RequestMapping(value = "pageProyecto", method = RequestMethod.GET)
	public String pageProyecto() {
		return "proyecto";
	}
}
