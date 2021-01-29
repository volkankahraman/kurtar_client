class RiskMessage {
  String group;
  String message;
  String city;

  RiskMessage({this.group, this.message, this.city});

  RiskMessage.fromJson(Map<String, dynamic> json) {
    group = json['group'];
    message = json['message'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['group'] = this.group;
    data['message'] = this.message;
    data['city'] = this.city;
    return data;
  }
}
