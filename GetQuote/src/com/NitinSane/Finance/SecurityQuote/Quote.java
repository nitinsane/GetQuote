package com.NitinSane.Finance.SecurityQuote;

/**
 * @author Nitin Sane
 *
 */
public interface Quote {

	String getTicker ();
	String getTradeDate ();
	String getLastPrice ();
	double getOpenPrice ();
	double getHighPrice ();
	double getLowPrice ();
	double getClosePrice ();
	double getTradeVolume ();
}
