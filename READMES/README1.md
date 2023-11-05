# Tugas 7
## Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Jawaban :
| Stateless Widget  | Stateful Widget |
| ------------- | ------------- |
| tidak memiliki keadaan internal yang dapat berubah selama masa hidupnya | memiliki keadaan internal yang dapat berubah selama masa hidupnya  |
| hanya memiliki properti yang ditentukan selama konstruksi dan tidak bisa diubah setelahnya | keadaan internal dapat diubah berdasarkan peristiwa atau interaksi pengguna, dan widget ini dapat diperbarui untuk mencerminkan perubahan tersebut |
| cocok digunakan untuk tampilan yang tidak berubah atau bergantung pada properti yang diberikan pada saat pembuatan widget | cocok digunakan untuk tampilan yang perlu berubah atau menanggapi perubahan, seperti daftar item dinamis, formulir, atau widget yang berinteraksi dengan data eksternal |

## Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
Jawaban :
| Nama Widget  | Penjelasan |
| ------------- | ------------- |
| Icon | widget yang berguna untuk menampilkan ikon pada kartu |
| AppBar | widget untuk membuat navbar(bilah atas) aplikasi yang berisi judul aplikasi |
| Container | widget yang digunakan untuk mengatur tata letak dan dekorasi widget lainnya |
| Text | widget yang digunakan untuk menampilkan teks pada kartu |
| GridView | widget yang digunakan untuk menampilkan daftar item dalam tata letak berbasis grid |
| InkWell | widget untuk membuat area yang responsfif terhadap sentuhan |
| Column | widget custom yang berguna  untuk mengatur widget-widget dalam satu kolom vertikal |
| Scaffold | widget yang digunakan  sebagai elemen utama dalam struktur aplikasi |
| Align | widget yang digunakan untuk mengatur tata letak anak-anaknya dengan mengatur posisi mereka secara relatif terhadap parentnya |
| Padding | widget yang digunakan untuk menambahkan jarak atau spasi di sekeliling widget anaknya |
| Snackbar | widget yang digunakan untuk memberikan informasi atau umpan balik singkat kepada pengguna |
| Center | widget yang digunakan untuk mengatur widget anaknya secara tengah (vertikal dan horizontal) dalam parentnya |
| SingleChildScrollView | widget yang digunakan untuk mengatasi masalah overflow pada konten dalam aplikasi Flutter |
| Theme | widget yang digunakan untuk mengatur tema global aplikasi, seperti warna, teks, dan gaya |

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
Jawaban :
### Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
1. Membuka terminal dan masuk ke direktori `Flutter` dimana saya akan menyimpan proyek flutter saya
2. Menjalankan perintah `flutter create skincare_list` dan masuk ke direktori proyek saya dengan menjalankan perintah `cd skincare_list`

### Membuat tiga tombol sederhana dengan ikon dan teks untuk: Melihat daftar item, Menambahkan item, dan Logout.
1. Mengubah beberapa struktur file `main.dart` agar terlihat lebih mudah dipahami dengan kode berikut :
```dart
    import 'package:flutter/material.dart';
    import 'package:skincare_list/menu.dart';

    void main() {
        runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
        const MyApp({super.key});

        // This widget is the root of your application.
        @override
        Widget build(BuildContext context) {
            return MaterialApp(
                title: 'Flutter Tugas',
                theme: ThemeData(
                    // This is the theme of your application.
                    //
                    // TRY THIS: Try running your application with "flutter run". You'll see
                    // the application has a blue toolbar. Then, without quitting the app,
                    // try changing the seedColor in the colorScheme below to Colors.green
                    // and then invoke "hot reload" (save your changes or press the "hot
                    // reload" button in a Flutter-supported IDE, or press "r" if you used
                    // the command line to start the app).
                    //
                    // Notice that the counter didn't reset back to zero; the application
                    // state is not lost during the reload. To reset the state, use hot
                    // restart instead.
                    //
                    // This works for code too, not just values: Most code changes can be
                    // tested with just a hot reload.
                    // colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFEBC2D5)),
                    scaffoldBackgroundColor: const Color(0xFFEBC2D5),
                    useMaterial3: true,
                ),
                home: MyHomePage(),
            );
        }
    }
```
2. membuat file baru dengan nama `menu.dart` pada direktori `skincare_list/lib` dan menambahkan kode berikut untuk men-define tipe untuk list tombol-tombolnya dengan icon dan teks yang sesuai:
```dart
    import 'package:flutter/material.dart';

    class ShopItem {
        final String name;
        final IconData icon;
        final Color color; // bonus

        ShopItem(this.name, this.icon, this.color);
    }

    class ShopCard extends StatelessWidget {
        final ShopItem item;

        const ShopCard(this.item, {super.key}); // Constructor

        @override
        Widget build(BuildContext context) {
            return Material(
                color: item.color,
                child: InkWell(
                    // Area responsive terhadap sentuhan
                    onTap: () {
                        // Memunculkan SnackBar ketika diklik
                        ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                    content: Text(
                                    "Kamu telah menekan tombol ${item.name}!",
                                    style: const TextStyle(
                                        color: const Color(0xFFEBC2D5),
                                    ),
                                ), 
                                backgroundColor:Color(0xFFA42153),
                            ));
                    },
                    child: Container(
                        // Container untuk menyimpan dan Text
                        padding: const EdgeInsets.all(8),
                        child: Center(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    Icon(
                                        item.icon,
                                        color:const Color(0xFFA42153),
                                        size: 30.0,
                                    ),
                                    const Padding(padding: EdgeInsets.all(3)),
                                    Text(
                                        item.name,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(color:Color(0xFFA42153)),
                                    ),
                                ],
                            ),
                        ),
                    ),
                ),
            );
        }
    }
```

