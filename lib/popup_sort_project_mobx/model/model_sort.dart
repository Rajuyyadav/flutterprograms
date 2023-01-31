class SortDataJsonFile {
  int? id;
  String? name;
  int? price;
  double? rating;
  int? noOfPurchase;

  SortDataJsonFile(
      {this.id, this.name, this.price, this.rating, this.noOfPurchase});

  SortDataJsonFile.fromJson(Map<String, dynamic> json) :
    id = json['id'],
    name = json['name'],
    price = json['price'],
    rating = json['rating'],
    noOfPurchase = json['noOfPurchase'];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['rating'] = this.rating;
    data['noOfPurchase'] = this.noOfPurchase;
    return data;
  }
}
