# Tugas 8
## Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement()
Jawaban : 
| Navigator.push()  | Navigator.pushReplacement() |
| ------------- | ------------- |
| menambahkan halaman baru ke tumpukan halaman | menambahkan halaman baru ke tumpukan halaman, tetapi hal itu juga menggantikan halaman saat ini dengan yang baru  |
| Jika Anda menggunakan Navigator.push(), ketika pengguna menekan tombol "Back" pada perangkat atau menggunakan Navigator.pop(), mereka akan kembali ke halaman sebelumnya dalam tumpukan halaman | Ketika Anda menggunakan Navigator.pushReplacement(), halaman saat ini dihapus dari tumpukan dan digantikan oleh halaman baru |
Contoh :
1. Navigator.pushReplacement()
    ```dart
    onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            builder: (context) => MyHomePage(),
        ));
    },
    ```
2. Navigator.push()
    ```dart
    if (item.name == "Tambah Skincare") {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ShopFormPage()),
        );
    }
    ```

## Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
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
| ElevatedButton | widget yang berguna sebagai tombol yang menonjol dan memberikan umpan balik visual kepada pengguna ketika ditekan |
| Form | widget yang menyimpan dan mengelola keadaan formulir yang membantu  dalam validasi input, pemrosesan formulir, dan menyimpan keadaan formulir |
| FormField | widget yang memegang nilai dan validasi dalam formulir untuk memudahkan validasi input dan memanipulasi nilai formulir |
| ListTile | widget yang dirancang untuk menampilkan informasi dalam daftar dan digunakan dalam daftar, drawer, atau sebagai item dalam struktur tata letak lainnya |
| Card | widget yang menyediakan bingkai visual untuk mengelompokkan konten terkait dan berguna untuk menampilkan informasi dalam format yang bersih dan terorganisir |
| AlertDialog | widget yang digunakan sebagai  jendela dialog sederhana yang menampilkan pesan atau opsi kepada pengguna |
| NavigationDrawer | widget yang digunakan sebagai panel yang muncul dari sisi layar dan menyediakan navigasi ke berbagai bagian aplikasi |
| TextField | widget yang digunakan untuk mengumpulkan input teks dari pengguna, seperti nama pengguna atau kata sandi |

## Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Jawaban :
| Nama elemen input  | Alasan |
| ------------- | ------------- |
| TextFormField | `TextFormField` menyediakan properti seperti `validator` yang dapat dengan mudah menambahkan logika validasi ke elemen input. Ini membantu memastikan bahwa data yang dimasukkan pengguna sesuai dengan persyaratan aplikasi. |

