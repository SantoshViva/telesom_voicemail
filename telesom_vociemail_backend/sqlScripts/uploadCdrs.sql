LOAD DATA local INFILE '/home/rbt/voicemail/sqlScripts/ivrCdrFileUploadInDb_withoutRead.csv'
INTO TABLE VOICE_CDR_DETAILS_209
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
start,    
answer,     
end,        
duration,   
billsec,
disposition,
amaflags, 
userfield,  
dummy  )
