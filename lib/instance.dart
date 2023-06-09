import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fusion_market_sdk/fusion_market_sdk.dart';
import 'package:fusion_market_sdk/models/profile.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class Instance {
  Future<Profile?> signInWithGoogle(BuildContext context) async {
    try{
      GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
      GoogleSignInAccount? ac= await _googleSignIn.signInSilently();

      var response = await http.post(
          Uri.parse("$url/api/auth/google"),
          body: {
            "profile_image": "${ac!.photoUrl}",
            "full_name": "${ac.displayName}",
            "email": ac.email,
            "google_uid": ac.id,
          }
      );

      var res = json.decode(response.body) as Map;
      if (res.containsKey("error")){
        return null;
      }

      return Profile(email: ac.email);
    }catch(e){

      return null;
    }

  }
}