## Bagaimana penerapan clean architecture pada aplikasi Flutter?
Jawaban : 
1. **Domain Layer**:
- Berisi aturan bisnis dan logika aplikasi yang bersifat independen dari platform atau kerangka kerja tertentu.
- Menggunakan Dart package untuk mengelola entity, use case, dan repository interface.
2. **Data Layer**:
- Menyediakan implementasi dari repository interface yang didefinisikan di lapisan domain.
- Menggunakan repository untuk mendapatkan dan menyimpan data, baik itu dari penyimpanan lokal (database) atau sumber data eksternal (API).
- Menggunakan model data yang spesifik untuk lapisan data.
3. **Presentation Layer**:
- Menangani tampilan dan interaksi pengguna.
- Terdiri dari widget-widget UI, manajer keadaan (state management), dan presenter/view model.
- Memanggil use case dari lapisan domain untuk mendapatkan data dan mengelola logika bisnis.
4. **Dependency Injection**:
- Menggunakan Dependency Injection (DI) untuk memberikan dependensi ke kelas-kelas yang membutuhkannya.
- Melibatkan pustaka atau framework seperti get_it atau provider untuk mengatur dependensi.
5. **External Libraries**:
- Membatasi ketergantungan pada library atau paket eksternal di lapisan domain agar bisnis logic tetap bersih dan independen.
6. **Testing**:
- Melibatkan pengujian unit untuk logika bisnis di lapisan domain.
- Menggunakan mocking untuk mengisolasi dan menguji komponen-komponen tertentu.
7. **Use Case**:
- Setiap fitur aplikasi memiliki use case yang mewakili satu tugas atau alur kerja.
- Use case dipanggil dari lapisan presentasi dan mengakses repository di lapisan data.
8. **Presenters/View Models**:
- Memisahkan logika UI dari logika aplikasi.
- Berkomunikasi dengan use case dan menyediakan data untuk ditampilkan oleh widget.
9. **Router**:
- Menggunakan router untuk mengelola navigasi antar halaman atau layar.
10. **UI Widgets**:
- Hanya menangani logika tampilan dan interaksi pengguna.
- Menggunakan presenter atau view model untuk mengambil dan menampilkan data.
11. **Error Handling**:
- Mengelola penanganan kesalahan di semua lapisan, baik itu di lapisan domain, data, atau presentasi.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
Jawaban :
### Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan yang sudah diberikan
1. membuat file baru dengan nama `skincarelist_form.dart` di direktori `lib/screens` dan menambahkan kode berikut di dalam file tersebut :
    ```dart
    import 'package:flutter/material.dart';
    import 'package:skincare_list/screens/menu.dart';
    import 'package:skincare_list/widgets/left_drawer.dart';
    import 'package:skincare_list/screens/lihat_skincare.dart';
    import 'package:skincare_list/models/skincare_model.dart';

    class ShopFormPage extends StatefulWidget {
    const ShopFormPage({super.key});

    @override
    State<ShopFormPage> createState() => _ShopFormPageState();
    }

    class _ShopFormPageState extends State<ShopFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _brand = "";
    String _name = "";
    int _amount = 0;
    int _price = 0;
    String _description = "";

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Center(
            child: Text(
                'Form Tambah Skincare',
                style: TextStyle(
                color: Color(0xFFEBC2D5),
                ),
            ),
            ),
            backgroundColor: const Color(0xFFA42153),
            foregroundColor: Colors.white,
        ),
        drawer: const LeftDrawer(),
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                    hintText: "Brand Skincare",
                    labelText: "Brand Skincare",
                    labelStyle: const TextStyle(
                        color: Color(0xFFA42153),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: Color(0xFFA42153))),
                    ),
                    onChanged: (String? value) {
                    setState(() {
                        _brand = value!;
                    });
                    },
                    validator: (String? value) {
                    if (value == null || value.isEmpty) {
                        return "Brand tidak boleh kosong!";
                    }
                    return null;
                    },
                ),
                ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                    hintText: "Nama Skincare",
                    labelText: "Nama Skincare",
                    labelStyle: const TextStyle(
                        color: Color(0xFFA42153),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                    ),
                    ),
                    onChanged: (String? value) {
                    setState(() {
                        _name = value!;
                    });
                    },
                    validator: (String? value) {
                    if (value == null || value.isEmpty) {
                        return "Nama tidak boleh kosong!";
                    }
                    return null;
                    },
                ),
                ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                    hintText: "Jumlah Skincare",
                    labelText: "Jumlah Skincare",
                    labelStyle: const TextStyle(
                        color: Color(0xFFA42153),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: Color(0xFFA42153))),
                    ),
                    onChanged: (String? value) {
                    setState(() {
                        _amount = int.parse(value!);
                    });
                    },
                    validator: (String? value) {
                    if (value == null || value.isEmpty) {
                        return "Amount tidak boleh kosong!";
                    }
                    if (int.tryParse(value) == null) {
                        return "Amount harus berupa angka!";
                    }
                    return null;
                    },
                ),
                ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                    hintText: "Harga",
                    labelText: "Harga",
                    labelStyle: const TextStyle(
                        color: Color(0xFFA42153),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: Color(0xFFA42153))),
                    ),
                    onChanged: (String? value) {
                    setState(() {
                        _price = int.parse(value!);
                    });
                    },
                    validator: (String? value) {
                    if (value == null || value.isEmpty) {
                        return "Harga tidak boleh kosong!";
                    }
                    if (int.tryParse(value) == null) {
                        return "Harga harus berupa angka!";
                    }
                    return null;
                    },
                ),
                ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                    hintText: "Deskripsi",
                    labelText: "Deskripsi",
                    labelStyle: const TextStyle(
                        color: Color(0xFFA42153),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: Color(0xFFA42153))),
                    ),
                    onChanged: (String? value) {
                    setState(() {
                        _description = value!;
                    });
                    },
                    validator: (String? value) {
                    if (value == null || value.isEmpty) {
                        return "Deskripsi tidak boleh kosong!";
                    }
                    return null;
                    },
                ),
                ),
                Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFFA42153)),
                    ),
                    onPressed: () {
                        if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        var skincare = Skincare(brand : _brand, name: _name, amount: _amount, price: _price, description: _description);
                        dataSkincare.add(skincare);
                        _formKey.currentState!.reset();
                        }
                    },
                    child: const Text(
                        "Simpan Skincare",
                        style: TextStyle(color: Color(0xFFEBC2D5)),
                    ),
                    ),
                ),
                ),
            ]),
            ),
        ),
        );
    }
    }

    ```

### Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.
1. membuat folder baru dengan nama `widgets` di direktori `lib` dan membuat file baru dengan nama `list_card.dart`dan menambahkan kode berikut :
    ```dart
    import 'package:flutter/material.dart';
    import 'package:skincare_list/screens/lihat_skincare.dart';
    import 'package:skincare_list/screens/skincarelist_form.dart';

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
                        color: Color(0xFFEBC2D5),
                    ),
                    ), 
                    backgroundColor:const Color(0xFFA42153),
                ));

            // Navigate ke route yang sesuai (tergantung jenis tombol)
            if (item.name == "Tambah Skincare") {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ShopFormPage()),
                );
            }

            if (item.name == "Lihat Skincare") {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DataSkincarePage()),
                );
            }
            },
            child: Container(
            // Container untuk menyimpan Icon dan Text
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

### Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.
1. buka file `skincarelist_form.dart` dan menambahkan kode berikut di antara kode `dataSkincare.add(skincare);` dan `_formKey.currentState!.reset();` :
```dart
    ..
    onPressed: () {
    ..
    showDialog(
        context: context,
        builder: (context) {
            return AlertDialog(
                backgroundColor: const Color(0xFFA42153),
                title: const Center(
                child: Text(
                    'Skincare berhasil tersimpan',
                    style: TextStyle(color: Color(0xFFEBC2D5))
                )),
                content: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text('Brand: $_brand',
                            style: const TextStyle(
                                color: Color(0xFFEBC2D5))),
                        Text('Nama: $_name',
                            style: const TextStyle(
                                color: Color(0xFFEBC2D5))),
                        Text('Jumlah: $_amount',
                            style: const TextStyle(
                                color: Color(0xFFEBC2D5))),
                        Text('Harga: $_price',
                            style: const TextStyle(
                                color: Color(0xFFEBC2D5))),
                        Text('Deskripsi: $_description',
                            style: const TextStyle(
                                color: Color(0xFFEBC2D5))),
                    ],
                ),
            ),
            actions: [
                TextButton(
                    child: const Text(
                        'OK',
                        style: TextStyle(color: Color(0xFFEBC2D5)),
                    ),
                    onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                            ));
                    },
                ),
            ],
            );
        },
    );
    _formKey.currentState!.reset();
    }
    ...
```

### Membuat sebuah drawer pada aplikasi dengan ketentuan yang sudah diberikan
Jawaban :
1. membuat file baru dengan nama `left_drawer.dart` di direktori `lib/widgets` dan menambahkan kode berikut di dalamnya :
```dart
    import 'package:flutter/material.dart';
    import 'package:skincare_list/screens/menu.dart';
    import 'package:skincare_list/screens/skincarelist_form.dart';

    class LeftDrawer extends StatelessWidget {
    const LeftDrawer({super.key});

    @override
    Widget build(BuildContext context) {
        return Drawer(
        backgroundColor: const Color(0xFFA42153),
        child: ListView(
            children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                color: Color(0xFFEBC2D5),
                ),
                child: Column(
                children: [
                    Text(
                    'Skincare List',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFA42153),
                    ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text("Catat seluruh skincare favoritemu di sini!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFFA42153),
                        fontWeight: FontWeight.normal,
                        ),
                    ),
                ],
                ),
            ),
            ListTile(
                leading: const Icon(Icons.home_outlined,
                color:Color(0xFFEBC2D5),
                ),
                title: const Text('Halaman Utama',
                style: TextStyle(
                    color:Color(0xFFEBC2D5),
                ),
                ),
                // Bagian redirection ke MyHomePage
                onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                    ));
                },
            ),
            ListTile(
                leading: const Icon(Icons.add_shopping_cart,
                color:Color(0xFFEBC2D5),
                ),
                title: const Text(
                'Tambah Skincare',
                style: TextStyle(
                    color:Color(0xFFEBC2D5),
                ),
                ),
                // Bagian redirection ke ShopFormPage
                onTap: () {
                /*
                setelah halaman ShopFormPage sudah dibuat.
                */
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const ShopFormPage(),
                    )
                );
                },
            ),
            ],
        ),
        );
    }
    }
```

## Bonus
1. membuat file model baru dengan nama `skincare_model.dart` di direktori `lib/models` dan menambahkan kode berikut di dalamnya :
```dart
    import 'package:flutter/material.dart';

    class Skincare {
    String? brand;
    String? name;
    int? amount;
    int? price;
    String? description;

    Skincare({
        required this.brand,
        required this.name,
        required this.amount,
        required this.price,
        required this.description,
    });

    Widget show() {
        return Card(
        color: const Color(0xFFEBC2D5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            
            side: const BorderSide(
            color: Color(0xFFA42153),
            ),
        ),
        elevation: 2,
        shadowColor: Colors.black,
        child: ListTile(
            title: Text(
            "$brand - $name",
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xFFA42153)
            ),
            ),
            subtitle: Text(
            "$description\nJumlah: $amount \nHarga: $price"
            )
        ),
        );
    }
    }
```

2. membuat file baru dengan nama `lihat_skincare.dart` di direktori `lib/screens` untuk mengarahkan pengguna ke halaman tersebut jika menekan tombol `Lihat Skincare` pada halaman utama dengan menambahkan potongan kode berikut :
```dart
    import 'package:flutter/material.dart';
    import 'package:skincare_list/models/skincare_model.dart';
    import 'package:skincare_list/widgets/left_drawer.dart';

    List dataSkincare = <Skincare>[];

    class DataSkincarePage extends StatefulWidget {
    const DataSkincarePage({super.key});

    @override
    State<DataSkincarePage> createState() => _DataSkincarePageState();
    }

    class _DataSkincarePageState extends State<DataSkincarePage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Center(
            child: Text(
                'Lihat Skincare',
                style: TextStyle(
                color: Color(0xFFEBC2D5),
                ),
            ),
            ),
            backgroundColor: const Color(0xFFA42153),
            foregroundColor: Colors.white,
        ),
        drawer: const LeftDrawer(),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                for (Skincare i in dataSkincare) i.show()
                ],
            )),
        );
    }
    }
```