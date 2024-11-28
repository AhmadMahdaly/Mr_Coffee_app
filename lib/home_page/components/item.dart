import 'package:flutter/material.dart';
import 'package:mr_coffee/widgets/constans.dart';
import 'package:mr_coffee/widgets/custom_network_image.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        8,
      ),
      child: Container(
        width: 160,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            8,
          ),
          child: Column(
            children: [
              Container(
                width: 140,
                height: 110,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                clipBehavior: Clip.antiAlias,
                child: const Stack(
                  fit: StackFit.expand,
                  children: [
                    CustomNetworkImage(
                      image:
                          'https://images.unsplash.com/photo-1485808191679-5f86510681a2?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(
                  8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ايس أمريكانو',
                          style: TextStyle(
                            color: Color(0xFF6E6E6E),
                            fontSize: 14,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '15 ر.س',
                          style: TextStyle(
                            color: Color(0xFF9B9B9B),
                            fontSize: 12,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.add_circle,
                      color: KTextColor,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
