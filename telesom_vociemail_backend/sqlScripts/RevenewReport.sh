select start,src as aparty,dst as bparty, duration,duration*.0006 as Revenue from VOICE_CDR_DETAILS where (dst=166 or dst=2166) and date(start)= date(now()- INTERVAL 1 DAY) and length(src)=9 limit 10;

select call_start,aparty,bparty,duration ,duration*.0006 as Revenue from IVR_CDR_DETAILS where bparty='166' and date(call_start)=date(adddate(sysdate(),-1))
