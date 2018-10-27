package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.DaoImpl.CategoryDaoImpl;
import com.DaoImpl.ProductDaoImpl;
import com.DaoImpl.SupplierDaoImpl;
import com.DaoImpl.UserDaoImpl;
import com.model.Product;
import com.model.User;

@Controller
public class homeController
{
	@Autowired
	UserDaoImpl userDaoImpl;
	
	@Autowired
	ProductDaoImpl productDaoImpl;
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	
	@RequestMapping("/")
	public String home()
	{
		return "home";
	}

	@RequestMapping(value="/register", method = RequestMethod.GET)
	public ModelAndView showRegister()
	{
		ModelAndView mav = new ModelAndView();
		// This class can map the view with it's corresponding Model class
		//Thus we use the object of this class to take reference of model class
		// and name of view
		mav.addObject("user", new User());// class
		mav.setViewName("register");// jsp
		return mav;
		
	}

	@RequestMapping(value="/saveregister", method = RequestMethod.POST)
	public ModelAndView saveRegisterData(@ModelAttribute("user") User user)
	{
       ModelAndView mv = new ModelAndView();
       
       userDaoImpl.insertUser(user);
       mv.setViewName("redirect:/");
       return mv;
	}
	
	@RequestMapping("/gotologin")
	public String gotologin()
	{
		return "login";
	}
	
	
	@RequestMapping("/login")
	public String login(@RequestParam("username") String username, @RequestParam("password")String password)
	{
		System.out.println(username);
		System.out.println(password);
		String user = username;
		String pass= password;
		if(user.equals("admin@admin.com") && pass.equals("admin"))
		{
			
			return "adding";
		}
		
			else
			{
				return "error";
			}
				
		
	}
	
	@ModelAttribute
	public void addAttribute(Model m)
	{
		m.addAttribute("prodList",productDaoImpl.retrieve() );
		m.addAttribute("catList", categoryDaoImpl.retrieve());
		m.addAttribute("satList", supplierDaoImpl.retrieve());
	}
	
	
	
	@RequestMapping("/productcustList")
	public ModelAndView productcustList(@RequestParam("cid") int cid)
	{
		System.out.println(cid);
		ModelAndView mav = new ModelAndView();
		mav.addObject("productList", productDaoImpl.getProdById(cid));
		mav.setViewName("prodCatList");
		return mav;
	}
	@ModelAttribute
	public void addAttributes(Model m)
	{
		m.addAttribute("prodList",productDaoImpl.retrieve() );
	}
	
	
	@RequestMapping(value="/prodDetails/{cid}")
	public ModelAndView prodDet(@PathVariable("cid") int cid)
	{
		ModelAndView mv = new ModelAndView();
		Product product=productDaoImpl.findById(cid);
		mv.addObject("product", product);
		mv.setViewName("prodDetails");
		return mv;
	}
	
	
	@RequestMapping(value="/addToCart")
	public String Cart()
	{
		return "cart";
	}
	
	@RequestMapping(value="/checkout")
	public String Checkout()
	{
		return "checkout";
	}
	
	@RequestMapping(value="/ack")
	public String ack()
	{
		return "acknowledge";
	}

	
}




















