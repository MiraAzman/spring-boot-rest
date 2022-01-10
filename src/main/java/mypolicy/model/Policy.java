package mypolicy.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "policy")
public class Policy {

	private int id; //policy number	
	private String category; //Car, Medical, Life, Personal Accident
	private String status; //Active, Expired, Surrendered
	private String type; //Insurance, Takaful
	private String policyOwner;
	private String mobileNumber;
	private String email;
	private String ICNo;
	private String address;
	
	public Policy() {
		
	}
	
	public Policy(String category, String status, String type, String policyOwner, 
				String mobileNumber, String email, String ICNo, String address) 
	{
		this.category = category;
		this.status = status;
		this.type = type;
		this.policyOwner = policyOwner;
		this.mobileNumber = mobileNumber;
		this.email = email;
		this.ICNo = ICNo;
		this.address = address;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "category")
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Column(name = "status")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "type")
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "policyOwner")
	public String getPolicyOwner() {
		return policyOwner;
	}

	public void setPolicyOwner(String policyOwner) {
		this.policyOwner = policyOwner;
	}

	@Column(name = "mobileNumber")
	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	@Column(name = "email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "ICNo")
	public String getICNo() {
		return ICNo;
	}

	public void setICNo(String iCNo) {
		ICNo = iCNo;
	}

	@Column(name = "address")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}