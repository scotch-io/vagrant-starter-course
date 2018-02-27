<h1>I love LAMP!</h1>

<?php
// Check MySQL
$servername = "localhost";
$username = "root";
$password = "root";
$conn = new mysqli($servername, $username, $password);

if ($conn->connect_error) {
    echo '<h2>DB IS NOT CONNECTED!';
} else {
    echo '<h2>DB IS CONNECTED!';
}
?>

<?php phpinfo(); ?>