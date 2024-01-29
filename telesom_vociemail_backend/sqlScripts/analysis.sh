select * from VMAIL_SUMMARY_REPORT_HOURLY where REPORT_DATE='2023-09-13' and SERVER='20

update VMAIL_SUMMARY_REPORT_HOURLY set DURATION=(select sum(duration) from IVR_CDR_DETAILS where date(call_start)= '2023-09-13' and BPARTY='166' and last_node!='LOW_BALANCE' and last_node!='ANUMBER_INCORRECT' and hour(call_start)=22 ) ,TAFFIC_DATE='2023-09-13' where date(REPORT_DATE) ='2023-09-13' and HOUR=22 and SERVER=20;
'
