<?php

try {
        $host = "localhost";
        $user = "root";
        $pass = "";
        $base = "ethernet";

        $bdd = new PDO("mysql:host=" . $host . ";dbname=" . $base . ";charset=utf8", $user, $pass);  
    } 
catch (PDOException $e) {
        echo 'Erreur : '.$e->getMessage();
    }

?>