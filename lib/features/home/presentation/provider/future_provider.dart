import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_project/features/home/data/model/user_model.dart';

class FutureProvider extends Notifier<List<UserModel>> {
  @override
  List<UserModel> build() {
    return [
      UserModel(
          id: 1,
          image: 'assets/image/image1.png',
          ratings: '4.5',
          duration: '1 hr',
          sulgan: 'Painting',
          name: "Home Cleaning Services at Miami, FL",
          regularPrice: "199",
          discountPrice: "248",
          adminName: "Robert Fox",
          adminPic: 'assets/image/admin.png'),
      UserModel(
          id: 2,
          image: 'assets/image/image2.png',
          ratings: '4.5',
          duration: '1 hr',
          sulgan: 'Painting',
          name: "Reliable Plumbing Solution Quick and Efficient",
          regularPrice: "199",
          discountPrice: "248",
          adminName: "Robert Fox",
          adminPic: 'assets/image/admin.png'),
    ];
  }
}

final futureProvider = NotifierProvider<FutureProvider, List<UserModel>>(
  () => FutureProvider(),
);
