package thangnd.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import thangnd.util.ConvertTextToDB;

@Controller
public class ConvertDBController {
	@RequestMapping(value="/convert")
	public String getConvert(){
		return "form";
	}
	@RequestMapping(value="/convert-value")
	public String ConvertValue(@RequestParam("value_text") String text, HttpServletRequest request){
		System.out.println("thangnd tsess: " + text);
		ConvertTextToDB convert_text = new ConvertTextToDB();
		String text_convert = convert_text.convert(text);
		request.setAttribute("result_convertText", text_convert);
		System.out.println(text_convert);
		return "form";
	}
}
