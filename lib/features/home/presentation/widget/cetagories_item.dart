import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_project/features/home/presentation/provider/provider.dart';

class CetagoriesItem extends ConsumerWidget {
  const CetagoriesItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cetagoriesData = ref.watch(cetagoriesProvider);

    return cetagoriesData.when(
      data: (data) {
        final sortData = [...data];
        sortData.sort((a, b) => a.id.compareTo(b.id));

        return SizedBox(
          height: 120,
          child: ListView.builder(
            itemCount: sortData.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              final cetagory = sortData[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Center(
                        child: Image.network(
                          cetagory.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      cetagory.name,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
      loading: () => Center(child: CircularProgressIndicator()),
    );
  }
}
