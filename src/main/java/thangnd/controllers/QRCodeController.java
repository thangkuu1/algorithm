package thangnd.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class QRCodeController {
	@RequestMapping(value="/qr-code")
	public String QRCode(@RequestParam("value_text") String text, HttpServletRequest request){
		System.out.println("value qrcode: " + text);
		request.setAttribute("result_qrcode", text);
		return "qrcode";
	}
	
	@RequestMapping(value="/qr-code-form")
	public String QRCodeForm(){
		return "qrcodeform";
	}
}
