import 'package:flutter/material.dart';

class CetagoriesModel {
  final int id;
  final String name;
  final String image;

  CetagoriesModel({
    required this.id,
    required this.name,
    required this.image,
  });

  factory CetagoriesModel.fromJson(Map<String, dynamic> json) {
    return CetagoriesModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      image: json['image'] ?? '',
    );
  }
}

//user Model
class UserModel {
  final int id;
  final String image;
  final IconData? icon;
  final String ratings;
  final String duration;
  final String sulgan;
  final String name;
  final String regularPrice;
  final String discountPrice;
  final String adminName;
  final String adminPic;
  final bool isFavorite;

  UserModel({
    required this.id,
    required this.image,
    this.icon,
    required this.ratings,
    required this.duration,
    required this.sulgan,
    required this.name,
    required this.regularPrice,
    required this.discountPrice,
    required this.adminName,
    required this.adminPic,
    this.isFavorite = false,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? 0,
      image: json['image'] ?? '',
      icon: json['icon'] != null ? IconData(json['icon']) : null,
      ratings: json['ratings']?.toString() ?? '',
      duration: json['duration'] ?? '',
      sulgan: json['sulgan'] ?? '',
      name: json['name'] ?? '',
      regularPrice: json['regular_price']?.toString() ?? '',
      discountPrice: json['discount_price']?.toString() ?? '',
      adminName: json['admin_name'] ?? '',
      adminPic: json['admin_pic'] ?? '',
      isFavorite: json['is_favorite'] ?? false,
    );
  }
}

//List of Featured Services
class Model {
  final int id;
  final String image;
  final String reatings;
  final String name;
  final String sulgan;

  Model({
    required this.id,
    required this.image,
    required this.reatings,
    required this.name,
    required this.sulgan,
  });

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      id: json['id'] ?? 0,
      image: json['image'] ?? '',
      reatings: json['reatings']?.toString() ?? '',
      name: json['name'] ?? '',
      sulgan: json['sulgan'] ?? '',
    );
  }
}

class FeaturedService {
  final int id;
  final String name;
  final String image;
  final String duration;
  final String originalPrice;
  final String discountPrice;
  final String rating;
  final String providerName;
  final String providerImage;

  FeaturedService({
    required this.id,
    required this.name,
    required this.image,
    required this.duration,
    required this.originalPrice,
    required this.discountPrice,
    required this.rating,
    required this.providerName,
    required this.providerImage,
  });

  factory FeaturedService.fromJson(Map<String, dynamic> json) {
    return FeaturedService(
      id: json['id'],
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      duration: json['duration'] ?? '',
      originalPrice: json['original_price']?.toString() ?? '',
      discountPrice: json['discount_price']?.toString() ?? '',
      rating: json['rating']?.toString() ?? '',
      providerName: json['provider']?['name'] ?? '',
      providerImage: json['provider']?['image'] ?? '',
    );
  }
}

class ProviderModel {
  final int id;
  final String name;
  final String email;
  final String image;
  final double ratings;
  final List<Map<String, dynamic>> services;

  ProviderModel({
    required this.id,
    required this.name,
    required this.email,
    required this.image,
    required this.ratings,
    required this.services,
  });

  factory ProviderModel.fromJson(Map<String, dynamic> json) {
    return ProviderModel(
      id: json['id'],
      name: json['name'],
      email: json['email'] ?? '',
      image: json['image'] ?? '',
      ratings: double.tryParse(json['ratings']?.toString() ?? '0') ?? 0,
      services: List<Map<String, dynamic>>.from(json['services'] ?? []),
    );
  }

  //slider list
}

//SliderItem Model
class SliderItem {
  final int id;
  final int identity;
  final String type;
  final int status;
  final String image;

  SliderItem({
    required this.id,
    required this.identity,
    required this.type,
    required this.status,
    required this.image,
  });

  factory SliderItem.fromJson(Map<String, dynamic> json) {
    return SliderItem(
      id: json['id'],
      identity: json['identity'],
      type: json['type'],
      status: json['status'],
      image: json['image'],
    );
  }
}
