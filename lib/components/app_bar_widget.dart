import 'package:flutter/material.dart';
import 'package:imc/theme/app_colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
    required this.leftIcon,
  }) : super(key: key);

  final Widget leftIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBarColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
            top: 10,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              leftIcon,
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/images/logo.png'),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'CALCULADORA DE IMC',
                        style: TextStyle(
                          fontFamily: 'Kanit',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.menu,
                color: AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(135);
}
