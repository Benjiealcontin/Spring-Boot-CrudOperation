package com.operation.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.operation.Model.CrudModel;
import com.operation.Respository.CrudRespo;

@Controller
public class CrudController {
	
	@Autowired
	private CrudRespo repo;
	
	
	@RequestMapping("/")
	public String HomePage() {
		return "home";
	}
	
	@RequestMapping("/Savedata")
	@ResponseBody
	private String savedata(CrudModel model) {
		repo.save(model);	
		return "success";
		
	}
	
	@RequestMapping("/showdata")
	public ModelAndView showdata() {
		ModelAndView mv = new ModelAndView();
		List<CrudModel> datalist = repo.findAll();
		
		mv.addObject("data", datalist);
		mv.setViewName("showdata");	
		return mv;
		
	}
	
	@RequestMapping("/delete")
	public ModelAndView deletedata(@RequestParam("id") int id) {
		repo.deleteById(id);
		ModelAndView mv = new ModelAndView();
		List<CrudModel> dataList = repo.findAll();
		mv.addObject("data",dataList);
		mv.setViewName("showdata");	
		return mv;
		
	}
	
	@RequestMapping("/UpdateData")
	@ResponseBody
	public String Updatedata(@RequestParam("id")int id,@RequestParam("Firstname")String Firstname,
			@RequestParam("Lastname")String Lastname,@RequestParam("Age")int Age,@RequestParam("vehicle")String Vehicle) {
		CrudModel myUpdateData = repo.findByid(id);
		myUpdateData.setFirstname(Firstname);
		myUpdateData.setLastname(Lastname);
		myUpdateData.setAge(Age);
		myUpdateData.setVehicle(Vehicle);
		repo.save(myUpdateData);	
		return "success";
		
	}

}
