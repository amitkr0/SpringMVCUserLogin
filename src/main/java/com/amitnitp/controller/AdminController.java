/**
 * 
 */
package com.amitnitp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.amitnitp.model.User;
import com.amitnitp.service.UserService;

/**
 * @author Dell
 *
 */
@Controller
public class AdminController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/allrecord", method = RequestMethod.GET)
	public ModelAndView getAllRecords() {

		List<User> list = userService.getRecords();
		/*for (User u : list) {
			System.out.println(u.getUsername() + "  " + u.getPassword());
		}*/
		ModelAndView mav = new ModelAndView("allRecords");
		mav.addObject("list", list);
		return mav;
	}
}
