package org.Entity;

public class Student {
	private String name;
	private String branch;
	private String course;
	private String usn;
	private int semester;
	private String section;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getCourse() {
		return course;
	}
	public Student(String name, String branch, String course, String usn, int semester, String section) {
		super();
		this.name = name;
		this.branch = branch;
		this.course = course;
		this.usn = usn;
		this.semester = semester;
		this.section = section;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getUsn() {
		return usn;
	}
	public void setUsn(String usn) {
		this.usn = usn;
	}
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	@Override
	public String toString() {
		return "Student [name=" + name + ", branch=" + branch + ", course=" + course + ", usn=" + usn + ", semester="
				+ semester + ", section=" + section + "]";
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
