List<LoadMenuModel> loadMenuFromJson(List json) =>
    List<LoadMenuModel>.from(json.map((x) =>LoadMenuModel.fromJson(x)));

class LoadMenuModel {
  LoadMenuModel(
      {required this.id,
      this.name,
      required this.xmlid,
      required this.web_icon_data});

  int id;
  String? name;
  String xmlid;
  String? web_icon_data;

  factory LoadMenuModel.fromJson(Map<String, dynamic> json) {
    // if (json["web_icon_data"] != false) {
    //   print(json);
    //   print(json["web_icon_data"]);
    // }
    return LoadMenuModel(
      id: (json['id'] != false) ? json['id'] : 0,
      name: json['name'] != null ? json['name'] : '',
      xmlid: json['xmlid'] != null ? json['xmlid'] : '',
      web_icon_data:
          (json["web_icon_data"] != false) ? json["web_icon_data"] : null,
    );
  }
}
