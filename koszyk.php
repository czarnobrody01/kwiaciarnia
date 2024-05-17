<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Twoj Koszyk</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    


<header>
    <div class="container">
        <h1>Kwiaciarnia Pod Słońcem</h1>
<div>
    <a class="button" href="strona.html">Strona główna</a>
    <a class="button" href="news.html">O nas</a>
    <a class="button" href="contact.html">Kontakt</a>
    
    <div class="dropdown">
        <button class="button">oferta</button>
        <div class="dropdown-content">
            <a href="oferta.html">bukiety róż</a>
            <a href="bukiet.html">bukiety mieszane</a>
            <a href="bukiety 3.html">inne bukiety</a>
        </div>
    </div>
    <a class="button" id="buttonkoszyk" href="koszyk.php">Złóż Zamówienie</a>
</div>
</div>
    <!-- Nagłówek analogiczny do strony głównej -->


<script>


function oblicz(cena){

var p = document.getElementById('wynik').innerHTML = "Cena wynosi: "+document.getElementById('liczba').value*cena+" + cena za dostawe: "+5+"zł"

}


</script>

</header>

<section class="contact">
    <div class="container">
        <h2>Kontakt</h2>
        <p>Skontaktuj się z nami, aby złożyć zamówienie lub uzyskać więcej informacji.</p>
        <?php

$servername = "localhost"; 
$username = "root"; 
$dbpassword = ""; 
$database = "kwiaciarnia"; 

// Tworzenie połączenia
$conn = new mysqli($servername, $username, $dbpassword, $database);

// Sprawdzenie połączenia
if ($conn->connect_error) {
    die("Połączenie nieudane: " . $conn->connect_error);
}

// Pobranie unikalnych rodzajów kwiatków z bazy danych



$result = $conn->query("SELECT kwiatekopis.id_kwiatek, kwiatekopis.nazwa, kwiatekcena.cena
FROM kwiatekopis
INNER JOIN kwiatekcena ON kwiatekopis.id_kwiatek = kwiatekcena.id_kwiatek;");
$result2 = $conn->query("SELECT DISTINCT id_user, imie, nazwisko FROM users");
$result3 = $conn->query("SELECT DISTINCT id_adres, ulica, numer FROM adres");


// Formularz do wyboru rodzaju kwiatka i podania liczby
echo "<form method='post'>";

echo "Kto ty: <select name='user'>";
// wybierz uzytkownika
if ($result2->num_rows > 0) {
    while ($row = $result2->fetch_assoc()) {
        echo "<option value='" . $row['id_user'] . "'>" . $row['imie'] . " " . $row['nazwisko']. "</option>";
    }
}
echo "</select><br>";

echo "Rodzaj kwiatka: <select name='kwiat' id='kwiat'>";
// wybierz kwiatka
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<option value='" . $row['id_kwiatek'] . "'>" . $row['nazwa'] . " " . $row['cena']. "zł" . "</option>";
    }
}
echo "</select><br>";

// wybierz adres
echo "Gdzie mieszkasz: <select name='adres'>";
if ($result3->num_rows > 0) {
    while ($row = $result3->fetch_assoc()) {
        echo "<option value='" . $row['id_adres'] . "'>" . $row['ulica'] . " " . $row['numer']. "</option>";
    }
}
echo "</select><br>";
echo "Liczba: <input type='number' id='liczba' name='liczba'><br>";
echo "<input type='button' onclick='oblicz(2)' value='Oblicz cenę(na razie mnozy tylko razy dwa)'>";
echo "<p id='wynik'><p>";
echo "<input type='submit' value='Złoż zamowienie'>";
echo "</form>";

// Obsługa formularza
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user = $_POST['user'];
    $kwiat = $_POST['kwiat'];
    $adres = $_POST['adres'];
    $liczba = $_POST['liczba'];

    // Wstawienie danych do bazy danych
    $polecenie1 = "INSERT INTO test (nazwa, liczba, user, adres) VALUES ('$kwiat', '$liczba', '$user', '$adres')";

    if ($conn->query($polecenie1) === TRUE) {
        echo "Dane zostały pomyślnie dodane do bazy danych.";
    } else {
        echo "Błąd: " . $polecenie1 . "<br>" . $conn->error;
    }
}

// Zamknięcie połączenia
$conn->close();
?>



    </div>
</section>
</body>





<footer>
    <div>
        <p>&copy; 1400 p.n.e. Kwiaciarnia Pod Słońcem. Wszelkie prawa zastrzeżone.</p>
        <p>Współpraca: <a href="mailto:info@kwiaciarniapodsloncem.pl">info@kwiaciarniapodsloncem.pl</a></p>
    </div>
</footer>
</html>