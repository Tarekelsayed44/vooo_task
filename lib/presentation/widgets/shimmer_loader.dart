import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoader extends StatelessWidget {
  const ShimmerLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (_, __) => Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListTile(
          leading: Container(width: 60, height: 60, color: Colors.white),
          title: Container(width: double.infinity, height: 10, color: Colors.white),
          subtitle: Container(width: 60, height: 10, color: Colors.white),
        ),
      ),
    );
  }
}