import 'package:extensions/constant/constant.dart';

extension NonNullString on String? {
  /// Returns the string itself if it's not null or empty, otherwise returns Constants.empty.
  String orEmpty() {
    if (this == null || this!.isEmpty) {
      return Constants.empty;
    } else {
      return this!;
    }
  }

 
}
extension NonNullInteger on int? {
  /// Returns the integer itself if it's not null, otherwise returns 0.
  int orZero() {
if(this==null){
      return Constants.zero;
    } else {
      return this!;
}  }
}