package pe.org.aquarius.sicex.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/kardex")
public class KardexController {
	
	final static Logger logger = Logger.getLogger(KardexController.class);

	
	@RequestMapping(value = "pageKardex", method = RequestMethod.GET)
	public String pageKardex() {
		return "base_datos";
	}
}
