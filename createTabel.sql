-- Active: 1668151764243@@127.0.0.1@3306@toko_online
CREATE TABLE pelanggan(
	id_pelanggan INTEGER PRIMARY KEY,
	nama_pelanggan VARCHAR(20) NOT NULL,
	alamat_pelanggan VARCHAR(45) NOT NULL,
	jenis_kelamin VARCHAR(20) NOT NULL);
CREATE TABLE order_item(
	id_order INTEGER PRIMARY KEY,
	id_pelangganFK INTEGER REFERENCES pelanggan(id_pelanggan) ON DELETE CASCADE ON UPDATE CASCADE,
	tanggal_order DATE NOT NULL,
	jumlah_bayar INTEGER NOT NULL,
	jenis VARCHAR(20) NOT NULL);
CREATE TABLE detail_order(
	id_orderFK INTEGER REFERENCES order_item(id_order) ON DELETE CASCADE ON UPDATE CASCADE,
	id_barangFK INTEGER REFERENCES barang(id_barang) ON DELETE CASCADE ON UPDATE CASCADE,
	jumlah_beli INTEGER NOT NULL,
	kategori_order VARCHAR(25) NOT NULL);
CREATE TABLE barang(
	id_barang INTEGER PRIMARY KEY,
	nama_barang VARCHAR(45) UNIQUE NOT NULL,
	jenis_barang VARCHAR(20) NOT NULL,
	stock_barang INTEGER NOT NULL,
	harga INTEGER NOT NULL);
