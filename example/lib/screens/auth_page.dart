import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:fusion_market_sdk/fusion_market_sdk.dart';
import 'package:oauth2/oauth2.dart' as oauth2;

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
              onPressed: () async{
                // FusionMarket(apiKey: "apiKey")
                //     .instance!
                //     .signInWithGoogle(context);

                final urlR = Uri.https("store254backend-production.up.railway.app", '/api/auth/oauth2/google', {
                  // 'redirect_uri': 'fusione:/',
                });


                // final res = await FlutterWebAuth2.authenticate(url: urlR.toString(), callbackUrlScheme: "fusione");
             //  log(res.toLowerCase());



              },
              child: Text("Sign In With Google"))
        ],
      ),
    );
  }
}
