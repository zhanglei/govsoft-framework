package com.govsoft.framework.pay.tenpay;

import com.govsoft.framework.pay.BasePay;

public class TenPay extends BasePay {

	private static final String GATEWAY = "https://www.tenpay.com/cgi-bin/med/show_opentrans.cgi";

	private static final String CODE = "tenpay";

	public TenPay() {
		super();
	}

}
