<?php
function profilequery_2($action,$msisdn) 
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://149.28.148.198:7070/crbt/core/profilequery',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{"cpid": "CRBT","msisdn": "'.$msisdn.'","action": "ProfileQuery"}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;

}

function deactivation($action,$msisdn)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://149.28.148.198:7070/crbt/core/unsubscription',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{"cpid": "CRBT","msisdn": "'.$msisdn.'","tid": "7dc23952-d604-464a-bcd4-a1d7324a54c88","action": "UNSUBSCRIPTION","serviceid": "SUBS_RENTAL","productid": "DAILY_RBT","langid": "en","interfacename": "IVR","timestamp":"20200809102030","issubcharge": "Y","toneid": "01011062100560","tonetype": "0","tonetypeidx": "1","tonename": "Dua5_Ram","precrbtflag": "","callingpartynumber": "D","toneserviceid": "TONE_RENTAL","toneproductid": "TONE_LIFETIME","istonecharge": "N"}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;

}

function activation($action,$msisdn)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://149.28.148.198:7070/crbt/core/subscription',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{"cpid": "CRBT","msisdn": "'.$msisdn.'","tid": "7dc23952-d604-464a-bcd4-a1d7324a54c88","action": "SUBSCRIPTION","serviceid": "SUBS_RENTAL","productid": "DAILY_RBT","langid": "en","interfacename": "IVR","timestamp":"20200809102030","issubcharge": "Y","toneid": "01011062100560","tonetype": "0","tonetypeidx": "1","tonename": "Dua5_Ram","precrbtflag": "","callingpartynumber": "D","toneserviceid": "TONE_RENTAL","toneproductid": "TONE_LIFETIME","istonecharge": "N"}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;

}

function callback($sessionId,$aparty,$bparty,$errorCode,$message,$billsec,$startTime,$endtime,$dtmfInput)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://localhost:9090/api/obd-callback',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{"sessionId": "'.$sessionId.'","aparty": "'.$aparty.'","bparty": "'.$bparty.',"errorCode": "'.$errorCode.'","message": "'.$message.'","playDuration": "'.$billsec.'","startTime": "'.$startTime.'","endTime": "'.$endtime.'","dtmfInput":"'.$dtmfInput.'"}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;

}
function sample($sessionId,$aparty,$bparty,$errorCode,$message,$billsec,$startTime,$endtime,$dtmfInput)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://localhost:9090/api/obd-callback',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "sessionId" : "'.$sessionId.'",
    "aparty" : "'.$aparty.'",
    "bparty" : "'.$bparty.'",
    "errorCode" : "'.$errorCode.'",
    "message" : "'.$message.'",
    "playDuration" : "'.$billsec.'",
    "startTime" : "'.$startTime.'",
    "endTime" : "'.$endtime.'",
    "dtmfInput" : "'.$dtmfInput.'"
}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}



function emergencyCreditCheck($sessionId,$aparty,$bparty,$errorCode,$message,$billsec,$startTime,$endtime,$dtmfInput)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://localhost:9090/api/obd-callback',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "sessionId" : "'.$sessionId.'",
    "aparty" : "'.$aparty.'",
    "bparty" : "'.$bparty.'",
    "errorCode" : "'.$errorCode.'",
    "message" : "'.$message.'",
    "playDuration" : "'.$billsec.'",
    "startTime" : "'.$startTime.'",
    "endTime" : "'.$endtime.'",
    "dtmfInput" : "'.$dtmfInput.'"
}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}


function category($aparty,$bparty,$subcategoryId,$categoryId)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://149.28.148.198:9076/crbtCatSubCatDetails?aparty='.$aparty.'&bparty='.$bparty.'&categoryId='.$categoryId.'&subCategoryId='.$subcategoryId.'&contentCount=10',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}

function tone_change_request($aparty,$toneid,$tonename)
{
$timestamp = strtotime("now");
$tid = trim(shell_exec("uuidgen"));

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://149.28.148.198:7070/crbt/core/tonechangerequest',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{
    "cpid" : "CRBT",
    "msisdn" : "'.$aparty.'",
    "tid" : "'.$tid.'",
    "action":"UPDATE","serviceid":null,"productid":null,"langid":"en","interfacename":"IVR","timestamp":20220804174420,"issubcharge":null,
    "toneid":"'.$toneid.'",
    "tonetype":"0","tonetypeidx":"1","oldtonetype":"0","oldtonetypeidx":"1",
    "tonename":"'.$tonename.'",
    "callingpartynumber":"D","toneserviceid":"TONE_RENTAL","toneproductid":"TONE_LIFETIME","istonecharge":"Y","precrbtflag":null,"corporateadminnumber":null,"amount":0.0,"songpath":null
}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}

function seven68($aparty,$bparty)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://149.28.148.198:9076/getToneIdInfoXml?Msgtype=100&aparty='.$aparty.'&bparty='.$bparty.'&aPartyFlag=0',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}

