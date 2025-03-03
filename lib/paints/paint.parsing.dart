part of 'paint.dart';

abstract class _IdConverter<T extends StringId> implements JsonConverter<T, String> {
  const _IdConverter();

  @override
  T fromJson(String json);

  @override
  String toJson(T object) => object.id;
}

class PaintIdJsonConverter extends _IdConverter<PaintId> {
  const PaintIdJsonConverter();

  @override
  PaintId fromJson(String json) => PaintId(json);
}

class ManufacturerIdJsonConverter extends _IdConverter<ManufacturerId> {
  const ManufacturerIdJsonConverter();

  @override
  ManufacturerId fromJson(String json) => ManufacturerId(json);
}

class ColorConverter implements JsonConverter<Color, String> {
  const ColorConverter();

  @override
  Color fromJson(String json) {
    var hexColor = json.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }

    return Color(int.parse(hexColor, radix: 16));
  }

  @override
  String toJson(Color object) => object.toString();
}