<?php  
require 'config/config.php';

if(isset($_SESSION['username'])) {
    $userLoggedIn = $_SESSION['username'];
    $user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$userLoggedIn'");
    $user = mysqli_fetch_array($user_details_query);
}
else {
    header("Location: register.php");
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Welcome to Uppercut!</title>

    <!--Javascript-->
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script src="https://code.jquery.com/jquery-migrate-3.4.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/f627e83990.js" crossorigin="anonymous"></script>

    <!--CSS-->
    <link src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body>

<div class="top_bar">
    <div class="logo">
        <a href="index.php">Uppercut!</a>
    </div>

    <nav>
        <a href="<?php echo $userLoggedIn; ?>">
            <?php echo $user['first_name'];   ?>
        </a>
        <a href="index.php">
        <i class="fa-solid fa-house fa-lg"></i>
        </a>
        <a href="#">
        <i class="fa-solid fa-envelope fa-lg"></i>
        </a>
        <a href="#">
        <i class="fa-solid fa-bell fa-lg"></i>
        </a>
        <a href="#">
        <i class="fa-solid fa-user-group fa-lg"></i>
        </a>
        <a href="#">
        <i class="fa-solid fa-gear fa-lg"></i>
        </a>
        <a href="includes/handlers/logout.php">
        <i class="fa-solid fa-arrow-right-from-bracket"></i>
        </a>
    </nav>

</div>

<div class="wrapper">


   