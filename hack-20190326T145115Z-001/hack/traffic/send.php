
<?php
$curl = curl_init();
$phone="9596492447";
$message=" Heavy traffic in : https://www.google.co.in/maps/@32.740318,74.8351204,17.68z/data=!5m1!1e1";
$fields_string="";
$url = 'http://www.way2sms.com/api/v1/sendCampaign';
$fields = array(
'apikey' => urlencode('489U4B3V8HPTHR63W8WQW44M0V27PYJ4'),
'secret' => urlencode('8NDIAY3O8LD2XNYH'),
'phone'=> urlencode($phone),
'message' => urlencode($message),
'senderid' => urlencode('esnick'),
'usetype' => urlencode('prod'),

);

//url-ify the data for the POST
foreach($fields as $key=>$value) { $fields_string .= $key.'='.$value.'&'; }
rtrim($fields_string, '&');

//open connection
$ch = curl_init();

//set the url, number of POST vars, POST data
curl_setopt($ch,CURLOPT_URL, $url);
curl_setopt($ch,CURLOPT_POST, count($fields));
curl_setopt($ch,CURLOPT_POSTFIELDS, $fields_string);

//execute post
$result = curl_exec($ch);

//close connection
curl_close($ch);

?>