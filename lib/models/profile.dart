import 'dart:core';

class Profile{
  final String? id;
  final String? fullName;
  final String? profileImage;
  final String? verified;
  final String? address;
  final String? email;

  Profile(
      {this.id, this.fullName, this.profileImage, this.verified, this.address,this.email,});

  factory Profile.fromJson(Map<String, dynamic> data){
    return Profile(
      id: data["id"],
      fullName: data["full_name"],
      profileImage: data["profile_image"],
      verified: data["verified"],
      address: data["address"],
      email: data["email"],
    );
  }
}