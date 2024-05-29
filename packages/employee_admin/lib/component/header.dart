import 'package:flutter/material.dart';
import 'package:slaega_employee_admin/config/responsive.dart';
import 'package:slaega_employee_admin/style/colors.dart';
import 'package:slaega_employee_admin/style/style.dart';

class Header extends StatelessWidget {
  const Header({super.key, 
    
  }) ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
      const SizedBox(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(
                  text: 'Dashboard',
                  size: 30,
                  fontWeight: FontWeight.w800),
              PrimaryText(
                text: 'Payments updates',
                size: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.secondary,
              )
            ]),
      ),
      const Spacer(
        flex: 1,
      ),
      Expanded(
        flex: Responsive.isDesktop(context) ? 1 : 3,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.white,
            contentPadding:
                const EdgeInsets.only(left: 40.0, right: 5),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: AppColors.white),
            ),
             focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: AppColors.white),
            ),
            prefixIcon: const Icon(Icons.search, color: AppColors.black),
            hintText: 'Search',
            hintStyle: const TextStyle(color: AppColors.secondary, fontSize: 14)
          ),
        ),
      ),
    ]);
  }
}
