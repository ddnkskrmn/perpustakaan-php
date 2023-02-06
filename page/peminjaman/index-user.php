<h1>Halaman Peminjaman</h1>
<table class="table">
    <tr>
        <th>Nama</th>
        <th>Buku</th>
        <th>Tanggal Kembali</th>
    </tr>
    <?php
    $query = mysqli_query($connection, "SELECT `peminjaman`.*, `buku`.`judul` AS `buku_judul` FROM `peminjaman` LEFT JOIN `buku` ON `buku`.`id` = `peminjaman`.`buku_id` ");
    while ($model = mysqli_fetch_object($query)) :
    ?>
        <tr>
            <td><?= $model->nama ?></td>
            <td><?= $model->buku_judul ?></td>
            <td><?= $model->tanggal_kembali ?></td>
        </tr>
    <?php endwhile; ?>
</table>