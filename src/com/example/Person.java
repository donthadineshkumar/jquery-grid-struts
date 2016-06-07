package com.example;

public class Person {
	
	private String name;
	private String pos;
	private Integer rank;
	private String comments;
	
	public Person(String name, String pos, Integer rank,String comments){
		this.name= name;
		this.pos=pos;
		this.rank=rank;
		this.comments=comments;
	}
	


	public String getComments() {
		return comments;
	}



	public void setComments(String comments) {
		this.comments = comments;
	}



	public String getPos() {
		return pos;
	}

	public void setPos(String pos) {
		this.pos = pos;
	}

	public Integer getRank() {
		return rank;
	}

	public void setRank(Integer rank) {
		this.rank = rank;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	

}
