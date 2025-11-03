import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class MenuPopup extends StatelessWidget {
  const MenuPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppTheme.secondaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: const Text("Menu Pengguna"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profil"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("Tentang Kami"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Keluar"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
