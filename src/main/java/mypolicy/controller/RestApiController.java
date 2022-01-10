package mypolicy.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import mypolicy.model.Policy;
import mypolicy.service.PolicyService;

@RestController
@RequestMapping("/api")
public class RestApiController {
	
	@Autowired  
	PolicyService policyService;  
	
	@GetMapping("/")
	public String testAPI() {
		return "RESTful API for mypolicy";  
	}
	
	@DeleteMapping("/policy/{id}")
	public ResponseEntity<HttpStatus> removePolicy(@PathVariable("id") int id) 
	{		
		try {
			policyService.removePolicy(id);
			return new ResponseEntity<>(HttpStatus.OK);
		}
		catch (Exception ex) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@PutMapping("/policy/{id}/{status}")
	public ResponseEntity<Policy> updatePolicyStatus(@PathVariable("id") int id, @PathVariable("status") String status) 
	{
		Boolean hasFoundPolicy = policyService.updatePolicyStatus(id, status);
		
		if (hasFoundPolicy) {
			return new ResponseEntity<>(HttpStatus.OK);
		}
		else {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}			
	}
	
	@PostMapping("/policy")
	public ResponseEntity<HttpStatus> createPolicy(HttpServletRequest request) //@RequestBody Policy policy, 
	{	
		try {						
			String category = request.getParameter("category");
			String type = request.getParameter("type");
			String name = request.getParameter("name");
			String ICNo = request.getParameter("ICNo");
			String mobileNo = request.getParameter("mobileNo");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			
			policyService.createPolicy(category, type, name, ICNo, mobileNo, email, address);
			return new ResponseEntity<>(HttpStatus.OK);
		}
		catch (Exception ex) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	/*@GetMapping("/policy")
	public ResponseEntity<List<Policy>> getPolicySummary() {
		try {
			List<Policy> listPolicy = policyService.getPolicySummary();  
			if (!listPolicy.isEmpty()) {
				return new ResponseEntity<>(listPolicy, HttpStatus.OK);
			}
			else {
				return new ResponseEntity<>(HttpStatus.NO_CONTENT);
			} 
		}
		catch (Exception ex) {
			return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@GetMapping("/policy/{id}")
	public ResponseEntity<Policy> getPolicyDetails(@PathVariable("id") int id)
	{
		try {
			Policy policy = policyService.getPolicyDetails(id);  
			return new ResponseEntity<>(policy, HttpStatus.OK);
		}
		catch (Exception ex) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
	}*/
}