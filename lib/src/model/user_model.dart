class User {
  String name;
  String phone;
  String phone2;
  double loan;
  double debt;
  String address;
  String type;
  List<Product> products; // New field for products

  // Constructor
  User({
    required this.name,
    required this.phone,
    required this.phone2,
    required this.loan,
    required this.debt,
    required this.address,
    required this.type,
    required this.products, // Add products to the constructor
  });

  // fromJson method to create User from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    var productList = json['products'] as List;
    List<Product> products = productList.map((i) => Product.fromJson(i)).toList();

    return User(
      name: json['name'],
      phone: json['phone'],
      phone2: json['phone2'],
      loan: json['loan'].toDouble(),
      debt: json['debt'].toDouble(),
      address: json['address'],
      type: json['type'],
      products: products, // Parse products from JSON
    );
  }

  // toJson method to convert User to JSON
  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> productJson = products.map((i) => i.toJson()).toList();

    return {
      'name': name,
      'phone': phone,
      'phone2': phone2,
      'loan': loan,
      'debt': debt,
      'address': address,
      'type': type,
      'products': productJson, // Convert products to JSON
    };
  }
}

class Product {
  String name;
  double price;

  // Constructor
  Product({
    required this.name,
    required this.price,
  });

  // fromJson method to create Product from JSON
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      price: json['price'].toDouble(),
    );
  }

  // toJson method to convert Product to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
    };
  }
}
