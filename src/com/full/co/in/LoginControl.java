package com.full.co.in;

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
public class LoginControl {
@RequestMapping(value = "/Login", method=RequestMethod.POST)
public ModelAndView Sign(HttpServletRequest req , HttpServletResponse res){
	String email1 =req.getParameter("email");
	String password1 = req.getParameter("password");
	HttpSession session = req.getSession();
	session.setAttribute("email",email1);
	session.setAttribute("password", password1);
	PersistenceManager pm = PMF.get().getPersistenceManager();
	Query q = pm.newQuery("SELECT  from " + UserDetails.class.getName() + " where email =='" + email1
			+ "' && password== '" + password1 + "'");
	List<UserDetails> udlist =(List<UserDetails>)q.execute();
	Iterator itr = udlist.iterator();
	while(itr.hasNext())
	{
		UserDetails udlist1=(UserDetails)itr.next();
		session.setAttribute("name", udlist1.getName());
		session.setAttribute("mobile", udlist1.getMobile());
	}
			
	
	return new ModelAndView("/welcome");
	
}
}
