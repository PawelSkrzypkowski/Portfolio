package pl.pawelskrzypkowski.model;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.LinkedList;
import java.util.Scanner;

public class Cv {
	private String name;
	private String email;
	private String phone;
	private String birthDate;
	private String country;
	private String city;
	private LinkedList<String> education = new LinkedList<String>();
	private LinkedList<String> experience = new LinkedList<String>();
	private LinkedList<String> languages = new LinkedList<String>();
	private LinkedList<String> skills = new LinkedList<String>();
	private String hobby;
	
	private static Cv cv;
	public static Cv getInstance() throws IOException{
		if(cv == null){
			cv = new Cv();
			cv.loadHeader();
			cv.loadEducation();
			cv.loadExperience();
			cv.loadLanguages();
			cv.loadSkills();
			cv.loadHobby();
		}
		return cv;
	}
	
	private void loadHeader() throws IOException{
		ClassLoader classLoader = Cv.class.getClassLoader();
		File file = new File(classLoader.getResource("header.txt").getFile());
		Scanner scanner = new Scanner(file, "UTF-8");
		name = scanner.nextLine();
		email = scanner.nextLine();
		phone = scanner.nextLine();
		birthDate = scanner.nextLine();
		country = scanner.nextLine();
		city = scanner.nextLine();
		scanner.close();
	}
	private void loadEducation() throws FileNotFoundException{
		ClassLoader classLoader = Cv.class.getClassLoader();
		File file = new File(classLoader.getResource("education.txt").getFile());
		Scanner scanner = new Scanner(file, "UTF-8");
		while(scanner.hasNextLine())
			education.add(scanner.nextLine());
		scanner.close();
	}
	private void loadExperience() throws FileNotFoundException{
		ClassLoader classLoader = Cv.class.getClassLoader();
		File file = new File(classLoader.getResource("experience.txt").getFile());
		Scanner scanner = new Scanner(file, "UTF-8");
		while(scanner.hasNextLine())
			experience.add(scanner.nextLine());
		scanner.close();
	}
	private void loadLanguages() throws FileNotFoundException{
		ClassLoader classLoader = Cv.class.getClassLoader();
		File file = new File(classLoader.getResource("languages.txt").getFile());
		Scanner scanner = new Scanner(file, "UTF-8");
		while(scanner.hasNextLine())
			languages.add(scanner.nextLine());
		scanner.close();
	}
	private void loadSkills() throws FileNotFoundException{
		ClassLoader classLoader = Cv.class.getClassLoader();
		File file = new File(classLoader.getResource("skills.txt").getFile());
		Scanner scanner = new Scanner(file, "UTF-8");
		while(scanner.hasNextLine())
			skills.add(scanner.nextLine());
		scanner.close();
	}
	private void loadHobby() throws FileNotFoundException{
		ClassLoader classLoader = Cv.class.getClassLoader();
		File file = new File(classLoader.getResource("hobby.txt").getFile());
		Scanner scanner = new Scanner(file, "UTF-8");
		hobby = scanner.nextLine();
		scanner.close();
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getPhone() {
		return phone;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public String getCountry() {
		return country;
	}
	public String getCity() {
		return city;
	}
	public LinkedList<String> getEducation() {
		return education;
	}
	public LinkedList<String> getExperience() {
		return experience;
	}
	public LinkedList<String> getLanguages() {
		return languages;
	}
	public LinkedList<String> getSkills() {
		return skills;
	}
	public String getHobby() {
		return hobby;
	}
	
}
