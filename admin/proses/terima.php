<?php
include '../../koneksi/koneksi.php';
$inv = $_GET['inv'];

$result = mysqli_query($conn, "SELECT * from produksi where invoice = '$inv'");

while ($row = mysqli_fetch_assoc($result)) {
	$kodep = $row['kode_produk'];

	if ($kodep) {
		mysqli_query($conn, "UPDATE produksi SET terima = '1', status = '0' WHERE invoice = '$inv'");

		echo "
		<script>
		alert('PESANAN BERHASIL DITERIMA');
		window.location = '../produksi.php';
		</script>
		";
	}
}
