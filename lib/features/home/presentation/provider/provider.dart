import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_project/features/home/data/api/api_services.dart';

final apiServices = Provider((ref) {
  return ApiServices();
});

//All Cetagori item
final cetagoriesProvider = FutureProvider((ref) async {
  final apiService = ref.read(apiServices);
  return await apiService.fetchCetagories();
});

//All Featured item
final featuredProvider = FutureProvider((ref) async {
  final apiService = ref.read(apiServices);
  return await apiService.fetchFeatured();
});

//Provider list
final providerList = FutureProvider((ref) async {
  final apiService = ref.read(apiServices);
  return await apiService.fatchProvider();
});

//Slider List
final sliderProvider = FutureProvider((ref) async {
  final apiService = ref.read(apiServices);
  return await apiService.fatchSlider();
});

final sliderIndexProvider = StateProvider<int>((ref) => 0);

//Botton Navigation provider
final bottomNavIndexProvider = StateProvider<int>((ref) => 0);
