<?php
    session_start();
    require "../script/auth.php";
    require "../script/conn.php";

    $admin_name = $_SESSION["name"];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Kementerian Pariwisata</title>
    <link rel="stylesheet" href="/style/admin.css">
    <link rel="icon" href="/favicon.ico">
</head>
<body>
    <header>
        <div class="header-con">
            <a href="/admin"><img src="/asset/img/icon.webp" alt="" class="icon"></a>
            <div class="nav-con">
                <nav>
                    <a href="/admin" >Home</a>
                    <a href="/admin/acara" >Acara</a>
                    <a href="/admin/tempat" >Tempat Wisata</a>
                </nav>
            </div>
            <a href="/admin/logout.php"><button>Logout</button></a>
        </div>
    </header>

    <section class="result">
        <h1> Okaerinasai, <?= $admin_name ?> nii-chan!</h1>
        <img src="/asset/img/welcome.webp">
    </section>

</body>
</html>