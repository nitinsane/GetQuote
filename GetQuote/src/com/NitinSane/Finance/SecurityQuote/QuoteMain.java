package com.NitinSane.Finance.SecurityQuote;

import java.util.concurrent.TimeUnit;

import com.NitinSane.Finance.SecurityQuote.Alphavantage.AlphavantageQuoteSource;

/**
 * @author Nitin Sane
 *
 */
public class QuoteMain {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		
		QuoteSource quoteSource = new AlphavantageQuoteSource ();
				
		// iterate over the command line arguments
		for(int i=0; i < args.length; i++) {
			Quote q = quoteSource.getQuote (args[i]);
			
			if (q != null) {		
				System.err.println(q.getTicker() + "," + q.getLastPrice() + "," + q.getTradeDate());
				System.out.println(q.getTicker() + "," + q.getLastPrice() + "," + q.getTradeDate());
			} else {
				System.err.println("Invalid symbol " + args [i]);
			}
			
			try {
				TimeUnit.SECONDS.sleep(15);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
