class FundModel {
  String? message;
  List<Data>? data;

  FundModel({this.message, this.data});

  FundModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? panNumber;
  String? title;
  int? equityAmount;
  int? equityPercentage;
  String? startDate;
  String? description;
  String? updatedAt;
  String? endDate;
  String? name;
  String? logo;
  String? companyDescription;
  String? establishment;
  int? valuation;
  String? document;
  bool? verified;
  String? userRefId;

  Data(
      {this.panNumber,
      this.title,
      this.equityAmount,
      this.equityPercentage,
      this.startDate,
      this.description,
      this.updatedAt,
      this.endDate,
      this.name,
      this.logo,
      this.companyDescription,
      this.establishment,
      this.valuation,
      this.document,
      this.verified,
      this.userRefId});

  Data.fromJson(Map<String, dynamic> json) {
    panNumber = json['panNumber'];
    title = json['title'];
    equityAmount = json['equityAmount'];
    equityPercentage = json['equityPercentage'];
    startDate = json['startDate'];
    description = json['description'];
    updatedAt = json['updated_at'];
    endDate = json['endDate'];
    name = json['name'];
    logo = json['logo'];
    companyDescription = json['companyDescription'];
    establishment = json['establishment'];
    valuation = json['valuation'];
    document = json['document'];
    verified = json['verified'];
    userRefId = json['userRefId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['panNumber'] = this.panNumber;
    data['title'] = this.title;
    data['equityAmount'] = this.equityAmount;
    data['equityPercentage'] = this.equityPercentage;
    data['startDate'] = this.startDate;
    data['description'] = this.description;
    data['updated_at'] = this.updatedAt;
    data['endDate'] = this.endDate;
    data['name'] = this.name;
    data['logo'] = this.logo;
    data['companyDescription'] = this.companyDescription;
    data['establishment'] = this.establishment;
    data['valuation'] = this.valuation;
    data['document'] = this.document;
    data['verified'] = this.verified;
    data['userRefId'] = this.userRefId;
    return data;
  }
}
