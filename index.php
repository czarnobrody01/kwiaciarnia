<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>czuks</title>
    <link rel="stylesheet" href="styl.css">

</head>
<body>


<div id="szary-pasek"></div>

<div id="navbar">
  <a href="#home">Home</a>
  <a href="#news">Nowe kwaitki</a>
  <a href="#contact">jakub suski</a>
</div>



<img src="pepsi.jpg" alt="kwaitkii">

    <form method="post">
    <!-- <input type="text" name="first_name" placeholder="podaj imie"><br> 
    <input type="text" name="last_name" placeholder="podaj nazwisko"><br>
    <input type="text" name="email" placeholder="podaj email"><br>
    <input type="password" name="haslo" placeholder="podaj haslo"><br> -->
    <input type="text" name="nazwakwiatek" placeholder="podaj nazwe szukanego kwiatka, np.: tulipan">
    <!-- <select name="walczuch" >
        <option value="mezczyzna">meżczyzna</option>
        <option value="kobieta">kobieta</option>
        <option value="pietruszka">pietruszka</option>
    </select> -->
    <input type="submit">

</form>





</body>
<?php

@$first_name = $_POST["first_name"];
@$last_name = $_POST["last_name"];
@$email = $_POST["email"];
@$password = $_POST["haslo"];
@$gender = $_POST["walczuch"];

@$getinfo = $_POST['nazwakwiatek'];

require 'bazy.php';










?>
</html>