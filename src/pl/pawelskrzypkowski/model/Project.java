package pl.pawelskrzypkowski.model;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Scanner;

public class Project {
	private String title, descr, imagePath;
	private String[] sourcePath;
	public Project(){}
	private Project(String title, String descr, String imagePath, String[] sourcePath) {
		this.title = title;
		this.descr = descr;
		this.imagePath = imagePath;
		this.sourcePath = sourcePath;
	}
	public static LinkedList<Project> getProjectsList() throws FileNotFoundException{
		ClassLoader classLoader = Project.class.getClassLoader();
		File file = new File(classLoader.getResource("projects.txt").getFile());
		Scanner scanner = new Scanner(file, "UTF-8");
		LinkedList<Project> list = new LinkedList<Project>();
		while(scanner.hasNext()){
			String title = scanner.nextLine(), desc = scanner.nextLine(), img = scanner.nextLine();
			String[] link = scanner.nextLine().split(";");
			Arrays.asList(link).forEach(l->{
				if(l.equals("null"))
					l = "#";
			});
			list.add(new Project(title, desc, img, link));
		}
		scanner.close();
		return list;
	}
	public String getTitle() {
		return title;
	}

	public String getDescr() {
		return descr;
	}

	public String getImagePath() {
		return imagePath;
	}

	public String[] getSourcePath() {
		return sourcePath;
	}
	
}
