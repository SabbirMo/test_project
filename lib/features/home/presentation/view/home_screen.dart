import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_project/features/home/presentation/widget/carousel_slider.dart';
import 'package:test_project/features/home/presentation/widget/cetagories_item.dart';
import 'package:test_project/features/home/presentation/widget/feature_item_widget.dart';
import 'package:test_project/features/home/presentation/widget/list_item_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * .23,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff3592FC),
                    Color(0xff175CDE),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/home_icon.png',
                        width: 50,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Home",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '264 Boncycle, FL 32328',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Image.asset('assets/icons/down.png'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Badge(
                              smallSize: 20,
                              offset: Offset(3, 0),
                              label: Text("5"),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'assets/icons/bell.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/icons/shopping_cart.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Image.asset('assets/icons/search.png'),
                          contentPadding: EdgeInsets.all(10.0),
                          suffixIcon: Image.asset('assets/icons/filter.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CetagoriesItem(),
            FeatureItemWidget(),
            CarouselSliderItemWidget(),
            SizedBox(height: 20),
            ListItemWidget(),
            SizedBox(height: 20),
            Column(
              children: [
                Image.asset(
                  'assets/image/finding.png',
                ),
                SizedBox(height: 10),
                Text(
                  "Post a Job",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Didn’t find what you’re looking for?",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: Color(0xff175CDE),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Center(
                  child: Text(
                    "Post a Job",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
