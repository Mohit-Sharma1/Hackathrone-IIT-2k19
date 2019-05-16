<?php
session_start();
if(!isset($_SESSION['id']))
{
	die("Please Login  First!<a href='../login.html'> Click here to Login</a>");
}

include('../dbconnect.php');

		$message=mysqli_real_escape_string($db,$_POST['message']);
		$to=mysqli_real_escape_string($db,$_POST['to']);
		
					 $query = "INSERT INTO chat(sender_id,reciever_id,message,delivered) 
							  VALUES('".$_SESSION['id']."','$to','$message','1')";
					mysqli_query($db,$query);
					
					
					
					$query = "SELECT * FROM chat";
			

			$results = mysqli_query($db,$query);
			mysql_error();

			
			if(mysqli_num_rows($results))
			{
				
				while($row=mysqli_fetch_array($results))
				{
					if($row['sender_id'] != $_SESSION['id'])
					{
								
				echo '<div class="chat_inner-item">
                  <div class="message">';
                    echo $row['message'];
                  echo '</div>
                  <div class="photo">
                    <img src="user.jpg" alt="myphoto" />
                  </div>
				  
                </div>';
					
					}
					else
					{
				
				
				echo '<div class="chat_inner-item right">
                  
                  <div class="photo">
                    <img src="user.jpg" alt="myphoto" />
                  </div>
				  <div class="message">';
                    echo $row['message'];
                  echo '</div>
                </div>';
					}
						
				}
			}
	
	
	?>


	