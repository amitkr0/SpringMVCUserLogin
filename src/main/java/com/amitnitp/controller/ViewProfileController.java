/**
 * 
 */
package com.amitnitp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.amitnitp.model.User;
import com.amitnitp.service.UserService;

/**
 * @author Dell
 *
 */
@Controller
public class ViewProfileController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public ModelAndView viewProfile(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("userid") String userid) {
		ModelAndView mav = new ModelAndView("viewProfile");
		User user = userService.getDetails(userid);
		mav.addObject("user", new User());
		mav.addObject("userid", userid);
		mav.addObject("details", user);
		return mav;
	}

	@RequestMapping(value = "/userhome", method = RequestMethod.GET)
	public ModelAndView updateProfileSuccess(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("userid") String userid) {

		ModelAndView mav = new ModelAndView("welcome");
		User user = userService.getDetails(userid);
		mav.addObject("user", new User());
		mav.addObject("userid", userid);
		mav.addObject("name", user.getName());
		return mav;

	}
}
