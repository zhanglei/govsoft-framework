package com.govsoft.framework.model.comparator;

import java.util.Comparator;

import com.govsoft.framework.model.Menu;

/**
 * @author len
 * @version 2009-5-10
 * @since JDK1.5
 *
 */
public class MenuComparator implements Comparator<Menu> {

	public int compare(Menu o1, Menu o2) {
		if (o1 == null) {
			return -1;
		}
		if (o2 == null) {
			return 1;
		}
		Integer s1 = o1.getSequence();
		Integer s2 = o2.getSequence();
		if (s1 == null) {
			return -1;
		}
		if (s2 == null) {
			return 1;
		}
		return s1.compareTo(s2);
	}

}
