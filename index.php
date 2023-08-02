<?php
include 'header.php';
?>
<!-- IMAGE -->
<div class="container-fluid" style="margin: 0;padding: 0;">
	<div class="image" style="margin-top: -21px">
		<img src="image/home/bgg.png" style="width: 100%;  height: 650px;">
	</div>
</div>
<br>
<br>

<!-- PRODUK TERBARU -->
<div class="container">


	<h4 class="text-center" style="font-family: arial; padding-top: 10px; padding-bottom: 10px; font-style: italic; line-height: 29px; border-top: 2px solid #ffb703; border-bottom: 2px solid #ffb703;">"Selamat datang di restoran kami, tempat di mana makanan lezat bertemu dengan pelayanan yang luar biasa! Nikmati hidangan istimewa kami yang disajikan dengan cinta dan keahlian dari para koki kami. Tersedia berbagai pilihan menu yang akan memanjakan lidah Anda, mulai dari hidangan tradisional hingga inovasi kuliner terbaru. Jangan lewatkan kesempatan untuk mencicipi cita rasa autentik yang menggugah selera di restoran kami. Rasakan kehangatan dan keceriaan di setiap suapan. Kunjungi kami hari ini dan biarkan kami memanjakan Anda dengan pengalaman kuliner tak terlupakan!"</h4>


	<h2 style=" width: 100%; border-bottom: 4px solid #ffb703; margin-top: 80px;"><b>Produk Kami</b></h2>

	<div class="row">
		<?php
		$result = mysqli_query($conn, "SELECT * FROM produk");
		while ($row = mysqli_fetch_assoc($result)) {
		?>
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail">
					<img src="image/produk/<?= $row['image']; ?>">
					<div class="caption">
						<h3><?= $row['nama'];  ?></h3>
						<h4>Rp.<?= number_format($row['harga']); ?></h4>
						<div class="row">
							<div class="col-md-6">
								<a href="detail_produk.php?produk=<?= $row['kode_produk']; ?>" class="btn btn-warning btn-block">Detail</a>
							</div>
							<?php if (isset($_SESSION['kd_cs'])) { ?>
								<div class="col-md-6">
									<a href="proses/add.php?produk=<?= $row['kode_produk']; ?>&kd_cs=<?= $kode_cs; ?>&hal=1" class="btn btn-success btn-block" role="button"><i class="glyphicon glyphicon-shopping-cart"></i> Tambah</a>
								</div>
							<?php
							} else {
							?>
								<div class="col-md-6">
									<a href="keranjang.php" class="btn btn-success btn-block" role="button"><i class="glyphicon glyphicon-shopping-cart"></i> Tambah</a>
								</div>

							<?php
							}
							?>

						</div>

					</div>
				</div>
			</div>
		<?php
		}
		?>
	</div>

	<div class="review" id="Review">
		<h1>Ulasan<span>Pelanggan</span></h1>

		<div class="review_box">
			<div class="review_card">

				<div class="review_profile">
					<img src="image/home/review_1.jpg">
				</div>

				<div class="review_text">
					<h2 class="name">Reldy Paliling Ramba</h2>

					<div class="review_icon">
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>

					<div class="review_social">
						<i class="fa-brands fa-facebook-f"></i>
						<i class="fa-brands fa-instagram"></i>
						<i class="fa-brands fa-twitter"></i>
						<i class="fa-brands fa-linkedin-in"></i>
					</div>

					<p>
						Wow Enak bgt coy!!!!!!! Tunggu Apa lagi pesan sekarang, Daripada nunggu dia yg nga jelas mending pesan ini yg pasti.
					</p>

				</div>

			</div>

			<div class="review_card">

				<div class="review_profile">
					<img src="image/home/review2.jpg">
				</div>

				<div class="review_text">
					<h2 class="name">Elia Putri</h2>

					<div class="review_icon">
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>

					<div class="review_social">
						<i class="fa-brands fa-facebook-f"></i>
						<i class="fa-brands fa-instagram"></i>
						<i class="fa-brands fa-twitter"></i>
						<i class="fa-brands fa-linkedin-in"></i>
					</div>

					<p>
						Pelayanan sangat baik dan ramah, makanannya juga enak
					</p>

				</div>

			</div>

			<div class="review_card">

				<div class="review_profile">
					<img src="image/home/review3.jpg">
				</div>

				<div class="review_text">
					<h2 class="name">Alisia Rongrean</h2>

					<div class="review_icon">
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>

					<div class="review_social">
						<i class="fa-brands fa-facebook-f"></i>
						<i class="fa-brands fa-instagram"></i>
						<i class="fa-brands fa-twitter"></i>
						<i class="fa-brands fa-linkedin-in"></i>
					</div>

					<p>
						Rekomendasi banget buat kamu yang mau makanan enak dan juga cepat, pokoknya worth it deh!
					</p>

				</div>

			</div>

			<div class="review_card">

				<div class="review_profile">
					<img src="image/home/review4.jpg">
				</div>

				<div class="review_text">
					<h2 class="name">Glory Deo</h2>

					<div class="review_icon">
						<i class="fa-solid fa-star"></i>

						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star-half-stroke"></i>
					</div>

					<div class="review_social">
						<i class="fa-brands fa-facebook-f"></i>
						<i class="fa-brands fa-instagram"></i>
						<i class="fa-brands fa-twitter"></i>
						<i class="fa-brands fa-linkedin-in"></i>
					</div>

					<p>
						Enak Sekali guys!! Rekomen buat kamu yg nyari makanan enak plus pelayanan bagus!
					</p>

				</div>

			</div>

		</div>

	</div>

</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<?php
include 'footer.php';
?>