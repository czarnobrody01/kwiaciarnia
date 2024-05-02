<?php

$servername = "localhost"; 
$username = "root"; 
$dbpassword = ""; 
$database = "kwiaciarnia"; 

$conn = new mysqli($servername, $username, $dbpassword, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }



if($gettable='adres'){
    $columns = "miasto, ulica, numer";
    $mainkey = "id_adres";
}elseif($gettable='zamowienia'){
    $columns = "id_kwiatek, id_user, id_adres, ilosc_kwiatkow";
    $mainkey = "id_zamowienia";
}



/*
  if(isset($getinfo) && !empty($getinfo)){
   $sql = "SELECT nazwa, opis FROM kwiatekopis WHERE nazwa LIKE '%$getinfo%'";
  

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
    
        while($row = $result->fetch_assoc()) {
            echo "Nazwa: " . $row. "<br>Opis: " . $row. "<br><br>";
        }
    } else {
        
        echo "Brak wyników dla wyszukiwanego terminu: " . $getinfo;
    }
}
*/
if(isset($getinfo) && !empty($getinfo)){

    $sql = "SELECT $columns FROM $gettable WHERE $mainkey = '$getinfo'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Pobranie informacji o kolumnach
        $fields = $result->fetch_fields();
        
        // Pętla wyświetlająca wyniki zapytania
        while($row = $result->fetch_assoc()) {
            // Pętla przechodząca przez każdą kolumnę i konwertująca wartość na string
            $rowString = "";
            foreach ($fields as $field) {
                $rowString .= $field->name . ": " . strval($row[$field->name]) . ", ";
            }
            // Usunięcie ostatniego przecinka i spacji
            $rowString = rtrim($rowString, ", ");
            
            // Wyświetlenie danych na stronie
            echo $rowString . "<br>";
        }
    } else {
        echo "brak wynikow";
    }
}

$conn->close();

?>