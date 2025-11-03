import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tentang Inaklug"),
        backgroundColor: AppTheme.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              "Visi Kami",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Menjadi konsultan pendidikan luar negeri terbaik yang membantu generasi muda Indonesia "
              "mengejar pendidikan global dengan kualitas unggul.",
            ),
            SizedBox(height: 20),
            Text(
              "Misi Kami",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "1. Memberikan layanan konsultasi yang profesional dan transparan.\n"
              "2. Menyediakan informasi akurat mengenai universitas luar negeri.\n"
              "3. Meningkatkan akses pendidikan global bagi pelajar Indonesia.",
            ),
          ],
        ),
      ),
    );
  }
}
