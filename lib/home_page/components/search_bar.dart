import 'package:flutter/material.dart';
import 'package:mr_coffee/widgets/constans.dart';

class HomePageSearchBar extends StatelessWidget {
  const HomePageSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
        left: 8,
        bottom: 8,
      ),
      child: TextField(
        decoration: InputDecoration(
          fillColor: KTextColor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: KTextColor,
            ),
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: KTextColor,
            ),
          ),

          // hintText: "SearchBarTitle".tr(),
          hintStyle: const TextStyle(
            color: KTextColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),

          // نص تلميح داخل الحقل
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: KTextColor,
            size: 30,
          ),
        ),
      ),
    );
  }
}
