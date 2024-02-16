<?php

    require "./db/conn.php";

    function validateUser($user, $pass){
        $login = false;
        $sql = "SELECT * FROM users WHERE `username` = :user AND `passHash` = :pass"; //! Revisar que se quiere obtener

        try {
            $conn = getDBconnection();
            
            $db = $conn->prepare($sql);
            $db->execute([':user' => $user, ':pass' => $pass]);

            if ($db && $db->rowCount()>0) { $login = true; } //? Comprueba el usuario
            
        } catch (PDOException $error) {
            echo 'Error: ' . $e->getMessage();
        } finally {
            return $login;
        }
    }