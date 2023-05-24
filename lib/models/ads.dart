class Ad {
  final String adUnit;
  final Map<String, dynamic> metadata;
  final Map<String, dynamic> product;

  Ad({
    required this.adUnit,
    required this.metadata,
    required this.product,
  });

  factory Ad.fromJson(Map<String, dynamic> data) {
    return Ad(
      adUnit: data["id"],
      metadata: data["metadata"],
      product: data["product"],
    );
  }
}
