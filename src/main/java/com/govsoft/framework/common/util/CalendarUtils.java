package com.govsoft.framework.common.util;

import java.util.Calendar;
import java.util.Date;

public final class CalendarUtils {

	private CalendarUtils() {
		super();
	}

	public static Date add(int field, Date date, int value) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);

		int fieldNewValue = (c.get(field) + value);
		c.set(field, fieldNewValue);
		return c.getTime();
	}

	public static int get(int field, Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(field);
	}

	public static boolean isEqualField(int field, Date d1, Date d2) {
		Calendar c1 = Calendar.getInstance();
		c1.setTime(d1);

		Calendar c2 = Calendar.getInstance();
		c2.setTime(d2);
		return c1.get(field) == c2.get(field);
	}

}
