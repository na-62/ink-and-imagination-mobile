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


===================================================================

Tugas 8

1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan? 

    const pada Flutter digunakan untuk membuat sebuah widget/objek immutable (tidak dapat diubah). Keuntungan const diantaranya hemat memori karena objek tersebut konstan dan hanya dibuat sekali, tidak perlu dirender berulang-ulang, dan mengurangi kemungkinan bug pada aplikasi.

    - Kapan sebaiknya menggunakan const
        - Pada widget atau objek yang tidak perlu diubah sama sekali
        - Elemen UI yang konstan, seperti Text, Icon, atau struktur Container yang tidak perlu dimodifikasi.

    - Kapan sebaiknya tidak menggunakan const
        Ketika sebuah widget/objek memiliki atau membutuhkan variabel yang akan berubah, misalnya ketika data tersebut berasal dari interaksi pengguna.


2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini! 

    Column menyusun widget secara vertikal dari atas ke bawah, sementara Row menyusun widget secara horizontal dari kiri ke kanan.

    - Contoh implementasi column:
    Column(
        children: [
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
        ],
    )

    - Contoh implementasi row:
    Row(
        children: [
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
        ],
    )


3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan! 
    - TextFormField: untuk input Nama produk (_name), Jumlah produk (_amount), dan Deskripsi produk (_description)
    - ElevatedButton: untuk tombol "Save"
    - AlertDialog: untuk menampilkan pesan konfirmasi saat produk berhasil disimpan.

    Ya, selain yang saya pakai ada elemen input Flutter lain yang tidak saya gunakan, yaitu:
    - DropdownButton: untuk memilih dari daftar pilihan
    - Checkbox: untuk memilih lebih dari satu opsi
    - Radio Button: untuk memilih salah satu dari beberapa opsi
    - Switch: untuk mengaktifkan atau menonaktifkan fitur tertentu
    - Slider: untuk memilih nilai dalam rentang tertentu
    - DatePicker: untuk input tanggal


4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat? 

    Tema dalam aplikasi Flutter saya atur menggunakan ThemeData pada file utama aplikasi (MaterialApp). Komponen tema-tema tersebut bisa di pass sebagai argumen untuk styling aplikasi agar konsisten. Ya, saya mengimplementasikan tema pada aplikasi ini pada main.dart, dimana saya menyebutkan salah satunya warna yang akan digunakan pada seluruh aplikasi ini


5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

    Saya menangani navigasi dengan menggunakan widget navigator, yang menampilkan halaman-halaman seperti suatu stack. Untuk menangani navigasi ke halaman lain, saya menggunakan fungsi yang sudah ada, seperti push() dan pop().  

    - Fungsi push() menambahkan suatu route ke dalam stack route,  route tersebut masuk ke paling atas stack, sehingga route tersebut akan ditampilkan kepada pengguna.
    - Fungsi pop() menghapus route yang ada di paling atas stack, sehingga halaman tersebut hilang dari layar pengguna dan tampilan pengguna kembali ke route yang berada di bawahnya.