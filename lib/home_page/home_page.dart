import 'package:flutter/material.dart';
import 'package:mr_coffee/home_page/components/item.dart';
import 'package:mr_coffee/home_page/components/search_bar.dart';
import 'package:mr_coffee/widgets/constans.dart';
import 'package:mr_coffee/widgets/custom_network_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KMainColor.withOpacity(
        0.6,
      ),
      appBar: AppBar(
        backgroundColor: KTextColor.withOpacity(
          0.8,
        ),
        title: const Text(
          'مستر كوفي',
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.bold,
            color: KMainColor,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            width: 130,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: KMainColor,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'حدد نوع الطلب',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: KMainColor,
                    fontSize: 12,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                RotatedBox(
                  quarterTurns: 2,
                  child: Icon(
                    Icons.arrow_back,
                    color: KMainColor,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            // Search_bar
            const SliverToBoxAdapter(
              child: HomePageSearchBar(),
            ),
            // Last_offer_banner
            SliverToBoxAdapter(
              child: Stack(
                clipBehavior: Clip.antiAlias,
                children: [
                  Container(
                    margin: const EdgeInsets.all(
                      8,
                    ),
                    height: 134,
                    width: double.infinity,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    foregroundDecoration: BoxDecoration(
                      color: const Color(0x50ffffff),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: const CustomNetworkImage(
                      image:
                          'https://images.unsplash.com/photo-1506619216599-9d16d0903dfd?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                  ),
                  const Positioned(
                    bottom: 80,
                    right: 32,
                    child: Text(
                      'قهوتك المفضلة في انتظارك',
                      style: TextStyle(
                        color: Color.fromARGB(255, 37, 37, 37),
                        fontSize: 14,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 60,
                    right: 32,
                    child: Text(
                      'اطلب قهوة أو لاتيه واحصل على كوكيز مجانًا',
                      style: TextStyle(
                        color: Color.fromARGB(255, 71, 71, 71),
                        fontSize: 12,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Items
            SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return const Item();
              },
              itemCount: 9,
            ),
          ],
        ),
      ),
    );
  }
}
