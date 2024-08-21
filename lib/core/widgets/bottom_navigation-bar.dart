import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sty_lish_app/core/data/navigation_data.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';
import 'package:sty_lish_app/src/features/favorite/presentation/favorite_page.dart';
import 'package:sty_lish_app/src/features/home/presentation/home_page.dart';
import 'package:sty_lish_app/src/features/profile/presentation/profile.dart';

import '../controller/bottom_Navigation_bloc/bottom_Navigation_bloc.dart';

class StyLishBottomNavigationBar extends StatelessWidget {
  const StyLishBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HomePage(),
      const FavoritePage(),
      const Scaffold(),
      const Scaffold(),
      const Profile(),
    ];
    int selectedIndix = 0; //  الصفحة الافتراضية

    return BlocProvider(
      create: (context) => BottomNavigationBloc(),
      child: BlocConsumer<BottomNavigationBloc, BottomNavigationState>(
        listener: (context, state) {
          if (state is NavigateToNewBarState) {
            selectedIndix = state.newIndex;
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: pages[selectedIndix],
            bottomNavigationBar: NavigationBar(
              elevation: 0,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              backgroundColor: AppColors.white,
              indicatorColor: Colors.transparent,
              selectedIndex: selectedIndix,
              onDestinationSelected: (value) {
                context
                    .read<BottomNavigationBloc>()
                    .add(NavigateToNewBarEvent(newIndex: value));
              },
              destinations: [
                ...List.generate(
                  navigationData.length,
                  (index) {
                    if (index == 2) {
                      return NavigationDestination(
                        icon: Transform.translate(
                          offset: const Offset(0, 10),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Icon(
                                navigationData[index].icon,
                                size: 30,
                                color: AppColors.iconColor,
                              ),
                            ),
                          ),
                        ),
                        selectedIcon: Transform.translate(
                          offset: const Offset(0, 10),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Icon(
                                navigationData[index].icon,
                                size: 30,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        ),
                        label: navigationData[index].label,
                      );
                    } else {
                      return NavigationDestination(
                        icon: Icon(
                          navigationData[index].icon,
                          color: AppColors.iconColor,
                        ),
                        selectedIcon: Icon(
                          navigationData[index].icon,
                          color: AppColors.primary,
                        ),
                        label: navigationData[index].label,
                      );
                    }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
