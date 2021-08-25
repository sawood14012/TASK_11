class Products {
/*
{
  "productID": 1,
  "productName": "Chicken Briyani",
  "category": "Biryanis",
  "price": 250
} 
*/

  String? productID;
  String? productName;
  String? category;
  String? price;
  Map<String, dynamic> __origJson = {};

  Products({
    this.productID,
    this.productName,
    this.category,
    this.price,
  });
  Products.fromJson(Map<String, dynamic> json) {
    __origJson = json;
    productID = json["productID"]?.toString();
    productName = json["productName"]?.toString();
    category = json["category"]?.toString();
    price = json["price"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["productID"] = productID;
    data["productName"] = productName;
    data["category"] = category;
    data["price"] = price;
    return data;
  }
  Map<String, dynamic> origJson() => __origJson;
}
