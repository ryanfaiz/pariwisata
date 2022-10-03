<?php
    session_start();

    $admin_name = $_SESSION["name"];

    $_SESSION = [];
    session_unset();
    session_destroy();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout Berhasil</title>
    <link rel="stylesheet" href="/style/admin.css">
    <link rel="icon" href="/favicon.ico">
</head>
<body>
<section class="result">
        <img src="/asset/img/goodbye.webp" alt="" >

        <h2>Mata ne <?= $admin_name; ?> nii-chan!</h2>
        <a href="/auth"><button>Kembali ke Menu Login</button></a>
    </section>
</body>
</html>