package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

@Data
public class Users {
	private int id;
	private String name;
	private String email;
	private String country;
	private String password;
}
