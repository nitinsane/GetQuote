rem cd C:\Home\GitHub\GetQuote\GetQuote

rem "%JAVA_HOME%\bin\java" -cp bin;c:/apps/GSon/gson-2.8.0.jar com.NitinSane.finance.NSEQuotes COLPAL  LT PRISMCEM WOCKPHARMA ULTRACEMCO RPOWER RELINFRA RELIANCE RCOM RELCAPITAL LML MTNL> c:\users\3185401\Documents\NSE_Quotes-%date:~-4%-%date:~7,2%-%date:~-10,2%-%time::=%.txt

rem "%JAVA_HOME%\bin\java" -cp bin;c:/apps/GSon/gson-2.8.0.jar com.NitinSane.finance.QuoteMain NSE:COLPAL  NSE:LT NSE:PRISMCEM NSE:WOCKPHARMA NSE:ULTRACEMCO NSE:RPOWER NSE:RELINFRA NSE:RELIANCE NSE:RCOM NSE:RELCAPITAL NSE:LML NSE:MTNL NSE:STRTECH NSE:IDBI NSE:ICICIBANK MUTF_IN:RELI_INDE_NIFT_R5HEGB MUTF_IN:RELI_MIP_MN_14Z9BR9 MUTF_IN:SBI_BLUE_DIR_W61N1G MUTF_IN:HDFC_EQUI_DIR_SA09N0 >> NSE_Quotes.txt

rem Reliance large cap => 0P0000XVG6.BSE
rem Reliance Nifty   => 0P0000XVE4.BSE
rem SBI bluechip => 0P00005WF0.BSE
rem HDFC equity fund => 0P00005WLZ.BSE
rem "%JAVA_HOME%\bin\java" -cp target/classes;c:/Apps/gson-2.8.2/gson-2.8.2.jar com.NitinSane.Finance.SecurityQuote.QuoteMain NSE:COLPAL  NSE:LT NSE:WOCKPHARMA NSE:ULTRACEMCO NSE:RPOWER NSE:RELINFRA NSE:RELIANCE NSE:RCOM NSE:RELCAPITAL  NSE:MTNL NSE:STRTECH NSE:IDBI NSE:ICICIBANK 0P0000XVG6.BSE 0P0000XVE4.BSE 0P00005WF0.BSE 0P00005WLZ.BSE NSE:RHFL NSE:JSWSTEEL NSE:LML >> c:\home\NSE_Quotes.txt


rem "%JAVA_HOME%\bin\java" -cp target/classes;c:/Apps/gson-2.8.2/gson-2.8.2.jar com.NitinSane.Finance.SecurityQuote.QuoteMain COLPAL.BSE  LT.BSE WOCKPHARMA.BSE ULTRACEMCO.BSE  RELIANCE.BSE RCOM.BSE RELCAPITAL.BSE JSWSTEEL.BSE 500108.BSE 532174.BSE 532374.BSE 500116.BSE 540709.BSE>> c:\home\NSE_Quotes.txt

mvn exec:java -Dexec.mainClass=com.NitinSane.Finance.SecurityQuote.QuoteMain -Dexec.args="NSE:COLPAL  NSE:LT NSE:WOCKPHARMA NSE:ULTRACEMCO NSE:RPOWER NSE:RELINFRA NSE:RELIANCE NSE:RCOM NSE:RELCAPITAL  NSE:MTNL NSE:STRTECH NSE:IDBI NSE:ICICIBANK 0P0000XVG6.BSE 0P0000XVE4.BSE 0P00005WF0.BSE 0P00005WLZ.BSE NSE:RHFL NSE:JSWSTEEL NSE:LML" >> c:\home\NSE_Quotes.txt


C:\Users\nitin\.p2\pool\plugins\org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_15.0.1.v20201027-0507\jre\bin\javaw.exe -Dfile.encoding=Cp1252 -classpath "C:\Users\nitin\Documents\Github\GetQuote\GetQuote\target\classes;C:\Users\nitin\.m2\repository\com\google\code\gson\gson\2.8.5\gson-2.8.5.jar" -XX:+ShowCodeDetailsInExceptionMessages com.NitinSane.Finance.SecurityQuote.QuoteMain COLPAL.BSE LT.BSE WOCKPHARMA.BSE ULTRACEMCO.BSE RELIANCE.BSE RCOM.BSE RELCAPITAL.BSE JSWSTEEL.BSE 500108.BSE 532174.BSE 532374.BSE 500116.BSE 540709.BSE
rem MTNL ==> 500108.BSE
rem ICICIBANK => 532174.BSE
rem STRTECH ==> 532374.BSE
rem IDBI ==> 500116.BSE
rem RHFL ==> 540709.BSE

rem M0P0000XVG6.BSE 0P0000XVE4.BSE 0P00005WF0.BSE 0P00005WLZ.BSE  LML.BSE 
timeout 10
rem 

