library fusion_market_sdk;

import 'package:fusion_market_sdk/instance.dart';

String url = "https://store254backend-production.up.railway.app";

class FusionMarket {
  final String apiKey;

  FusionMarket({required this.apiKey}) {
    init();
  }

  Instance? instance;

  init() {
    instance = Instance();
  }
}

// manages state of the app

