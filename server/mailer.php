<?php
    $name = $_POST['name'];
    $email = $_POST['email'];
    $subject = $_POST['subject'];
    $message = "<h1>Sent by ${name}, ${email} </h1><br>";
    $message .= $_POST['message'];
    $to = "spdhiraj99@gmail.com";
    $header = "MIME-Version: 1.0\r\n";
    $header .= "Content-type: text/html\r\n"; 
    $retval = mail ($to,$subject,$message,$header);     
    if( $retval == true ) {
        echo "Message sent successfully...";
     }else {
        echo "Message could not be sent...";
    }
?>