cd C:\Home\GitHub\GetQuote\GetQuote

rem "%JAVA_HOME%\bin\java" -cp bin;c:/apps/GSon/gson-2.8.0.jar com.NitinSane.finance.NSEQuotes COLPAL  LT PRISMCEM WOCKPHARMA ULTRACEMCO RPOWER RELINFRA RELIANCE RCOM RELCAPITAL LML MTNL> c:\users\3185401\Documents\NSE_Quotes-%date:~-4%-%date:~7,2%-%date:~-10,2%-%time::=%.txt

rem "%JAVA_HOME%\bin\java" -cp bin;c:/apps/GSon/gson-2.8.0.jar com.NitinSane.finance.QuoteMain NSE:COLPAL  NSE:LT NSE:PRISMCEM NSE:WOCKPHARMA NSE:ULTRACEMCO NSE:RPOWER NSE:RELINFRA NSE:RELIANCE NSE:RCOM NSE:RELCAPITAL NSE:LML NSE:MTNL NSE:STRTECH NSE:IDBI NSE:ICICIBANK MUTF_IN:RELI_INDE_NIFT_R5HEGB MUTF_IN:RELI_MIP_MN_14Z9BR9 MUTF_IN:SBI_BLUE_DIR_W61N1G MUTF_IN:HDFC_EQUI_DIR_SA09N0 >> NSE_Quotes.txt

rem Reliance large cap => 0P0000XVG6.BSE
rem Reliance Nifty   => 0P0000XVE4.BSE
rem SBI bluechip => 0P00005WF0.BSE
rem HDFC equity fund => 0P00005WLZ.BSE
"%JAVA_HOME%\bin\java" -cp bin;c:/Apps/gson-2.8.2/gson-2.8.2.jar com.NitinSane.Finance.SecurityQuote.QuoteMain NSE:COLPAL  NSE:LT NSE:WOCKPHARMA NSE:ULTRACEMCO NSE:RPOWER NSE:RELINFRA NSE:RELIANCE NSE:RCOM NSE:RELCAPITAL NSE:LML NSE:MTNL NSE:STRTECH NSE:IDBI NSE:ICICIBANK 0P0000XVG6.BSE 0P0000XVE4.BSE 0P00005WF0.BSE 0P00005WLZ.BSE NSE:RHFL NSE:JSWSTEEL >> c:\home\NSE_Quotes.txt

timeout 10
