<?php
    session_start();
    require "../../script/auth.php";
    require "../../script/conn.php";

    $result = mysqli_query($conn, "SELECT * FROM acara");
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

    <section class="event">
        <h1>List Acara</h1>
        <div class="button">
            <a href="/admin/acara/tambah.php">Tambah</a>
        </div>
        <div style="overflow-x:auto;">
            <table border="1" cellpadding="10" cellspacing="2">
                <tr>
                    <th>ID</th>
                    <th>Aksi</th>
                    <th>Nama Acara</th>
                    <th>Lokasi</th>
                    <th>Waktu</th>
                    <th>Gambar</th>
                    <th>Acara Utama</th>
                </tr>
    
                <?php while ( $row = mysqli_fetch_row($result)) : ?>
                    <tr>
                        <td><?= $row[0]; ?></td>
                        <td>
                            <a href="ubah.php?id=<?= $row[0]; ?>">Ubah</a> |
                            <a href="hapus.php?id=<?= $row[0]; ?>">Hapus</a>
                        </td>
                        <td><?= $row[1]; ?></td>
                        <td><?= $row[2]; ?></td>
                        <td><?= $row[3]; ?></td>
                        <td><img src="<?= $row[4]; ?>" alt=""></td>
                        <td><?= $row[5]; ?></td>
                    </tr>
                <?php endwhile; ?>
            </table>

        </div>
    </section>

</body>
</html>