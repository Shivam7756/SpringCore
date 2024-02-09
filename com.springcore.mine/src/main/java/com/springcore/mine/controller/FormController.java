package com.springcore.mine.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springcore.mine.model.User;

@Controller
@RequestMapping("/formcontroller")
public class FormController {
      
	@RequestMapping("/form")
	public String showForm()
	{
		System.out.println("This is the data from view to Controller");
		return "form";
	}
	
	@ModelAttribute//by putting model attribute on top of method 
	//if we have to use a particular code repeatedly then it need not be written in each method where it is required
	//simply we can make a method and call it once while applying @ModelAttribute on top of it
	public void commonData(Model m)
	{
		m.addAttribute("r1","learnToCode");
		m.addAttribute("r2","Home for Programmer");
		
	}
	
//	@RequestMapping(path="/submit", method=RequestMethod.POST)
//	public String submit(HttpServletRequest request)
//	{
//		String email = request.getParameter("email");
//		String password = request.getParameter("password");
//		System.out.println(email + ":email");
//		System.out.println(password + ":password");
//		return ""; 
//	}

	@RequestMapping(path="/submit",method=RequestMethod.POST)
	public String submit(@RequestParam("email") String Email,@RequestParam("userName") String userName,@RequestParam("userPassword") String password, Model model)
	//this is the variable that is mapped to the fields in our form
	{
		System.out.println(Email + ":Email");
		System.out.println(userName + ":userName");
		System.out.println(password + ":userPassword");
		model.addAttribute("m1",Email);
		model.addAttribute("m2",userName);
		model.addAttribute("m3",password);
		return "success";
	}
	
	@RequestMapping("/form2")
	public String form2()
	{
		System.out.println("This is handler method for form2");
		return "form2";
	}
	
	@RequestMapping("/form3")
	public String form3()
	{
		return "form3";
	}
	
	
@RequestMapping(path = "/submit2",method=RequestMethod.POST)	
public String submit2(@RequestParam("email") String email,@RequestParam("age") String age ,Model model)
{
	model.addAttribute("m1",email);
	model.addAttribute("m2",age);
	System.out.println(email + " : " + age);
	return "detail";
}

@RequestMapping(path="/submit3",method=RequestMethod.POST)
public String submit3(@ModelAttribute User user,Model model)//@ModelAtttribute here passed as parameter,
//it is used for sending data from view to controller by simply using it with the entity class ,
//which has been mapped with the fields of the view page or form
{
	System.out.println(user);
	model.addAttribute("user",user);
	return "success2";
}


}
