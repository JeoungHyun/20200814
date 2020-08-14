package controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Coworking;
import logic.DevService;

@Controller // controller 역할을 수행하는 @Component 객체이다.
@RequestMapping("coworking") // path에 cart으로 들어오는 요청을 처리해준다. (/cart/)
public class CoworkingController {

	@Autowired
	private DevService service;
	
	@GetMapping("*")
	public ModelAndView list(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@GetMapping("main")
	public ModelAndView main() {
		
		return null;
	}
	
	@GetMapping("register")
	public String form(Model model) {
		model.addAttribute(new Coworking());
		return null;
	}
	
	@GetMapping("details")
	public ModelAndView form(Integer gno) {
		ModelAndView mav = new ModelAndView();
		try {
			Coworking cwk = service.getdetails(gno);
			System.out.println(cwk);
			mav.addObject("cwk",cwk);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@PostMapping("register")
	public ModelAndView add(@Valid Coworking coworking, BindingResult bresult) {
		ModelAndView mav = new ModelAndView();
		if (bresult.hasErrors()) {
			bresult.reject("error.input.user");
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		try {
			int cono = service.getmaxcono() +1;
			coworking.setGno(cono);
			service.coworkingInsert(coworking);
			mav.setViewName("redirect:main.dev");
		} catch (DataIntegrityViolationException e) {
			e.printStackTrace();
		}
		return mav;
	}
}
