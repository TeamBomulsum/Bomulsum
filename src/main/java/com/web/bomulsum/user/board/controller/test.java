package com.web.bomulsum.user.board.controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class test {
	public static void main(String[] args) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(new java.util.Date());
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		cal.add(Calendar.DATE, 30);
		System.out.println(cal.getTime());
		Date date = Date.valueOf(df.format(cal.getTime()));
		System.out.println(date);
	}
}
