package com.freemarker.application;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FreemarkerDemoApplicationController {

	@RequestMapping("/get")
	public ModelAndView getDemoPage(ModelMap userData) {
		userData.put("userName", "human");
		userData.put("acctKey", 208);
		return new ModelAndView("test", userData);
	}
	
}
