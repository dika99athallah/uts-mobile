import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'about_page.dart';
import 'menu_popup.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inaklug"),
        backgroundColor: AppTheme.primaryColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => const MenuPopup(),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/inaklug_banner.jpg'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Selamat datang di Inaklug — Layanan Konsultan Pendidikan Internasional. "
                "Kami membantu mewujudkan impian belajar ke luar negeri.",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AboutPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryColor,
              ),
              child: const Text("Lihat Visi & Misi"),
            ),
          ],
        ),
      ),
    );
  }
}