function profileQuery($action,$msisdn)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://localhost:8081/emergency-credit-muni/third/party/credit/eligible?amount=100&msisdn='.$msisdn.'&type=Money',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}

function chatprofile($aparty,$bparty,$serviceId,$packOffer)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://45.77.39.15:9578/getUserProfileQuery?aparty='.$aparty.'&bparty='.$bparty.'&serviceId='.$serviceId.'&packOffer='.$packOffer,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}

function chatactivation($aparty,$bparty,$serviceId)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://45.77.39.15:9578/subscriptionBillingReq?aparty='.$aparty.'&bparty='.$bparty.'&serviceId='.$serviceId.'&subServiceId=mwomen&station=bbc&offer=Ivr-chat',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}

function chatGroupUpdate($aparty,$bparty,$chatGroupId,$operation)
{
file_put_contents('/tmp/astklog.log', 'testing api', FILE_APPEND);
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://45.77.39.15:9578/ivrChatGroupUpdate?aparty='.$aparty.'&bparty='.$bparty.'&chatGroupId='.$chatGroupId.'&operation='.$operation,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
curl_close($curl);

file_put_contents('/tmp/astklog.log', $response, FILE_APPEND);

return $response;
}


function chatRecordMessage($aparty,$bparty,$chatGroupId,$chatDuration,$chatMessagePath)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://45.77.39.15:9578/saveVoiceChatMessage?aparty='.$aparty.'&bparty='.$bparty.'&chatGroupId='.$chatGroupId.'&chatDuration='.$chatDuration.'&recordingFilePath='.$chatMessagePath.'&status=P',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}

//function voiceMailRecordMessage($aparty,$bparty,$chatGroupId,$chatDuration,$chatMessagePath,$vMsisdn)
function voiceMailRecordMessage($aparty,$bparty,$chatGroupId,$chatDuration,$chatMessagePath,$vMsisdn)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://172.16.53.209:9079/eventBillingReq?aparty='.$aparty.'&bparty='.$bparty.'&chatGroupId='.$chatGroupId.'&duration='.$chatDuration.'&recordingFilePath='.$chatMessagePath.'&vMsisdn='.$vMsisdn.'&interfaceId=IVR&action=DEBTEVENT&serviceId=VOICE_MAIL&productId=VOICE_MAIL',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}



function chatFetchMessages($aparty,$bparty,$chatGroupId,$messageId,$messageCount)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://45.77.39.15:9578/fetchVoiceChatMessage?aparty='.$aparty.'&bparty='.$bparty.'&chatGroupId='.$chatGroupId.'&messageId='.$messageId.'&messageCount='.$messageCount,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}

function voiceMailFetchMessages($aparty,$bparty,$chatGroupId,$messageId,$messageCount)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://172.16.53.209:9079/checkVoiceSmsDetails?aparty='.$aparty.'&bparty='.$bparty,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}


function kaafiyaprofilequery($aparty,$bparty)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://172.16.53.209:9079/getKaafiyaUserBalance?aparty='.$aparty.'&bparty='.$bparty.'&langId=som&serviceId=voicesms',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));
$response = curl_exec($curl);
curl_close($curl);
return $response;
}




function voiceMailDeleteMessage($aparty,$senderMsisdn,$voiceMessageId,$recordingFilePath)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://172.16.53.209:9079/deleteVoiceSms?aparty='.$aparty.'&senderMsisdn='.$bparty.'&voiceMessageId='.$voiceMessageId.'&recordingFilePath='.$recordingFilePath,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}




function chatLikeDislike($aparty,$bparty,$voiceMessageId,$chatLikeDislike,$chatMsisdn,$chatGroupId,$likeDisLikeFlag)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://45.77.39.15:9578/likeDislikeVoiceChatMessage?aparty='.$aparty.'&bparty='.$bparty.'&messageId='.$voiceMessageId.'&chatLikeDislike='.$chatLikeDislike.'&chatMsisdn='.$chatMsisdn.'&chatGroupId'.$chatGroupId.'&likeDisLikeFlag='.$likeDisLikeFlag,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}

function ivrcdr($aparty,$bparty,$disconnectReason,$callDuration,$lastNode,$callStartTime,$callEndTime,$serviceId)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://45.77.39.15:9578/ivrCdrReq?aparty='.$aparty.'&bparty='.$bparty.'&reason='.$disconnectReason.'&duration='.$callDuration.'&lastNode='.$lastNode.'&callStartTime='.$callStartTime.'&callEndTime='.$callEndTime.'&serviceId='.$serviceId.'&answerKey=&quizId=&quizStatus=&quizCount=&quizCat=&quizScore=',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}

function emergencyEligiblityCheck($msisdn)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://172.16.53.110:8082/emergency-credit/user/emergency/minutes/eligible?msisdn='.$msisdn.'&amount=1',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: text/plain'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;
}

function emergencyCredited($msisdn)
{

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://172.16.53.110:8082/emergency-credit/user/emergency/minutes/credit',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS =>'{"msisdn": "'.$msisdn.'","minutes": "1"}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);
curl_close($curl);
return $response;

}



?>
