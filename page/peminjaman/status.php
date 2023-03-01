<?php
if (empty($_GET['id'])) :
    echo "<h3>Error 404</h3><h5>Page Not Found</h5>";
else :

    if (isset($_GET['id'])) {

        $query = mysqli_query($connection, "UPDATE `peminjaman` SET `status` = 1 WHERE `id` = '{$_GET['id']}'");
        if ($query) {
            echo '<div class="alert alert-success" role="alert">Peminjaman berhasil di konfirmasi !</div>';
            echo '<a href="index.php?page=peminjaman/index.php" class="btn btn-sm btn-outline-dark">Klik disini untuk kembali</a>';
        } else {
            echo '<div class="alert alert-danger" role="alert">Konfirmasi peminjaman gagal !</div>';
        }
    }

endif;
