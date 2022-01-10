package mypolicy.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import mypolicy.model.Policy;
import mypolicy.service.PolicyService;

@Controller
@RequestMapping("/mypolicy")
public class PolicyController { 
	
	@Autowired  
	PolicyService policyService;  
	
	@GetMapping("/")
	public String getPolicySummary(ModelMap model)
	{
		try {			
			List<Policy> listPolicy = policyService.getPolicySummary();  
			model.addAttribute("listPolicy", listPolicy);		
		}
		catch (Exception ex) {
			System.out.println("Exception at getPolicySummary: " + ex.toString());
			ex.printStackTrace();
		}
		return "policySummary";
	}
	
	@GetMapping("/newPolicy")
	public String goToAddNewPolicy(ModelMap model)
	{
		return "addNewPolicy";
	}
	
	@GetMapping("/policy/{id}")
	public String getPolicyDetails(@PathVariable("id") int id, ModelMap model) 
	{	
		try {			
			Policy policy = policyService.getPolicyDetails(id);  
			model.addAttribute("policy", policy);		
		}
		catch (Exception ex) {
			System.out.println("Exception at getPolicyDetails: " + ex.toString());
			ex.printStackTrace();
		}
		return "policyDetails";
	}
}