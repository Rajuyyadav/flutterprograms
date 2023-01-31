class SortDataJsonFileTest {
  final int? id;
  final String? name;
  final int? price;
  final double? rating;
  final int? noOfPurchase;


  SortDataJsonFileTest({
    this.id, this.name, this.price, this.rating, this.noOfPurchase});

  factory SortDataJsonFileTest.fromMap(Map<String, dynamic> map) {
    return SortDataJsonFileTest(
      id : map['id'],
      name : map['name'],
      price : map['price'],
      rating : map['rating'],
      noOfPurchase : map['noOfPurchase'],
    );
  }

  Map<String, dynamic> toMap() => {
    'id' : id,
    'name' : name,
    'price' : price,
    'rating' : rating,
    'noOfPurchase' : noOfPurchase
  };
}
