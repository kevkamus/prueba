package pe.org.aquarius.sicex.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/importar_excel")
public class ImportarExcelController {
	
	final static Logger logger = Logger.getLogger(ImportarExcelController.class);

	
	@RequestMapping(value = "pageImportarExcel", method = RequestMethod.GET)
	public String pageImportarExcel() {
		return "importar_excel";
	}
}
