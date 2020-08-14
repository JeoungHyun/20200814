package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.DevService;
import logic.User;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	private DevService service;
	
	@GetMapping("adminpage")
	public ModelAndView list(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<User> list = service.getUserList();
		mav.addObject("list", list);
		return mav;
	}
}
