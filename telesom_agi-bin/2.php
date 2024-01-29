<?php


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
    "sessionId" : "12345678",
    "aparty" : "1234",
    "bparty" : "2345",
    "errorCode" : "0",
    "message" : "SUCCESS",
    "playDuration" : "79.22",
    "startTime" : "2010-08-31 00:00:05",
    "endtime" : "2010-08-31 00:10:05",
    "dtmfInput" : "1"
}',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;
?>

