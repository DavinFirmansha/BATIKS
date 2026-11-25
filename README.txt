BATIKS — Website Konsultan Statistika
====================================

CARA MENJALANKAN WEBSITE

Windows
1. Ekstrak folder batiks.
2. Buka folder batiks.
3. Klik dua kali jalankan.bat.
4. Website akan terbuka di browser melalui http://localhost:5500.

macOS / Linux
1. Buka Terminal di dalam folder batiks.
2. Jalankan: python3 -m http.server 5500
3. Buka http://localhost:5500 di browser.

CATATAN
- Website ini berupa situs statis HTML, CSS, dan JavaScript.
- Formulir Kontak menyiapkan draf email ke batiks.inc@gmail.com. Permintaan baru terkirim setelah pengguna menekan tombol Kirim di aplikasi email.
- Grafik beranda memiliki tampilan cadangan jika pustaka grafik dari CDN tidak tersedia.
- Ilustrasi layanan dan artikel disimpan lokal dalam format SVG agar tidak bergantung pada URL gambar eksternal.
- Grafik pada halaman beranda diberi label sebagai data simulasi/ilustrasi, bukan data klien.

STRUKTUR UTAMA
- index.html       : Beranda
- layanan.html     : Katalog 33 layanan dan SOP
- portofolio.html  : Kapabilitas dan kerahasiaan
- tentang.html     : Profil dan tim
- artikel.html     : Insight dan panduan artikel
- faq.html         : Pertanyaan umum
- kontak.html      : Formulir dan kanal kontak
- assets/          : CSS, JavaScript, logo, foto, dan ilustrasi
