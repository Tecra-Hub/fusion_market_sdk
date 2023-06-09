import 'package:flutter/material.dart';
import 'package:fusion_market_sdk/fusion_market_sdk.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Auth Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                FusionMarket(apiKey: "apiKey")
                    .instance!
                    .signInWithGoogle(context);
              },
              child: Text("Sign In With Google"))
        ],
      ),
    );
  }
}
