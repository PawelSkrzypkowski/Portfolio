package pl.pawelskrzypkowski.model;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Me {
	private String me="";
	private static Me m;
	public Me(){}
	public static final Me getInstance() throws FileNotFoundException{
		if(m==null){
			m = new Me();
			m.setMe(readFile());
		}
		return m;
	}
	protected static String readFile() throws FileNotFoundException{
		ClassLoader classLoader = Me.class.getClassLoader();
		File file = new File(classLoader.getResource("me.txt").getFile());
		Scanner sc = new Scanner(file, "UTF-8");
		String result = sc.nextLine();
		sc.close();
		return result;
	}
	public String getMe() {
		return me;
	}
	public void setMe(String me) {
		this.me = me;
	}
}
