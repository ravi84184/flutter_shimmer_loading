import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shimmer Loading"),
      ),
      body: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      color: Colors.white,
                    ),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 8,
                          width: double.infinity,
                          color: Colors.white,
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(vertical: 3)),
                        Container(
                          height: 8,
                          width: double.infinity,
                          color: Colors.white,
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(vertical: 3)),
                        Container(
                          height: 8,
                          width: 50,
                          color: Colors.white,
                        )
                      ],
                    ))
                  ],
                ),
              );
            }),
      ),
    );
  }
}
