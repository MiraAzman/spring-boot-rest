package mypolicy.service;  
import java.util.ArrayList;  
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mypolicy.model.Policy;  
import mypolicy.repository.PolicyRepository;  
//defining the business logic  

@Service  
public class PolicyService {  
	
	@Autowired  
	PolicyRepository policyRepository;  
	
	public List<Policy> getPolicySummary() throws Exception 
	{  	
		List<Policy> listPolicy = new ArrayList<Policy>();  
		policyRepository.findAll().forEach(policy -> listPolicy.add(policy));  
		return listPolicy;  
	}  
	
	public Policy getPolicyDetails(int id) throws Exception
	{  
		return policyRepository.findById(id).get();
	}  
	
	public Boolean updatePolicyStatus(int id, String status) 
	{
		Optional<Policy> policyById = policyRepository.findById(id);
		
		if (policyById.isPresent()) {
			
			Policy policy = policyById.get();
			policy.setStatus(status);
			
			policyRepository.save(policy);
			
			return true;
		}
		else {
			return false;
		}
	}
	
	public Policy createPolicy(String category, String type, String name, 
							String ICNo, String mobileNo, String email, String address) throws Exception 
	{
		Policy policy = new Policy();
		policy.setStatus("Active");
		policy.setCategory(category);
		policy.setType(type);
		policy.setPolicyOwner(name);
		policy.setICNo(ICNo);
		policy.setMobileNumber(mobileNo);
		policy.setEmail(email);
		policy.setAddress(address);
		
		return policyRepository.save(policy);
	}
	
	public void removePolicy(int id) throws Exception 
	{
		policyRepository.deleteById(id);
	}
}  