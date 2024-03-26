class Product {
  String name;
  String price;
  String imagePath;
  String rating;
  String review;
  String description;

  Product({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
    required this.review,
    required this.description,
  });

  String get _name => name;
  String get _price => price;
  String get _image => imagePath;
  String get _rating => rating;
  String get _review => review;
  String get _description => description;
}
