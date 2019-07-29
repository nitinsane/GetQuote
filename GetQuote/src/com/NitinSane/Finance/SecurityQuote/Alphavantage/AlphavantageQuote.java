package com.NitinSane.Finance.SecurityQuote.Alphavantage;

import java.text.SimpleDateFormat;
import java.util.Date;
import com.NitinSane.Finance.SecurityQuote.Quote;

public class AlphavantageQuote implements Quote {
	
	private String ticker;
	private String lastPrice;
	
	/**
	 * @param ticker
	 * @param tradeDate
	 * @param lastPrice
	 */
	public AlphavantageQuote (String ticker, String tradeDate, String lastPrice)
	{
		this.ticker = ticker;
		this.lastPrice = lastPrice;
	}

	@Override
	public String getTicker() {
		return ticker;
	}

	@Override
	public String getTradeDate() {
		
		String pattern = "MM/dd/yyyy";
		return new SimpleDateFormat (pattern).format(new Date ());
	}

	@Override
	public String getLastPrice() {
		return lastPrice;
	}

	public double getOpenPrice () {
		return 0;
	}
	public double getHighPrice () {
		return 0;
	}
	public double getLowPrice () {
		return 0;
	}
	public double getClosePrice () {
		return 0;
	}
	public double getTradeVolume () {
		return 0;
	}

}

class GlobalQuote {
	
}

/*********************
{
    "Global Quote": {
        "01. symbol": "NSE:JSWSTEEL",
        "02. open": "371.4000",
        "03. high": "408.7000",
        "04. low": "370.0000",
        "05. price": "399.0000",
        "06. volume": "44445933",
        "07. latest trading day": "2018-08-29",
        "08. previous close": "366.2000",
        "09. change": "32.8000",
        "10. change percent": "8.9569%"
    }
}

**********************/
