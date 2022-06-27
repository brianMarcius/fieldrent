<?php 
session_start();
if (empty($_SESSION['logged'])) {
    header('Location: pages/auth/login.php');
}


?>