import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_project/features/home/presentation/provider/provider.dart';

class CarouselSliderItemWidget extends ConsumerWidget {
  const CarouselSliderItemWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncSlides = ref.watch(sliderProvider);
    final currentIndex = ref.watch(sliderIndexProvider);
    return asyncSlides.when(
      data: (data) {
        final sortData = [...data];
        sortData.sort((a, b) => a.id.compareTo(b.id));
        return Column(
          children: [
            CarouselSlider.builder(
              itemCount: sortData.length,
              options: CarouselOptions(
                height: 180,
                viewportFraction: 0.9,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIndex) {
                final slider = sortData[index];
                return Card(
                  child: Image.network(slider.image, fit: BoxFit.cover),
                );
              },
            ),
            const SizedBox(height: 12),
            AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: sortData.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.blue,
                dotColor: Colors.grey.shade300,
                dotHeight: 8,
                dotWidth: 8,
                spacing: 6,
                expansionFactor: 3,
              ),
            ),
          ],
        );
      },
      error: (error, stackTrace) => Center(
        child: Text("Error $error"),
      ),
      loading: () => Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
