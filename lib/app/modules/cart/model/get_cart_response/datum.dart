import 'package:freezed_annotation/freezed_annotation.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
	factory Datum({
		int? id,
		@JsonKey(name: 'number_of_trees') int? numberOfTrees,
		String? user,
		String? tree,
	}) = _Datum;

	factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}