LOAD DATA local INFILE '/home/rbt/voicemail/sqlScripts/ivrCdrFileUploadInDb_withRead.csv'
INTO TABLE VOICE_CDR_DETAILS_READ_209
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'(
accountcode,
src,       
dst,  
dcontext,   
clid,   
channel,
dstchannel, 
lastapp,  
lastdata,   
dummyData1,
dummyData2,
dummyData3,
dummyData4,
dummyData5,
start,    
answer,     
end,        
duration,   
billsec,
disposition,
amaflags, 
userfield,  
dummy  )