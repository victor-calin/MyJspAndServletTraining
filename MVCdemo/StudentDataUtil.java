package com.luv2code.servletdemo.mvc;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {
	
	public static List<Student> getStudents() {
		
		//create an empty list
		List<Student> students = new ArrayList<>();
		
		//add sample data
		students.add(new Student("Maria", "Buioc", "maria@gmail.com"));
		students.add(new Student("Ion", "Dumitru", "ionut@gmail.com"));
		students.add(new Student("Alex", "Radu", "ralex@gmail.com"));
		
		//return the list
		return students;
	}

}
