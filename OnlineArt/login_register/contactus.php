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
				if(isset($_POST['SubmitButton'])){ //check if form was submitted
				$frm=$_POST['contact-email'];
				
                                                                      $name=$_POST['contact-name'];
                                                                      $category= $_POST['category'];
                                                                      $p= $_POST['priority'];
                                                                     
                                                                     $mess=$_POST['contact-message'];
$query = mysqli_query($con, "INSERT INTO contact(name, email, category, priority, message) VALUES('$name', '$frm', '$category', '$p', '$mess')");
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
    $mail->addAddress("$frm");     // Add a recipient
    $mail->addReplyTo('no-reply@gmail.com', 'No reply');


    // Content
    $url = "http://".$_SERVER["HTTP_HOST"].dirname($_SERVER["PHP_SELF"])."/resetlink.php?code=$code";
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = 'Artistic Lane-Contact Us';
    $mail->Body    = "<h1>You requested a copy of your query from Artistic Lane</h1>
                                  <h2>Name:$name <br>
                                  Category: $category <br>
                                  priority:$p <br>
                                  message:$mess</h2>";
    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

    $mail->send();
    echo '<h2>A copy of your message has been sent to your gmail</h2>';
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}
exit();
}
?>    
<section id="One" class="wrapper style3" style="margin-top: -2%;">
                    <div class="inner">
                        <header class="align-center">
                            <p>Need help? contact award-winning support team 24/7</p>
                            <h2>Contact us 24x7 team</h2>
                        </header>
                    </div>
                </section>

    <section id="two" class="wrapper style2">
                    <div class="inner">
                        <div class="box">
                            <div class="content">
    <!-- Form -->
                                    <h2>Contact Form</h2>

                                    <form method="post" action="#" >
                                        <div class="row uniform">
                                            <div class="6u 12u$(xsmall)">
                                                <input type="text" name="contact-name" id="contact-name" value="" placeholder="Name" required />
                                            </div>
                                            <div class="6u$ 12u$(xsmall)">
                                                <input type="email" name="contact-email" id="contact-email" value="" placeholder="Email" required />
                                            </div>
                                            <!-- Break -->
                                            <div class="12u$">
                                                <div class="select-wrapper" >
                                                    <select name="category" id="category" required >
                                        <option value="">- Category -</option>
                                        <option value="Payment Related">Payment Related</option>
                                        <option value="Shipping">Shipping</option>
                                        <option value="Administration">Administration</option>
                                        <option value="Other Issue">Other Issue</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- Break -->
                                            <div class="4u 12u$(small)">
                                                <input type="radio" id="priority-low" value="Low" name="priority" checked>
                                                <label for="priority-low">Low Priority</label>
                                            </div>
                                            <div class="4u 12u$(small)">
                                                <input type="radio" id="priority-normal" value="Normal" name="priority">
                                                <label for="priority-normal">Normal Priority</label>
                                            </div>
                                            <div class="4u$ 12u$(small)">
                                                <input type="radio" id="priority-high"  value="High" name="priority">
                                                <label for="priority-high">High Priority</label>
                                            </div>
                                            <!-- Break -->
                                            <div class="6u 12u$(small)">
                                                <input type="checkbox" id="copy" name="copy" value="copy">
                                                <label for="copy">Email me a copy of this message</label>
                                            </div>
                                            <div class="6u$ 12u$(small)">
                                                <input type="checkbox" id="human" name="human" required>
                                                <label for="human">I am a human and not a robot</label>
                                            </div>
                                            <!-- Break -->
                                            <div class="12u$">
                                                <textarea name="contact-message" id="contact-message" placeholder="Enter your message" rows="6"></textarea>
                                            </div>
                                            <!-- Break -->
                                            <div class="12u$">
                                                <ul class="actions">
                                                    <li><input type="submit" name="SubmitButton" value="Send Message" /></li>
                                                    <li><input type="reset" value="Reset" class="alt" /></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </form>


                    <div class="inner">
                        <div class="box">
	

	

    <!-- Form -->
                                    <h2 >Address & Contact Details</h2>                           


    <h3>Online Artwork & Fine Art, Pune</h3>
    167, XYYZZZDDG,<br>
    ABCD, Pune - 798484<br>
    India
    <br>
                  <br>
    Tel. / Fax - +91 000000000 / 0000<br>
    Sales Enquiries - info@OnlineArtworkandFineArt.com<br>
    HR - careers@OnlineArtworkandFineArt.com<br>
    <br>
         <h3>Working Hours</h3>         

    <i>11am - 7pm
    Sunday's, by appointment only.  
                             </i>
                        </div>
                    </div>


                                </div>
                        </div>
                    </div>
                </section>