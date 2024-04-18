<?php

$servername = "localhost"; 
$username = "root"; 
$dbpassword = ""; 
$database = "kwiaciarnia"; 

$conn = new mysqli($servername, $username, $dbpassword, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

if(isset($getinfo) && !empty($getinfo)){
    $sql = "SELECT nazwa, opis FROM kwiatekopis WHERE nazwa LIKE '%$getinfo%'";

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
    
        while($row = $result->fetch_assoc()) {
            echo "Nazwa: " . $row["nazwa"]. "<br>Opis: " . $row["opis"]. "<br><br>";
        }
    } else {
        
        echo "Brak wyników dla wyszukiwanego terminu: " . $getinfo;
    }
}

$conn->close();

?>