class Model {
  String? imageUrl;
  String? categoryName;

  Model({required this.imageUrl, required this.categoryName});
}

class Doctors {
  String? imageUrl;
  String? drNames;
  String? drType;
  double? ratings;
  double? loc;

  Doctors(
      {required this.imageUrl,
      required this.drType,
      required this.drNames,
      required this.ratings,
      required this.loc});
}

class Doc {
  String? imageUrl;
  String? drNames;
  String? drType;

  Doc({
    required this.imageUrl,
    required this.drType,
    required this.drNames,
  });
}
