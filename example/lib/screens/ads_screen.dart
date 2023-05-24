import 'package:flutter/material.dart';
import 'package:fusion_market_sdk/widgets/native_ads.dart';

class AdsScreen extends StatelessWidget {
  const AdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ads"),
      ),
      body: Column(
        children: [
          NativeAd(
            title: "Nuria",
            description: "Hello there",
            imageUrl:
                "https://images.unsplash.com/photo-1684765735066-0cea08ce8f0b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2787&q=80",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
