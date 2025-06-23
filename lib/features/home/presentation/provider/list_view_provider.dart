import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_project/features/home/data/model/user_model.dart';

class ListViewProvider extends Notifier<List<Model>> {
  @override
  List<Model> build() {
    return [
      Model(
          id: 1,
          image: 'assets/image/01.png',
          reatings: '4.5',
          name: 'Jane Cooper',
          sulgan: 'Painting'),
      Model(
          id: 2,
          image: 'assets/image/02.png',
          reatings: '4.5',
          name: 'Julian Norman',
          sulgan: 'Painting'),
      Model(
          id: 3,
          image: 'assets/image/admin.png',
          reatings: '4.5',
          name: 'Robert Fox',
          sulgan: 'Painting'),
    ];
  }
}

final listViewProvider = NotifierProvider<ListViewProvider, List<Model>>(
  () => ListViewProvider(),
);
