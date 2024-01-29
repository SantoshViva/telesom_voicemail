<?php

require "api_functions.php";

$socket = fsockopen("127.0.0.1","5038", $errno, $errstr,10);
      if (!$socket){
        echo "$errstr ($errno)\n";
        }else{
            fputs($socket, "Action: Login\r\n");
            fputs($socket, "UserName: admin\r\n");
            fputs($socket, "Secret: ca8ea9c1f32777cbf3c9203745282852\r\n\r\n");
            fputs($socket, "Action: WaitEvent\r\n");
            fputs($socket, "Action: Logoff\r\n\r\n");

 while(!feof($socket)){
  $result=fread($socket,5000);

if (preg_match("/\b$argv[1]\b/i", $result,$match)){


$result=explode("\n",$result);
$dtmf_fetch=Array();
foreach($result as $key=>$value){
//echo "$key : $value\n";
        if(strlen($value) >1){
        $result_output=explode(":",$value);
        }
                $dtmf_fetch[$result_output[0]] = rtrim(ltrim($result_output[1]));
}
//print_r($dtmf_fetch)."\n";

$aparty = $dtmf_fetch['CallerIDNum'];
$bparty = $dtmf_fetch['Exten'];
$context = $dtmf_fetch['Context'];
$dtmf = $dtmf_fetch['Digit'];
/*
echo strlen($dtmf_fetch['CallerIDNum'])."\n";
echo strlen($dtmf_fetch['Exten'])."\n";
echo strlen($dtmf_fetch['Context'])."\n";
echo strlen($dtmf_fetch['Digit'])."\n";
echo $dtmf_fetch['CallerIDNum'] ." ". $dtmf_fetch['Exten'] ." " . $dtmf_fetch['Context']. " ".$dtmf_fetch['Digit']."\n";
*/
echo "aparty: ". $dtmf_fetch['CallerIDNum']." bparty: ".$dtmf_fetch['Exten']." context: ".$context ." dtmf: ".$dtmf."\n";
                if($dtmf_fetch['Context'] == 'from-835' && strlen($dtmf_fetch['Digit']) > 0){
                        echo "execute api"."\n";
                        $response = tone_player_dfmf_notifer($aparty,$bparty,$dtmf);
                        print_r($response);
                }
}

}
}
fclose($socket);


?>
