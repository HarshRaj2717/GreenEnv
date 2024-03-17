import 'package:flutter_riverpod/flutter_riverpod.dart';

final showRegPassowrd = StateProvider<bool>((ref) => false);
final showConfirmPassowrd = StateProvider<bool>((ref) => false);
final loadingReg = StateProvider<bool>((ref) => false);
