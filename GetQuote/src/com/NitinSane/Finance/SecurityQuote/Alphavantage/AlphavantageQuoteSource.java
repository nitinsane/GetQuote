package com.NitinSane.Finance.SecurityQuote.Alphavantage;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

import com.NitinSane.Finance.SecurityQuote.Quote;
import com.NitinSane.Finance.SecurityQuote.QuoteSource;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class AlphavantageQuoteSource implements QuoteSource {

	@Override
	public Quote getQuote(String symbol) {
		final String baseUrl = "https://www.alphavantage.co/query?function=GLOBAL_QUOTE&outputsize=compact&apikey=1WFQMZK32J25S388";
		String queryURL = String.format("%s&&symbol=%s", baseUrl, symbol);
		
		
		try {
			URLConnection connection = new URL(queryURL).openConnection();
			connection.setRequestProperty("Content-Type", "application/json");
			
			InputStream response = connection.getInputStream();
			
			
			Reader reader = new InputStreamReader(response, "UTF-8");
			
			
			
			JsonElement jelement = new JsonParser().parse(reader);
			JsonObject  jobject = jelement.getAsJsonObject();
			jobject = jobject.getAsJsonObject("Global Quote");			

			
			return new AlphavantageQuote (jobject.get("01. symbol").getAsString (),
					jobject.get("07. latest trading day").getAsString (),
					jobject.get("05. price").getAsString ());
			
			
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		// TODO Auto-generated method stub
		return null;
	}


}
