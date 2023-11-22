# Tugas 9
## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Jawaban :
Iya, kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Namun, hal ini akan membuat pengolahan data tidak mudah dan tidak efisien karena Anda harus memproses respons JSON tersebut secara manual setelah menerima respons dari web service 1. Oleh karena itu, hal tersebut tidaklah disarankan. Namun, jika Anda ingin mencobanya, Anda dapat menggunakan jsonDecode() untuk mengirim HTTP Response.

## Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Jawaban :
Anda dapat menggunakan `CookieRequest` untuk mengirim permintaan HTTP yang menyertakan cookie. `CookieRequest` adalah kelas yang memungkinkan Anda menambahkan cookie ke permintaan HTTP. Ketika Anda membuat instance `CookieRequest`, Anda dapat menambahkan cookie ke instance tersebut. Kemudian, Anda dapat membagikan instance `CookieRequest` ke semua komponen di aplikasi Flutter agar semua permintaan HTTP yang dikirimkan oleh aplikasi menyertakan cookie yang sama. Ini sangat berguna jika Anda ingin mengirim permintaan HTTP yang memerlukan otorisasi atau jika Anda ingin mengirim permintaan HTTP yang memerlukan cookie yang sama setiap kali permintaan dikirimkan.

## Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Jawaban :
Untuk mengambil data dari JSON dan menampilkannya di Flutter, Anda dapat mengikuti langkah-langkah berikut:

1. Buat instance `http` untuk mengirim permintaan HTTP ke server yang menyediakan data JSON.
2. Gunakan metode `get()` pada instance `http` untuk mengirim permintaan HTTP ke server.
3. Setelah menerima respons dari server, gunakan metode `jsonDecode()` untuk mengubah respons JSON menjadi objek Dart.
4. Tampilkan data dari objek Dart di aplikasi Flutter.

Berikut adalah contoh kode yang menunjukkan cara mengambil data dari JSON dan menampilkannya di Flutter:
```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> getData() async {
  var url = 'https://example.com/data.json';
  var response = await http.get(Uri.parse(url));
  var data = jsonDecode(response.body);
  print(data);
}
```
Kode di atas mengambil data dari `https://example.com/data.json`, mengubah respons JSON menjadi objek Dart, dan mencetak objek Dart ke konsol.

## Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Jawaban :
Untuk menjelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter, berikut adalah langkah-langkah yang dapat diikuti:

1. **Membuat API untuk Login dan Signup pada Django**: Langkah pertama yang perlu dilakukan adalah membuat API untuk Login dan Signup pada Django. Hal ini dapat dilakukan dengan menggunakan Django Rest Framework (DRF). DRF memungkinkan pembuatan Web API yang kuat dan fleksibel. DRF menyediakan banyak skema autentikasi yang dapat digunakan dan bahkan memungkinkan implementasi skema kustom. DRF juga menyediakan cara mudah untuk meng-serialize dan deserialize JSON sesuai dengan skema DB Anda.

2. **Membuat aplikasi Flutter**: Selanjutnya, buat aplikasi Flutter yang akan digunakan untuk autentikasi. Aplikasi ini dapat dibuat dengan menggunakan BloC (Business Logic Component) yang merupakan pola manajemen state yang bekerja pada sinks dan streams. BloC berdiri di antara data dan UI dan secara asinkron memetakan event ke state yang membangun kembali UI ketika diperlukan.

3. **Mengirimkan permintaan API dari Flutter ke Django**: Setelah aplikasi Flutter dibuat, selanjutnya adalah mengirimkan permintaan API dari Flutter ke Django. Permintaan ini dapat dilakukan dengan menggunakan package http pada Flutter.

4. **Autentikasi oleh Django**: Setelah permintaan API diterima oleh Django, Django akan melakukan autentikasi dengan menggunakan skema autentikasi yang telah ditentukan pada langkah pertama. Jika autentikasi berhasil, Django akan mengirimkan token autentikasi ke aplikasi Flutter.

5. **Menampilkan menu pada Flutter**: Setelah token autentikasi diterima oleh aplikasi Flutter, selanjutnya adalah menampilkan menu pada Flutter. Menu ini dapat ditampilkan dengan menggunakan widget yang sesuai pada Flutter.

## Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
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
| ElevatedButton | widget yang memiliki tampilan Material Design dan dapat disesuaikan dengan berbagai properti, termasuk bentuknya |
| SizedBox | widget yang digunakan untuk mengatur jarak antara widget | 

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
Jawaban :
### Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
Jawaban : melakukan `add-commit-push` ulang pada GitHub

