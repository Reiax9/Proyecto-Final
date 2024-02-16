<?php

    require "conn.php";

    function validateUser($user, $pass){
        $conn   = getDBconnection();
        $sql = "SELECT `passHash` FROM `users` WHERE `username` LIKE :user"; //! Revisar que se quiere obtener

        try {
            $login = null;
            $db     = $conn->prepare($sql);
            $db->execute([':user' => $user]);
            $hash   = $db->fetchColumn();
            $login  = $hash && password_verify($pass,$hash)  ? true : false;
            
        } catch (PDOException $error) {
            echo 'Error: ' . $e->getMessage();
            $login = false;
        } finally {
            return $login;
        }
    }