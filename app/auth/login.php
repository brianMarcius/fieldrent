<?php
require_once "../../config/connection.php";
$email = $_POST['email'];
$password = base64_encode($_POST['password']);
$stmt = $conn->prepare("SELECT id_user, username, user_image, email, level FROM users WHERE (email=? or username=?) AND password=? LIMIT 1");
$stmt->bind_param('sss', $email, $email, $password);
$stmt->execute();
$stmt->bind_result($id_user, $username, $image, $email, $level);
$stmt->store_result();
if($stmt->num_rows == 1)  //To check if the row exists
    {
        while($stmt->fetch()) //fetching the contents of the row

          {$_SESSION['logged'] = 1;
           $_SESSION['id_user'] = $id_user;
           $_SESSION['username'] = $username;
           $_SESSION['image'] = $image;
           $_SESSION['email'] = $email;
           $_SESSION['level'] = $level;
           echo '<script language="javascript"> document.location="../../index.php";</script>';
           exit();
           }



    }
    else {
        echo "INVALID USERNAME/PASSWORD Combination!";
    }
    $stmt->close();




?>