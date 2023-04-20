import '/imports.dart';

var roundedAll = BorderRadius.circular(13);
var roundedBottom = const BorderRadius.vertical(bottom: Radius.circular(13));
var roundedTop = const BorderRadius.vertical(top: Radius.circular(13));

extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
}
