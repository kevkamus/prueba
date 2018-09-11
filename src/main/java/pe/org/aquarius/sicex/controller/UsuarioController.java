package pe.org.aquarius.sicex.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/usuario")
public class UsuarioController {
	
	final static Logger logger = Logger.getLogger(UsuarioController.class);

	
	@RequestMapping(value = "pageCambioClave", method = RequestMethod.GET)
	public String pageCambioClave() {
		return "cambio_clave";
	}
	
	@RequestMapping(value = "pageUsuario", method = RequestMethod.GET)
	public String pageUsuario() {
		return "usuario";
	}	
	
}
