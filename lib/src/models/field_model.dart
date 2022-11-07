class FormsResponseModel extends DOForm {
  FormsResponseModel({
    required this.formData,
  });
  late final List<DOForm> formData;

  FormsResponseModel.fromJson(Map<String, dynamic> json) {
    formData =
        List.from(json['formData']).map((e) => DOForm.fromJson(e)).toList();
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['formData'] = formData.map((e) => e.toJson()).toList();
    return data;
  }
}

class DOForm {
  DOForm({
    this.id,
    this.label,
    this.description,
    this.type,
    this.isRequired,
  });
  late final String? id;
  late final String? label;
  late final String? description;
  late final String? type;
  late final bool? isRequired;

  DOForm.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    label = json['label'];
    type = json['type'];
    isRequired = json['isRequired'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['label'] = label;
    data['type'] = type;
    data['isRequired'] = isRequired;
    return data;
  }
}
