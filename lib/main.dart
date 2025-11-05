import 'package:flutter/material.dart';

void main() {
  runApp(const InaklugApp());
}

class InaklugApp extends StatelessWidget {
  const InaklugApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inaklug',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Times new Roman',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4B2B86)),
      ),
      home: const InaklugHomePage(),
    );
  }
}

class InaklugHomePage extends StatelessWidget {
  const InaklugHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF3E7BFA), Color(0xFF6C2BAE)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight
            ),
          ),
        ),
        title: Row(
          children: [
            Image.asset(
              'images/inaklug.png', // Ganti dengan logo kamu
              height: 32,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 8), 
            const Text('Inaklug',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           
            Image.asset(
              'images/picgedung.png',
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),

            // === Tentang Kami
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: const [
                  Text(
                    "Tentang Kami",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "INAKLUG adalah Konsultan Pendidikan Internasional di Indonesia yang sudah memberangkatkan lebih dari 3000 mahasiswa Indonesia yang ingin meniti karir ke di negara maju di dunia.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                ],
              ),
            ),

            // === Garis Pemisah
            Divider(color: Colors.grey.shade300, thickness: 6),

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Layanan Kami",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, 
                    ),
                  ),
                  SizedBox(height: 16),
                  ServiceCard(
                    title: "Studi S1 Bachelor",
                    imageAsset: "images/bachelor.png",
                  ),
                  SizedBox(height: 12),
                  ServiceCard(
                    title: "Studi S2 Master",
                    imageAsset: "images/master.png",
                  ),
                  SizedBox(height: 12),
                  ServiceCard(
                    title: "Perawat / Caregiver",
                    imageAsset: "images/nurse2.jpg",
                  ),
                  SizedBox(height: 12),
                  ServiceCard(
                    title: "Kursus Bahasa Asing",
                    imageAsset: "images/kursus.png",
                  ),
                ],
              ),
            ),


            // === Container Iklan / Banner
            Center(        
              child: Container(
                width: 250,
                margin: const EdgeInsets.symmetric(vertical:10),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF3E7BFA), Color(0xFF6C2BAE)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "GRATIS\nKONSELING\nSTUDI DI LUAR\nNEGERI",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        height: 1.3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Konsultasi seputar\nKuliah/bekerja di luar negeri",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 10),
                    ),        
                    icon: const Icon(Icons.keyboard_arrow_down),
                    label: const Text(
                      "Mulai Konsultasi",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ],
                ),
              ),
            ),
            // === Artikel Terbaru
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Artikel Terbaru",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const ArticleCard(
                    title: "Belajar Bahasa Jerman melalui Goethe Institute",
                    imageAsset: "images/artikel1.jpg",
                  ),
                  const SizedBox(height: 12),
                  const ArticleCard(
                    title: "Jerman targetkan pariwisata pada tahun 2022 meningkat pada kuartal 1",
                    imageAsset: "images/artikel2.jpg",
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 12),
                      ),
                      child: const Text("ARTIKEL LAINNYA",
                      style: TextStyle(color: Colors.black),),
                    ),
                  ),
                ],
              ),
            ),

            // === Hubungi Kami
            Container(
              color: Colors.grey.shade100,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text(
                    "Hubungi Kami",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Kantor Pusat \nMULA BY GALERIA JAKARTA,CILANDAK TOWN SQUARE, LT.BASEMENT. \n\nPhone: 085286754052",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  ),                
                ],
              ),
            ),

            // === Footer
            Container(
              height: 80,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                   Color(0xFF3E7BFA), Color(0xFF6C2BAE),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Text(
                "Copyright 2022 - Inaklug Indonesia. Hak Cipta Dilindungi Undang-Undang",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String imageAsset;

  const ServiceCard({
    super.key,
    required this.title,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image.asset(
            imageAsset,           
            width: double.infinity,
            fit: BoxFit.fitWidth, 
          ),

          
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(220, 75, 43, 134), 
                    Color.fromARGB(0, 75, 43, 134),   
                  ],
                ),
              ),
            ),
          ),

          
          Positioned(
            left: 16,
            bottom: 16,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black45,
                    offset: Offset(1, 1),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ArticleCard extends StatelessWidget {
  final String title;
  final String imageAsset;

  const ArticleCard({
    super.key,
    required this.title,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageAsset,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 150,
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
