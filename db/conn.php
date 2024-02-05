<?php
    $cadena_connexio = 'mysql:dbname=classwave;host=localhost:3306'; //! Cambia la base de datos
    $usuari = 'root';
    $passwd = '';
    try{
        $db = new PDO($cadena_connexio, $usuari, $passwd, 
                        array(PDO::ATTR_PERSISTENT => true));
        
    }catch(PDOException $e){
        echo 'ERROR: ' . $e->getMessage();
    }