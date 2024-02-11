<?php
    date_default_timezone_set('Asia/Jakarta');  
    session_start();
    $databaseHost = 'localhost';
    $databaseName = 'ujian_online';
    $databaseUsername = 'root';
    $databasePassword = '';
    
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
?>
<?php



           //sesuaikan name dengan di form nya ya 
          $email = $te[$x][0];
          $judul = 'INFORMASI KODE TOKEN UJIAN';
          $pesan = 'Hi '.$te[$x][2].' kelas '.$te[$x][4].' sekarang anda akan melakukan ujian '.$te[$x][3].' Silahkan masukkan token anda: '.$te[$x][1];


try {
    //Server settings
    $mail->SMTPDebug = 2;                      //Enable verbose debug output
    $mail->isSMTP();                                            //Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
    $mail->Username   = 'maulidatul3105@gmail.com';                     //SMTP username
    $mail->Password   = 'flchbckiqguibvss';                               //SMTP password
    $mail->SMTPSecure = 'tls';            //Enable implicit TLS encryption
    $mail->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

    //pengirim
    $mail->setFrom('maulidatul3105@gmail.com', 'APLIKASI UJIAN SMK INFORMATIKA AL-QALAM');
    $mail->addAddress($email);     //Add a recipient
 
    //Content
    $mail->isHTML(true);                                  //Set email format to HTML
    $mail->Subject = $judul;
    $mail->Body    = $pesan;
    $mail->AltBody = '';
    //$mail->AddEmbeddedImage('gambar/logo.png', 'logo'); //abaikan jika tidak ada logo
    //$mail->addAttachment(''); 

    $mail->send();
    echo 'Message has been sent';
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";

}
        
        ?>