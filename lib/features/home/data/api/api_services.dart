import 'dart:convert';

import 'package:test_project/features/home/data/model/user_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<CetagoriesModel>> fetchCetagories() async {
    final response = await http.get(
      Uri.parse('https://prohandy.xgenious.com/api/v1/categories'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List cetagories = data['categories'] as List;
      return cetagories.map((e) => CetagoriesModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }

  //Fetaured Item
  Future<List<FeaturedService>> fetchFeatured() async {
    final response = await http.get(
        Uri.parse('https://prohandy.xgenious.com/api/v1/service/featured'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List feature = data['all_services'] as List;
      return feature.map((e) => FeaturedService.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load featured services');
    }
  }

  //provider list
  Future<List<ProviderModel>> fatchProvider() async {
    final response = await http
        .get(Uri.parse('https://prohandy.xgenious.com/api/v1/provider-lists'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List provider = data['provider_lists'] as List;
      return provider.map((e) => ProviderModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to Provider List');
    }
  }

  //Slider List
  Future<List<SliderItem>> fatchSlider() async {
    final response = await http
        .get(Uri.parse('https://prohandy.xgenious.com/api/v1/slider-lists'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final List data = jsonData['sliders'];
      return data.map((e) => SliderItem.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load sliders');
    }
  }
}
