class NewClass1 {
   final int? year;
   final String? premium;
   final String? lifeCover;
   final String? surrender;
   final String? income;

  NewClass1(
      {this.year, this.premium, this.lifeCover, this.surrender, this.income});

   NewClass1.fromJson(Map<String, dynamic> json) :
    year = json['year'],
    premium = json['premium'],
    lifeCover = json['lifeCover'],
    surrender = json['surrender'],
    income = json['income'];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['year'] = year;
    data['premium'] =premium;
    data['lifeCover'] = lifeCover;
    data['surrender'] = surrender;
    data['income'] = income;
    return data;
  }
}
