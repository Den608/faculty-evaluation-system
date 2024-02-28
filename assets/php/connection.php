<?php
$server = "localhost";
$dbuser = "root";
// $dbuser = "ctihjqny_fesDB";
// $dbpass = "FESd@t@b@se";
$dbpass = "";
$database = "ctihjqny_fesdb";

//Database Connection
$conn = mysqli_connect($server, $dbuser, $dbpass, $database);
if (!$conn) {
    die("Connection error: " . mysqli_connect_error());
}
?>