### Membuat halaman login pada proyek tugas Flutter.
Jawaban :
1. Membuat file baru pada folder `screens` dengan nama `login.dart`.
2. menambahkan potongan kode berikut di file `login.dart`.
```dart
import 'package:skincare_list/screens/auth_service.dart';
import 'package:skincare_list/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login',
          style: TextStyle(
              color: Color(0xFFEBC2D5),
            ),
        ),
        backgroundColor: const Color(0xFFA42153),
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(
                    color: Color(0xFFA42153),
                  ),
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                    color: Color(0xFFA42153),
                  ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFFA42153)),
                  ),
              onPressed: () async {
                String username = _usernameController.text;
                String password = _passwordController.text;

                // Cek kredensial
                // Untuk menyambungkan Android emulator dengan Django pada localhost,
                // gunakan URL http://10.0.2.2/
                final response = await request.login(
                    "https://virgillia-yeala-tugas.pbp.cs.ui.ac.id/auth/login/",
                    {
                      'username': username,
                      'password': password,
                    });

                if (request.loggedIn) {
                  String message = response['message'];
                  String uname = response['username'];
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Text("$message Selamat datang, $uname.")));
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Login Gagal'),
                      content: Text(response['message']),
                      actions: [
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                }
              },
              child: const Text('Login',
                style: TextStyle(color: Color(0xFFEBC2D5)),
              ),
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    color: Color(0xFFA42153),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFFA42153)),
                  ),
                  onPressed: () {
                    // Arahkan ke halaman registrasi
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AuthPage()),
                    );
                  },
                  child: const Text(
                    'Register Now',
                    style: TextStyle(
                      color: Color(0xFFEBC2D5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


```

### Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
Jawaban : 
#### Aplikasi Django
1. Membuat `dango-app` baru dengan nama `authentication` pada django `skincare_list`
2. Menambahkan `authentication` ke `INSTALLED_APPS` pada main project `settings.py`
3. Jalankan perintah `pip install django-cors-headers` untuk menginstal library yang dibutuhkan.
4. Tambahkan `corsheaders` ke `INSTALLED_APPS` pada main project `settings.py` django `skincare_list`
5. Tambahkan `corsheaders.middleware.CorsMiddleware` pada main project `settings.py` django `skincare_list`
6. Tambahkan beberapa variabel berikut ini pada main project `settings.py` django `skincare_list`
```bash
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
```
7. Buatlah sebuah metode view untuk login pada `authentication/views.py`.
```python
from django.shortcuts import render
from django.contrib.auth import authenticate, login as auth_login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Status login sukses.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login sukses!"
                # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, akun dinonaktifkan."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
```
8. Buat file `urls.py` pada folder `authentication` dan tambahkan URL routing terhadap fungsi yang sudah dibuat dengan endpoint `login/`.
```python
from django.urls import path
from authentication.views import login

app_name = 'authentication'

urlpatterns = [
    path('login/', login, name='login'),
]
```
9. Tambahkan path`('auth/', include('authentication.urls'))`, pada file `skincare_list/urls.py`.

#### Aplikasi Flutter
Jawaban :
1. Instal package yang dibutuhkan
```bash
flutter pub add provider
flutter pub add pbp_django_auth
```
2. Memodifikasi root widget dengan mengubah kode yang ada di file `main.dart` menjadi potongan kode berikut :
```dart
class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Provider(
            create: (_) {
                CookieRequest request = CookieRequest();
                return request;
            },
            child: MaterialApp(
                title: 'Flutter App',
                theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
                    useMaterial3: true,
                ),
                home: MyHomePage()),
            ),
        );
    }
}
```
Hal ini akan membuat objek Provider baru yang akan membagikan instance CookieRequest dengan semua komponen yang ada di aplikasi.

### Membuat model kustom sesuai dengan proyek aplikasi Django.
Jawaban :
Memanfaatkan website QuickType untuk tahapan ini. Berikut adalah model kustom nya :
```dart
// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    String model;
    int pk;
    Fields fields;

    Product({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String brand;
    String name;
    int amount;
    String price;
    String description;

    Fields({
        required this.user,
        required this.brand,
        required this.name,
        required this.amount,
        required this.price,
        required this.description,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        brand: json["brand"],
        name: json["name"],
        amount: json["amount"],
        price: json["price"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "brand": brand,
        "name": name,
        "amount": amount,
        "price": price,
        "description": description,
    };
}

```

### Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
Jawaban :
1. Membuat folder baru dengan nama `model` dan menambahkan file baru juga dengan nama `skincare_model.dart`.
2. Menambahkan potongan kode berikut di dalam file `skincare_model.dart`:
```dart 
// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    String model;
    int pk;
    Fields fields;

    Product({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String brand;
    String name;
    int amount;
    String price;
    String description;

    Fields({
        required this.user,
        required this.brand,
        required this.name,
        required this.amount,
        required this.price,
        required this.description,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        brand: json["brand"],
        name: json["name"],
        amount: json["amount"],
        price: json["price"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "brand": brand,
        "name": name,
        "amount": amount,
        "price": price,
        "description": description,
    };
}

```

### Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
Jawaban :
1. Lakukan `flutter pub add http` pada terminal proyek Flutter untuk menambahkan package `http`.
2. Pada file `android/app/src/main/AndroidManifest.xml`, tambahkan kode berikut untuk memperbolehkan akses Internet pada aplikasi Flutter yang sedang dibuat.
```bash 
...
    <application>
    ...
    </application>
    <!-- Required to fetch data from the Internet. -->
    <uses-permission android:name="android.permission.INTERNET" />
...
```
3. Membuat file baru pada folder lib/screens dengan nama `list_skincare.dart` dan menambahkan potongan kode berikut di dalamnya.
```dart
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:skincare_list/models/skincare_model.dart';
import 'package:skincare_list/widgets/left_drawer.dart';

class ProductPage extends StatefulWidget {
    const ProductPage({Key? key}) : super(key: key);

    @override
    _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
Future<List<Product>> fetchProduct() async {
    var url = Uri.parse(
        'https://virgillia-yeala-tugas.pbp.cs.ui.ac.id/json/');
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<Product> list_product = [];
    for (var d in data) {
        if (d != null) {
            list_product.add(Product.fromJson(d));
        }
    }
    return list_product;
}

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Skincare',
            style: TextStyle(
                color: Color(0xFFEBC2D5),
              ),
          ),
          backgroundColor: const Color(0xFFA42153),
          foregroundColor: Colors.white,
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                } else {
                    if (!snapshot.hasData) {
                    return const Column(
                        children: [
                        Text(
                            "Tidak ada data skincare.",
                            style:
                                TextStyle(color: Color(0xFFA42153), fontSize: 20),
                        ),
                        SizedBox(height: 8),
                        ],
                    );
                } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Card(
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
                            "${snapshot.data![index].fields.brand} - ${snapshot.data![index].fields.name}",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA42153),
                            ),
                          ),
                          subtitle: Text(
                            "${snapshot.data![index].fields.description}\nJumlah: ${snapshot.data![index].fields.amount}\nHarga: ${snapshot.data![index].fields.price}",
                          ),
                        ),
                      ),
                    );
                  }
                }
            }));
    }
}
```

## Bonus 
### Mengimplementasikan fitur registrasi akun pada aplikasi Flutter.
Jawaban :
1. Membuat file baru di direktori `lib/screens` dengan nama `auth_service.dart` dan mengisi file tersebut dengan potongan kode berikut :
```dart
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:skincare_list/screens/login.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFA42153),
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(
                    color: Color(0xFFA42153),
                  ),
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                    color: Color(0xFFA42153),
                  ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordConfirmationController,
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
                labelStyle: TextStyle(
                    color: Color(0xFFA42153),
                  ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFFA42153)),
                  ),
              onPressed: () async {
                String username = _usernameController.text;
                String password = _passwordController.text;
                String passwordConfirmation =
                    _passwordConfirmationController.text;

                if (password != passwordConfirmation) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(const SnackBar(
                        content: Text(
                            "Register failed, password confimation incorrect.")));
                  return;
                }
                final response = await request.post(
                    // "https://virgillia-yeala-tugas.pbp.cs.ui.ac.id/auth/signup/",
                    "http://127.0.0.1:8000/auth/signup/",
                    {
                      'username': username,
                      'password': password,
                    });

                if (response['status']) {
                  String message = response['message'];
                  
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(content: Text("$message")));
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Register failed.'),
                      content: Text(response['message']),
                      actions: [
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                }
              },
              child: const Text('Register',
                style: TextStyle(color: Color(0xFFEBC2D5))
              ),
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFFA42153)),
                  ),
              onPressed: () {
                // Navigate to Login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text('Login',
                style: TextStyle(color: Color(0xFFEBC2D5))
              ),
            )
          ],
        ),
      ),
    );
  }
}

```
2. Di file `login.dart`, menambahkan potongan kode berikut untuk mengarahkan user untuk resgistrasi jika blm ada akun.
```dart
...
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    const Text(
      "Don't have an account? ",
      style: TextStyle(
        color: Color(0xFFA42153),
      ),
    ),
    ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
          MaterialStateProperty.all(const Color(0xFFA42153)),
      ),
      onPressed: () {
        // Arahkan ke halaman registrasi
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AuthPage()),
        );
      },
      child: const Text(
        'Register Now',
        style: TextStyle(
          color: Color(0xFFEBC2D5),
        ),
      ),
    ),
  ],
),
...
```