3. Menyisipkan kode dibawah ini untuk menambahkan nama dari 3 tombol yang akan ditambahkan
```dart
    class MyHomePage extends StatelessWidget {
        MyHomePage({Key? key}) : super(key: key);

        final List<ShopItem> items = [
            ShopItem("Lihat Skincare", Icons.checklist, const Color(0xFFFFC0CB)),
            ShopItem("Tambah Skincare", Icons.add_shopping_cart, const Color(0xFFF078C0)),
            ShopItem("Logout", Icons.logout, const Color(0xFFFFA6CA)),
        ];

        // This widget is the home page of your application. It is stateful, meaning
        // that it has a State object (defined below) that contains fields that affect
        // how it looks.

        // This class is the configuration for the state. It holds the values (in this
        // case the title) provided by the parent (in this case the App widget) and
        // used by the build method of the State. Fields in a Widget subclass are
        // always marked "final".
        @override
        Widget build(BuildContext context) {
            return Scaffold(
                appBar: AppBar(
                    title: const Text(
                    'Skincare List',
                    style: TextStyle(
                    color:Color(0xFFEBC2D5),
                    ),
                    ),
                    backgroundColor: const Color(0xFFA42153),
                ),
                body: SingleChildScrollView(
                    // Widget wrapper yang dapat discroll
                    child: Padding(
                        padding: const EdgeInsets.all(10.0), // Set padding dari halaman
                        child: Column(
                            // Widget untuk menampilkan children secara vertikal
                            children: <Widget>[
                                const Padding(
                                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                    // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                                    child: Text(
                                        'Welcome to Skincare List', // Text yang menandakan toko
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:Color(0xFFA42153),
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                        ),
                                    ),
                                ),
                                // Grid layout
                                GridView.count(
                                    // Container pada card kita.
                                    primary: true,
                                    padding: const EdgeInsets.all(20),
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    crossAxisCount: 3,
                                    shrinkWrap: true,
                                    children: items.map((ShopItem item) {
                                        // Iterasi untuk setiap item
                                        return ShopCard(item);
                                    }).toList(),
                                ),
                            ],
                        ),
                    ),
                ),
            );
        }
    }
```

### Memunculkan Snackbar dengan tulisan yang sesuai
1. Membuka file `menu.dart` dan menambahkan kode berikut di class `ShopCard`
```dart
    class ShopCard extends StatelessWidget {
        final ShopItem item;

        const ShopCard(this.item, {super.key}); // Constructor

        @override
        Widget build(BuildContext context) {
            return Material(
                color: item.color,
                child: InkWell(
                    // Area responsive terhadap sentuhan
                    onTap: () {
                    // Memunculkan SnackBar ketika diklik
                    ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(SnackBar(
                            content: Text(
                                "Kamu telah menekan tombol ${item.name}!",
                                style: const TextStyle(
                                    color: const Color(0xFFEBC2D5),
                                ),
                            ), 
                            backgroundColor:Color(0xFFA42153),
                        ));
                    },
                    ...
                ),
            );
        }
    }
```

## Bonus
1. Menambahkan properti `color` di `ShopItem` seperti kode berikut :
```dart
    class ShopItem {
        final String name;
        final IconData icon;
        final Color color; // bonus

        ShopItem(this.name, this.icon, this.color);
    }
```
2. Ketika membuat instance `ShopItem` dalam `MyHomePage`, berikan warna yang berbeda ke setiap item seperti kode berikut :
```dart
    final List<ShopItem> items = [
        ShopItem("Lihat Skincare", Icons.checklist, const Color(0xFFFFC0CB)),
        ShopItem("Tambah Skincare", Icons.add_shopping_cart, const Color(0xFFF078C0)),
        ShopItem("Logout", Icons.logout, const Color(0xFFFFA6CA)),
    ];
```
3. Menggunakan properti `color` ini dalam `ShopCard` untuk mengatur warna latar belakang `Material` atau `Container`
```dart
    return Material(
        color: item.color, // Menggunakan warna dari properti item
        // ...
    );
```