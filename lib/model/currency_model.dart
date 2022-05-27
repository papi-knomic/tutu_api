class DataList {
  bool? error;
  String? msg;
  late List<Currency> data;

  DataList({required this.error, required this.msg, required this.data});

  DataList.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = <Currency>[];
      json['data'].forEach((v) {
        data.add(new Currency.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Currency {
  String? name;
  String? currency;
  String? iso2;
  String? iso3;

  Currency({this.name, this.currency, this.iso2, this.iso3});

  Currency.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    currency = json['currency'];
    iso2 = json['iso2'];
    iso3 = json['iso3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['currency'] = this.currency;
    data['iso2'] = this.iso2;
    data['iso3'] = this.iso3;
    return data;
  }
}
