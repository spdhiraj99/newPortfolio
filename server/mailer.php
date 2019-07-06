<?php
    $to = "spdhiraj99@gmail.com";
    $subject = "This is subject";     
    $message = "<b>This is HTML message.</b>";
    $message .= "<h1>This is headline.</h1>";      
    $retval = mail ($to,$subject,$message);     
    if( $retval == true ) {
        echo "Message sent successfully...";
     }else {
        echo "Message could not be sent...";
    }
?>