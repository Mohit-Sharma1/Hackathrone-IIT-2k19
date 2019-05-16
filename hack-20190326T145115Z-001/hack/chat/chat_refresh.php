<?php
session_start();
if(!isset($_SESSION['id']))
{
	die("Please Login  First!<a href='../login.htm'> Click here to Login</a>");

}

include('../dbconnect.php');
					
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
                  
                  <div class="photo">
                    <img src="user.jpg" alt="myphoto" />
                  </div>
				  <div class="message" style="background-color:#4c4cff;color:white">';
                    echo $row['message'];
                  echo '</div>
				  
                </div>';
					
					}
					else
					{
				
				
				echo '<div class="chat_inner-item right">
                  
                  
				  <div class="message">';
                    echo $row['message'];
                  echo '</div>
				  <div class="photo">
                    <img src="user.jpg" alt="myphoto" />
                  </div>
                </div>';
					}
						
				}
			}
	
	
	?>


	