import 'package:freezed_annotation/freezed_annotation.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class TreeData with _$TreeData {
  factory TreeData({
    String? name,
    int? price,
    String? description,
  }) = _TreeData;

  factory TreeData.fromJson(Map<String, dynamic> json) =>
      _$TreeDataFromJson(json);
}
