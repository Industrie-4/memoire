
<?php

    include ('heading.php');
    error_reporting(E_ALL);
    header('Content-Type: application/json');
    $req = sprintf("SELECT * FROM dht");
    $rep = $bdd -> query($req);
    $data  = array();
    foreach($rep as  $row){
    $data[] = $row;
    }
    print json_encode($data);
?>