import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rawatjalan.id', style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'), ),
          backgroundColor: const Color.fromRGBO(35, 136, 120, 1),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
          ),
        body: 
        ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 20.0,),
            Container(
  height: 200,
  color: Color.fromRGBO(35, 136, 120, 1),
  child: Padding(
    padding: const EdgeInsets.all(30.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ListView untuk menggulir artikel secara horizontal
        SizedBox(
          height: 120, // Atur tinggi sesuai kebutuhan
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3, // Jumlah artikel
            itemBuilder: (BuildContext context, int index) {
              // Untuk setiap artikel, return widget Stack seperti yang Anda lakukan sebelumnya
              return SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    // Gambar artikel
                    Container(
                      child: Image(
                        image: AssetImage('images/rs.png'), // Ganti dengan path gambar Anda
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                    ),
                    // Judul artikel
                    Container(
                      height: 30,
                      color: Colors.white,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Ini adalah contoh dari Artikel', style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10),
        // Indikator slide dengan tombol lingkaran
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white, // Warna tombol lingkaran
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey, // Warna tombol lingkaran
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey, // Warna tombol lingkaran
              ),
            ),
          ],
        ),
      ],
    ),
  ),
),

            

            // box untuk fitur 6 tombol
            SizedBox(height: 40.0,),
            Container(
            height: 400, // Tinggi Container
            color: Colors.white,
            child: Column(
              children: [
                Expanded( // Baris 1
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40), // Padding di kanan dan kiri Row
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded( // Kolom 1
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(35, 136, 120, 1),
                              padding: EdgeInsets.all(20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10), 
                                Icon(Icons.calendar_month, color: Colors.white),
                                SizedBox(height: 10), // Jarak antara ikon dan teks
                                Text(
                                  'Cek Jadwal\nDokter',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20), // Jarak antara tombol 1 dan tombol 2
                        Expanded( // Kolom 2
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(35, 136, 120, 1),
                              padding: EdgeInsets.all(20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10), // Jarak antara ikon dan teks
                                Icon(Icons.line_weight_sharp, color: Colors.white),
                                SizedBox(height: 10), // Jarak antara ikon dan teks
                                Text(
                                  'List\nDokter',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20), // Jarak antara baris 1 dan baris 2
                Expanded( // Baris 2
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40), // Padding di kanan dan kiri Row
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded( // Kolom 1
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(35, 136, 120, 1),
                              padding: EdgeInsets.all(20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10), // Jarak antara ikon dan teks
                                Icon(Icons.paste, color: Colors.white),
                                SizedBox(height: 10), // Jarak antara ikon dan teks
                                Text(
                                  'Daftar\nSekarang',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20), // Jarak antara tombol 1 dan tombol 2
                        Expanded( // Kolom 2
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(35, 136, 120, 1),
                              padding: EdgeInsets.all(20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10), // Jarak antara ikon dan teks
                                Icon(Icons.access_time, color: Colors.white),
                                SizedBox(height: 10), // Jarak antara ikon dan teks
                                Text(
                                  'Rekam\nMedis',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20), // Jarak antara baris 2 dan baris 3
                Expanded( // Baris 3
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40), // Padding di kanan dan kiri Row
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded( // Kolom 1
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(35, 136, 120, 1),
                              padding: EdgeInsets.all(20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10), // Jarak antara ikon dan teks
                                Icon(Icons.queue, color: Colors.white),
                                SizedBox(height: 10), // Jarak antara ikon dan teks
                                Text(
                                  'Status\nAntrean',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20), // Jarak antara tombol 1 dan tombol 2
                        Expanded( // Kolom 2
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(35, 136, 120, 1),
                              padding: EdgeInsets.all(20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10), // Jarak antara ikon dan teks
                                Icon(Icons.newspaper, color: Colors.white),
                                SizedBox(height: 10), // Jarak antara ikon dan teks
                                Text(
                                  'Artikel &\nBerita',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 40), // Jarak antara fitur 6 tombol dan footer

            // box untuk footer
            Container(
              height: 112,
              color: Color.fromRGBO(35, 136, 120, 1),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                // child: Text('Jalan Rumah Sehat No 01\nrawatjalan@gmail.com\n021-1234567890', style: TextStyle(color: Colors.white),),
                child: Column(
                  children: [
                    Row(children: [
                      Icon(Icons.location_on, color: Colors.white),
                      SizedBox(width: 8),
                      Text("Jalan Rumah Sehat No 01", style: TextStyle(color: Colors.white),),
                    ],
                    ),
                    SizedBox(height: 5,),
                    Row(children: [
                      Icon(Icons.email, color: Colors.white),
                      SizedBox(width: 8),
                      Text("email", style: TextStyle(color: Colors.white),),
                    ],
                    ),
                    SizedBox(height: 5,),
                    Row(children: [
                      Icon(Icons.call, color: Colors.white),
                      SizedBox(width: 8),
                      Text("nomor", style: TextStyle(color: Colors.white),),
                    ],
                    ),
                  ],
                )
              )
            ),

          ],
          )
      ),
    );
  
  }
}
