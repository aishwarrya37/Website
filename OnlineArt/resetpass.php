<?php
// Import PHPMailer classes into the global namespace
// These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
require 'connection.php';

if(isset($_POST["email"])) 
{
   $emailTo = $_POST["email"];
   $code = uniqid(true);
   $query = mysqli_query($con, "INSERT INTO resetpass(code, email) VALUES('$code', '$emailTo')");
   if(!$query)
   {
      exit("Error");
   }
// Instantiation and passing `true` enables exceptions
$mail = new PHPMailer(true);

try {
    //Server settings
    $mail->isSMTP();                                            // Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'aishwaryashrivastava123@gmail.com';                     // SMTP username
    $mail->Password   = '27.01a2004';                               // SMTP password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
    $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

    //Recipients
    $mail->setFrom('aishwaryashrivastava123@gmail.com', 'ArtisticLane');
    $mail->addAddress("$emailTo");     // Add a recipient
    $mail->addReplyTo('no-reply@gmail.com', 'No reply');


    // Content
    $url = "http://".$_SERVER["HTTP_HOST"].dirname($_SERVER["PHP_SELF"])."/resetlink.php?code=$code";
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = 'Your password reset link';
    $mail->Body    = "<h1>You requested a password reset</h1>
                                  Click <a href='$url'>this link</a> to do so";
    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

    $mail->send();
    echo 'Reset password link has been sent to your email';
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}
exit();
}
?>
<form method="POST">
<div class="control-group form-group">
<div class="controls">
<label>Email Id:</label>
<input type="text" class="form-control" name="email" placeholder="Email" required>
<p class="help-block"></p>
</div>
</div>
<button type="submit" name="submit" class="btn btn-primary">Reset</button>

</form>
