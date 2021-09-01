package com.test.common.controller;

import com.test.common.domain.Coefficients;
import com.test.common.logic.Equations;
import com.test.common.service.CoefficientsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class MainController {

	@Autowired
	private CoefficientsService coefficientsService;

	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(Model model) {

		model.addAttribute("message", "ax^2 + bx + c = 0");
		model.addAttribute("Coefficients", new Coefficients());
		model.addAttribute("listCof", coefficientsService.listCoefficients());

		return "main";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String sendValues(Coefficients coefficients, Model model) {

		if (coefficients.getA()==0){
			return "error";
		}
		String str = Double.toString(coefficients.getB());
		if (str.isEmpty()){
			return "error";
		}

		coefficients.setResult(new Equations().getResultQuadraticEquation(
						coefficients.getA(),
						coefficients.getB(),
						coefficients.getC()
				));

		model.addAttribute("result", coefficients.getResult());
		coefficientsService.addCofficent(coefficients);
		return "ok";
	}
}
