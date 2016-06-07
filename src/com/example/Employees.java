package com.example;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Employees {

	/*Map<Integer, Person> emps= new HashMap<Integer, Person>();*/
	List<Person> emps= new ArrayList<Person>();
	
	public Employees(){
/*		emps.put(1, new Person("Dinesh","SE",new Integer(1)));
		emps.put(2, new Person("Ravi","SSE",new Integer(2)));
		emps.put(3, new Person("Santosh","TL",new Integer(3)));*/
		
		emps.add(0, new Person("Dinesh","SE",new Integer(1),"Good - Hello World"));
		emps.add(1, new Person("Ravi","SSE",new Integer(2),"Good - Hello World"));
		emps.add(2, new Person("Santosh","TL",new Integer(3),"Good - Hello World"));
	}
	
	
	public String execute() throws Exception{
		return "success";
	}



	public List<Person> getEmps() {
		return emps;
	}


	public void setEmps(List<Person> emps) {
		this.emps = emps;
	}

	/*public Map<Integer, Person> getEmps() {
		return emps;
	}

	public void setEmps(Map<Integer, Person> emps) {
		this.emps = emps;
	}*/
	
	
	
}
