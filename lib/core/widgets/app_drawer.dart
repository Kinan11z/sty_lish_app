import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Flutter Developer"),
            accountEmail: Text("kenanalmahainy@gmail.com"),
            currentAccountPicture: CircleAvatar(),
            decoration: BoxDecoration(color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
