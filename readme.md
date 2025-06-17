# 🚗 Aplikasi Rental Mobil - PHP Native

Selamat datang di repositori Aplikasi Rental Mobil! Ini adalah sebuah sistem informasi manajemen penyewaan mobil yang dibangun secara _native_ menggunakan PHP. Proyek ini dirancang dengan struktur **Model-View-Controller (MVC)** sederhana untuk memastikan kode lebih terorganisir, mudah dipahami, dan dikelola.

## ✨ Fitur Utama

Aplikasi ini memiliki beberapa fitur inti untuk mengelola operasional bisnis rental mobil:

-   **👤 Manajemen Pengguna**: Mengelola akun admin dan pengguna lain yang dapat mengakses sistem.
-   **🚘 Manajemen Data Mobil**: Tambah, lihat, ubah, dan hapus (CRUD) data mobil yang disewakan.
-   **🔖 Manajemen Merek Mobil**: Mengelola daftar merek mobil yang tersedia.
-   **👥 Manajemen Pelanggan**: Mengelola data pelanggan yang melakukan penyewaan.
-   **🔄 Manajemen Transaksi**:
    -   Pencatatan transaksi penyewaan mobil.
    -   Pencatatan transaksi pengembalian mobil.
    -   Menampilkan riwayat dan detail transaksi.
-   **📄 Laporan**: Membuat laporan transaksi untuk analisis bisnis.
-   **🔐 Sistem Otentikasi**: Fitur login dan logout yang aman untuk melindungi data.

## 🛠️ Teknologi yang Digunakan

-   **Bahasa Pemrograman**: **PHP Native**
-   **Database**: **MySQL** / **MariaDB**
-   **Struktur Proyek**: **Model-View-Controller (MVC)**
-   **Frontend**: HTML, CSS, JavaScript
-   **Admin Template**: [SB Admin 2](https://startbootstrap.com/theme/sb-admin-2)

## 🗂️ Struktur Direktori

Proyek ini disusun dengan struktur folder yang rapi untuk memisahkan logika, tampilan, dan aset.

```
.
├── Database/         # Berisi file dump .sql untuk struktur dan data awal
├── assets/           # Menyimpan file statis (CSS, JS kustom, gambar)
├── controllers/      # Logika bisnis dan penghubung antara Model dan View
├── core/             # File-file inti aplikasi (Bootstrap, Controller, dll.)
├── functions/        # Kumpulan fungsi helper
├── models/           # Berinteraksi langsung dengan database
├── sb-admin-2/       # Aset dari template SB Admin 2
├── uploads/          # Tempat menyimpan file yang diunggah (misal: gambar mobil)
├── views/            # Berisi semua file antarmuka pengguna (UI)
└── index.php         # Entry point atau file utama aplikasi
```

## 🚀 Panduan Instalasi

Untuk menjalankan proyek ini di komputer lokal Anda, ikuti langkah-langkah berikut:

1.  **Clone Repositori**
    Gunakan perintah `git` untuk mengunduh repositori ini.
    ```bash
    git clone https://github.com/Mystery-World3/rental-mobil-php-native.git
    ```

2.  **Pindahkan ke Direktori Web Server**
    Pindahkan folder `rental-mobil-php-native` ke dalam direktori `htdocs` jika Anda menggunakan XAMPP, atau `www` jika menggunakan WAMP.

3.  **Setup Database**
    -   Buka phpMyAdmin dari browser (`http://localhost/phpmyadmin`).
    -   Buat sebuah database baru dengan nama `db_rental_mobil`.
    -   Pilih database yang baru dibuat, lalu buka tab **Import**.
    -   Unggah file `db_rental_mobil.sql` yang ada di dalam folder `Database/` pada proyek ini.

4.  **Konfigurasi Koneksi**
    -   Secara default, koneksi sudah diatur untuk lingkungan lokal standar. Jika Anda menggunakan username atau password yang berbeda untuk database, silakan sesuaikan di file konfigurasi yang relevan (misalnya di dalam folder `core` atau `config`).

5.  **Jalankan Aplikasi**
    -   Buka web browser Anda dan kunjungi alamat:
    -   `http://localhost/rental-mobil-php-native`

Aplikasi siap digunakan!

## 🤝 Kontribusi

Merasa ada yang bisa ditingkatkan atau ingin menambahkan fitur baru? Kontribusi sangat diterima! Silakan lakukan _fork_ pada repositori ini, buat perubahan pada _branch_ Anda, dan ajukan _Pull Request_.

---
Dibuat oleh [Mystery-World3](https://github.com/Mystery-World3)

