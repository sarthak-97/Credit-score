package org.task.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.task.models.UserDet;

/**
 * 
 * @author sarthak-pc
 *
 */
@Controller
public class MainController {
	
	@Autowired
	private SessionFactory sessionFactory;
	private UserDet userdet;
	
	/**
	 * 
	 * @return
	 */
	
	 @RequestMapping(value = "/", method = RequestMethod.GET)
		public ModelAndView a() {
			  ModelAndView model = new ModelAndView("index");
			
			     return model;
	 }

	 /**
	  * 
	  * @param userdet
	  * @return
	  */
	 
	 @RequestMapping(value = "/res", method = RequestMethod.POST)
		public ModelAndView result(@ModelAttribute("userdet") org.task.models.UserDet userdet) {
			Session session = sessionFactory.openSession();
			ModelAndView model = new ModelAndView("index");
			
			int maximum=900;
			int minimum=500;

			Random rn = new Random();
			int range = maximum - minimum + 1;
			int randomNum =  rn.nextInt(range) + minimum;
			if (session.get(UserDet.class, userdet.getAdharNumber()) == null) {
				session.beginTransaction();
				userdet.setScore( randomNum);
				session.save(userdet);
				
				session.getTransaction().commit();
				model.addObject("score", "Credit score is " + randomNum);
			}
			else
			{
				
				userdet = (UserDet) session.get(UserDet.class,userdet.getAdharNumber());
				int cscore=userdet.getScore();
				System.out.println(cscore);
				model.addObject("score", "Your Credit score is " + cscore);
				
			}
				
			return model;

		}
}
