<?php

    require_once "./db/conn.php";
    require_once "./db/users.php";

    session_start();

    if ($_SERVER["REQUEST_METHOD"]=="POST") {
        
        $user = isset($_POST['name'])     ? htmlspecialchars($_POST['name'])     : null;
        $pass = isset($_POST['password']) ? htmlspecialchars($_POST['password']) : null;

        if ($user && $pass) {
            if (validateUser($user, $pass)) {
                $_SESSION['user'] = $user;
                header("Location: ./paginaalvarus");
                exit();
            }

            $error = "Usuario o contraseña incorrectos.";

        } else {
            $error = "Por favor, introduce usuario y contraseña.";
        }
    } elseif ($_COOKIE['PHPSESSID']) {
        header("Location: ./paginaalvarus");
        exit();
    }
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login ClassWave</title>
    <link rel="stylesheet" href="./css/index.css">
</head>
<body>
    <main>
        <div id="container-form">
            <img src="./img/ClassWaveManagment_Logo.png" alt="Logo ClassWave" id="iconoEmpresa">
            <h1>Login</h1>
            <?php if(isset($error)) { echo "<span style='color:red;'>".$error."</span>"; } ?>
            <form action="./index.html" method="post">
                <div class="logoInput">
                    <img src="./img/profile.png" alt="logoProfile" id="logoProfile">
                    <input type="text" name="name" class="passuser" placeholder="Username" value=<?=$user?> required>
                </div>
                <div class="logoInput">
                    <img src="./img/key.png" alt="logoProfile" id="logoProfile">
                    <input type="password" name="password" class="passuser" placeholder="Password" required>
                </div>
                <input type="submit" value="Enviar" id="button">
            </form>
        </div>
    </main>
</body>
</html>