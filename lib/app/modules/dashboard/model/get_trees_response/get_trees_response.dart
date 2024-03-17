import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';

part 'get_trees_response.freezed.dart';
part 'get_trees_response.g.dart';

@freezed
class GetTreesResponse with _$GetTreesResponse {
  factory GetTreesResponse({
    int? success,
    List<TreeData>? data,
  }) = _GetTreesResponse;

  factory GetTreesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetTreesResponseFromJson(json);
}
