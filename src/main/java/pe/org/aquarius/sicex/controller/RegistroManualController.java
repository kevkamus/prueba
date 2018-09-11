package pe.org.aquarius.sicex.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/registro_manual")
public class RegistroManualController {
	
	final static Logger logger = Logger.getLogger(RegistroManualController.class);

	
	@RequestMapping(value = "pageRegistroManual", method = RequestMethod.GET)
	public String pageRegistroManual() {
		return "registro_manual";
	}
}
