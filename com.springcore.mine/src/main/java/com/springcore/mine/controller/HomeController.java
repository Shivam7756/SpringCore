package com.springcore.mine.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller//this makes the following class as controller(back end controller)
@RequestMapping("/controller")
public class HomeController {
      
	@RequestMapping(path = "/home",method = RequestMethod.GET)//this will work when /home url is used , or used to create home url
	//This will use GET REQUEST AS the Browser always uses GET request for getting the view page
	//The Request type should be same as that sent from the client server
	  public String home()//returns the name of the view
	  {
		 for(int i = 0;i<2;i++)
		 {
			 if(i==0)
			 {
				 System.out.println("home function working");
				 return "index";			     
			 }
		 }
		 
		 System.out.println("index2 printed"); 
		 return "index2";
		 
	  }
	
	@RequestMapping("/about")
	public String about(Model model)//model class object used to pass data from controller to view
	{
		System.out.println("This is about.jsp controller");
		model.addAttribute("name","CDAC");
		model.addAttribute("id",165474);//model.addAttribute(String key,object Value);
		List<String> friend = new ArrayList<String>();
		friend.add("a");
		friend.add("b");
		friend.add("c");
		model.addAttribute("f",friend);
		return "about";//this function will ask view to display about.jsp
	}
	
	@RequestMapping("/services")
	public String services()
	{
		System.out.println("This is services.jsp controller");
		return "services";
	}
	
	@RequestMapping("/help")
	public ModelAndView help()//sending data from controller to view
	{
		System.out.println("This is help.jsp controller");
		ModelAndView modelandview = new ModelAndView();
		LocalDateTime date = LocalDateTime.now();
		modelandview.addObject("date",date);
		modelandview.addObject("name","uttara");
		modelandview.addObject("rollId",1234);
		modelandview.setViewName("help");
		return modelandview;
	}
	
	@RequestMapping("/down")
	public ModelAndView down()
	{
		System.out.println("The server down page");
		ModelAndView modelAndView = new ModelAndView();
		List<String> l1 = new ArrayList<String>();
		l1.add("A");
		l1.add("B");
		modelAndView.addObject("l",l1);
		modelAndView.setViewName("down");
		return modelAndView;
	}
	
	@RequestMapping("/intro")
	public ModelAndView intro()
	{
	  System.out.println("This is the intro page");
	  ModelAndView modelAndView = new ModelAndView();
	  modelAndView.addObject("l2","darshan");
	  modelAndView.addObject("origin","uttar pradesh");
	  modelAndView.addObject("pincode","200010");
	  LocalDateTime now = LocalDateTime.now();
	  List<Integer> l2 = new ArrayList<Integer>();
	  l2.add(1);
	  l2.add(2);
	  l2.add(3);
	  l2.add(4);
	  modelAndView.addObject("l3",l2);
	  modelAndView.addObject("date",now);
	  modelAndView.setViewName("intro");
	  return modelAndView;
	}
	

}
