package org.task.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class UserDet {

	
	
	@Id
	private String AdharNumber;
     
	private String Name;
	private String Dob;
	private String Gender;

	private String Pannum;
	@Lob
	private String FutureField;
	
	private int score;
	
	public String getAdharNumber() {
		return AdharNumber;
	}
	public void setAdharNumber(String adharNumber) {
		AdharNumber = adharNumber;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getDob() {
		return Dob;
	}
	public void setDob(String dob) {
		Dob = dob;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getPannum() {
		return Pannum;
	}
	public void setPannum(String pannum) {
		Pannum = pannum;
	}
	public String getFutureField() {
		return FutureField;
	}
	public void setFutureField(String futureField) {
		FutureField = futureField;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
}
