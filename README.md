# ink_and_imagination
Nama: Nafisa Arrasyida
NPM : 2306226391

Tugas 7
1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
    - Stateless Widget adalah widget yang tidak memiliki state atau tidak berubah setelah dibuat. Setelah dirender, stateless widget tidak akan berubah kecuali widget itu sendiri diganti. Contohnya adalah widget yang hanya menampilkan data statis atau yang tidak membutuhkan interaksi pengguna untuk mengubah tampilan.
    - Stateful Widget adalah widget yang memiliki state atau dapat berubah-ubah selama siklus hidupnya. Stateful widget merespon interaksi pengguna yang mengubah data di dalamnya (state) sehingga dilakukan render ulang.

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
    - MaterialApp: Widget root yang menyediakan konfigurasi dasar seperti tema dan properti global lainnya.
    - Scaffold: Memberikan struktur dasar untuk halaman seperti AppBar, body, floating action button, dll.
    - AppBar: Menyediakan bar aplikasi di bagian atas halaman.
    - Padding: Menambahkan jarak di sekitar widget.
    - Column: Menyusun widget secara vertikal.
    - Row: Menyusun widget secara horizontal.
    - InfoCard: Menampilkan informasi dalam format kartu.
    - GridView.count: Menyusun widget dalam grid dengan jumlah kolom tetap.
    - ItemCard: Menampilkan icon dan teks dengan background color, digunakan untuk menampilkan item dari ItemHomepage.
    - Material: Memberikan efek seperti shadow untuk widget.
    - InkWell: Memberikan efek visual seperti ripple.
    - Container: Widget yang fleksibel untuk styling, layout, dan lainnya.
    - Icon: Menampilkan icon bawaan flutter dalam widget.
    - Text: Menampilkan teks dalam aplikasi.
    - SnackBar: Menampilkan notifikasi sementara di bagian bawah layar.

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
    setState() digunakan dalam Stateful Widget untuk memberitahukan kepada Flutter bahwa ada perubahan pada state yang perlu dirender ulang. Ketika setState() dipanggil, Flutter akan melakukan ulang build() widget tersebut untuk memperbarui tampilannya sesuai dengan state yang baru. Variabel yang terdampak hanya variabel yang ada di dalam state class yang berubah. 

4. Jelaskan perbedaan antara const dengan final.
    - const:
        - Digunakan untuk variabel yang konstan pada waktu compile (compile-time constant).
        - Nilai const harus sudah ditentukan pada waktu compile.
    - final:
        - Digunakan untuk variabel yang konstan pada waktu runtime (runtime constant).
        - Nilainya hanya bisa diatur sekali dan setelah diatur tidak bisa diubah, tapi bisa ditentukan selama runtime.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
    - Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
    Saya membuat repositori baru dan dengan nama yang sesuai dengan tugas sebelumnya, serta akan mengisinya dengan aplikasi versi modile yang sesuai dengan konsep tugas sebelumnya, bernama "Ink & Imagination"

    - Membuat tiga tombol sederhana dengan ikon dan teks untuk:
        - Melihat daftar produk (Lihat Daftar Produk)
        - Menambah produk (Tambah Produk)
        - Logout (Logout)
    Saya menampilkan tombol-tombol tersebut dengan membuat class "ItemHomePage" yang berisi atribut nama dan icon. selain itu, class ItemCard untuk menampilkan kartu dengan ikon dan nama tersebut. Selain itu juga class InfoCard untuk mengatur cards tersebut secara keseluruhan. Tiga tombol yang diminta, yaitu tombol lihat daftar produk, tombol tambah produk, dan tombol logout dimasukkan pada list items dalam MyHomePage dan di build di dalamnya. Untuk icon tombol-tombol tersebut saya cari yang sesuai dengan melihat dokumentasi Icons pada flutter.

    - Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
    Saya memberikan warna yang berbeda-beda untuk setiap tombol dengan menambahkan atribut pada class ItemHomePage, yaitu color. color tersebut kemudian di-pass ke color dalam build ItemCard sehingga ditampilkan dalam page tersebut. Untuk itu, saya menambahkan parameter color pada setiap item di List<ItemHomepage> pada class MyHomePage sesuai warna yang saya inginkan untuk ketiga item tersebut.

    - Memunculkan Snackbar dengan tulisan:
        - "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan.
        - "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan.
        - "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
    Saat membuild tombol-tombol tersebut di ItemCard, saya menambahkan fungsi yang menampilkan snackbar saat ditekan, dengan kode:

    onTap: () {
        ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
    },

    sehingga setiap tombol di ItemHomePage akan menampilkan "Kamu telah menekan tombol ${item.name}!" saat di-tap.

    