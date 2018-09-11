package pe.org.aquarius.sicex.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/capturas")
public class CapturasController {
	
	final static Logger logger = Logger.getLogger(CapturasController.class);

	
	@RequestMapping(value = "pageCapturas", method = RequestMethod.GET)
	public String pageCapturas() {
		return "capturas";
	}
}
