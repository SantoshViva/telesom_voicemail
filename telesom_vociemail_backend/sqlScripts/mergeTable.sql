insert into VOICE_CDR_DETAILS_209 (accountcode,src,dst,dcontext,clid,channel,dstchannel,lastapp,lastdata,start,answer,end,duration,billsec,disposition,amaflags,userfield,dummy)  select accountcode,src,dst,dcontext,clid,channel,dstchannel,lastapp,lastdata,start,answer,end,duration,billsec,disposition,amaflags,userfield,dummy from VOICE_CDR_DETAILS_READ_209;

delete from VOICE_CDR_DETAILS_READ_209;
