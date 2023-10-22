/// image : "sasasa"
/// title : "sasasas"
/// descrition : "sasasas"

class Onboarding {
  Onboarding({
    String? image,
    String? title,
    String? descrition,
  }) {
    _image = image;
    _title = title;
    _descrition = descrition;
  }

  Onboarding.fromJson(dynamic json) {
    _image = json['image'];
    _title = json['title'];
    _descrition = json['descrition'];
  }
  String? _image;
  String? _title;
  String? _descrition;
  Onboarding copyWith({
    String? image,
    String? title,
    String? descrition,
  }) =>
      Onboarding(
        image: image ?? _image,
        title: title ?? _title,
        descrition: descrition ?? _descrition,
      );
  String? get image => _image;
  String? get title => _title;
  String? get descrition => _descrition;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image'] = _image;
    map['title'] = _title;
    map['descrition'] = _descrition;
    return map;
  }
}
