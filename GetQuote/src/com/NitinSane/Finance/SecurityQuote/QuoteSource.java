/**
 * 
 */
package com.NitinSane.Finance.SecurityQuote;


/**
 * @author Nitin Sane
 *
 */
public interface QuoteSource {
	
	/**
	 * @param symbol
	 * @return
	 */
	Quote getQuote (String symbol);

}
