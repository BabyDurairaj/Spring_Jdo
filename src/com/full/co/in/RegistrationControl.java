package com.full.co.in;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegistrationControl {

	@RequestMapping("/")
	public ModelAndView index(HttpServletRequest req, HttpServletResponse res) {
		return new ModelAndView("index");
	}

	@RequestMapping(value = "/Registration", method = RequestMethod.POST)
	public ModelAndView RegisterData(HttpServletRequest req, HttpServletResponse res) {
		String message="Already user exists";
		boolean match = false;
		String email = req.getParameter("Email");
		String name = req.getParameter("Name");
		String password = req.getParameter("Password");
		String mobile = req.getParameter("Phone");
		UserDetails us = new UserDetails(email, name, password, mobile);
        PersistenceManager pm = PMF.get().getPersistenceManager();
        HttpSession session = req.getSession();
        Application app = new Application();
		app.list.add(us);
        Query q = pm.newQuery("SELECT  from " + UserDetails.class.getName() + " where email =='" + email + "'");
		System.out.println(q);
		List<UserDetails> udlist = (List<UserDetails>) q.execute();
		Iterator itr = udlist.iterator();
		System.out.println(udlist);
		if (udlist.size() > 0) {
			match = true;
		}
        if (!match) 
        {
            session.setAttribute("email", email);
			session.setAttribute("name", name);
			session.setAttribute("password", password);
			session.setAttribute("mobile", mobile);
			pm.makePersistent(us);
			pm.close();
			return new ModelAndView("welcome");

		} 
        else
        return new ModelAndView("index","message",message);


}
}