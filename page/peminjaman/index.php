<h1>Halaman Peminjaman</h1>
<a href="index.php?page=peminjaman/tambah.php" class="btn btn-sm btn-primary float-end">Tambah</a>
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
            <td>
                <select class="form-control" id="exampleFormControlSelect1">
                    <option>Aktif</option>
                    <option>Dikembalikan</option>
                </select>
            </td>
            <td>
                <a href="index.php?page=peminjaman/hapus.php&id=<?= $model->id ?>" onclick="return confirm('Hapus data ini?')" class="btn btn-sm btn-danger">Hapus</a>
            </td>
        </tr>
    <?php endwhile; ?>
</table>