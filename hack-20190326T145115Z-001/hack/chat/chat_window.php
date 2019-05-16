<?php session_start(); 
if(!isset($_SESSION['id']))
{
	die("Please Login  First!<a href='../login.html'> Click here to Login</a>");
}

?>
<!DOCTYPE html>
<html lang="en" >
<meta name="viewport" content=" initial-scale=1, maximum-scale=1, user-scalable=0">
<head>
  <meta charset="UTF-8">
  <title>Flat dashboard</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="chat_style.css">
	  <script language="javascript">
	  function send()
	  {
		mes=document.getElementById("message").value;
		to=document.getElementById("to").value;
		
		from=document.getElementById("from").value;
		if(mes!=""){
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
	  document.getElementById("chat_inner").innerHTML=this.responseText;
		document.getElementById("message").value="";
  }
};

 xhttp.open("POST", "chat.php", true);
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send("message="+mes+"&to="+to+"&from="+from);
}
	  }

 function regr()
	  {

		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
	  document.getElementById("chat_inner").innerHTML=this.responseText;
 
  }
};

 xhttp.open("GET", "chat_refresh.php", true);
 xhttp.send();
}
setInterval(function(){ regr(); }, 700);

</script>

  
</head>

<body> 
 
 <div class="col-2" style="width:100%">
            <div class="chat" id="mwin">
              <div class="head">
                <i class="fa fa-comment"></i>
                Message
              </div>
              <div class="chat_inner" id="chat_inner">
               
              </div>
              <div class="footer">
                <input type="text" id="message" placeholder="Your Message" style="width:60%">
				<input type="hidden" id="to" value="<?php echo $_GET['id']; ?>">
				<input type="hidden" id="from" value="<?php echo $_SESSION['id']; ?>">
                <button  onclick="send()"><i class="fa fa-paper-plane"></i></button>
              </div>
            </div>
          </div>
      