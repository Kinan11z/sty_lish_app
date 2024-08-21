import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sty_lish_app/core/utils/app_assets.dart';
import 'package:sty_lish_app/core/utils/style_text.dart';
import 'package:sty_lish_app/src/features/profile/presentation/profile.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key, required this.drawerkey});
  final GlobalKey<ScaffoldState> drawerkey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.black),
        onPressed: () {
          drawerkey.currentState!.openDrawer();
        },
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppAssets.logo),
          const SizedBox(width: 8),
          Text('Stylish', style: AppStyles.styleBold18(context)),
        ],
      ),
      actions: [
        InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Profile(),
            ),
          ),
          child: const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(AppAssets.profile1),
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
