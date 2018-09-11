package pe.org.aquarius.sicex.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	final static Logger logger = Logger.getLogger(LoginController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String visitHome() {		
		return "login";
	}

	@RequestMapping(value = "/inicio", method = RequestMethod.GET)
	public String inicio() {		
		return "inicio";
	}
}
