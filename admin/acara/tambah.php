<?php
    session_start();
    require "../../script/auth.php";
    require "../../script/conn.php";

    if ( isset($_POST["submit"])) {
        $nama = htmlspecialchars($_POST["nama"]);
        $lokasi = htmlspecialchars($_POST["lokasi"]);
        $date = htmlspecialchars($_POST["date"]);
        $gambar = htmlspecialchars($_POST['gambar']);
        $utama = htmlspecialchars($_POST['utama']);


        $insert = "INSERT INTO `acara`(`id`, `nama`, `lokasi`, `waktu`, `gambar`, `utama`) VALUES (NULL, '$nama', '$lokasi', '$date', '$gambar', '$utama')";

        mysqli_query($conn, $insert);

        $_SESSION["type"] =  "data berhasil ditambah";
        $_SESSION["dst"] = "/admin/acara";

        header("Location: /admin/berhasil.php");
        exit;
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Data | Kementerian Pariwisata</title>
    <link rel="stylesheet" href="/style/input.css">
    <link rel="icon" href="/favicon.ico">
</head>
<body>
    <h1>Tambah Data Acara</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <h3>Nama Acara</h3>
        <input type="text" name="nama" id="nama" required autocomplete="off">

        <h3>Lokasi Acara</h3>
        <input type="text" name="lokasi" id="lokasi" required autocomplete="off">

        <h3>Waktu Acara</h3>
        <input type="date" name="date" id="date" required autocomplete="off">

        <h3>Link Gambar Thumbnail Acara</h3>
        <input type="url" name="gambar" id="gambar" required autocomplete="off">

        <h3>Acara Utama</h3>
        <select id="utama" name="utama">
            <option value="Tidak">Tidak</option>
            <option value="Iya">Iya</option>
        </select>

        <br><br>
        <button type="submit" name="submit">Tambahkan</button>
    </form>

</body>
</html>