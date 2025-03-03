part of 'paint.dart';

abstract class _IntIdConverter<T extends IntId> implements JsonConverter<T, int> {
  const _IntIdConverter();

  @override
  T fromJson(int json);

  @override
  int toJson(T object) => object.id;
}

abstract class _StringIdConverter<T extends StringId> implements JsonConverter<T, String> {
  const _StringIdConverter();

  @override
  T fromJson(String json);

  @override
  String toJson(T object) => object.id;
}

class PaintIdJsonConverter extends _IntIdConverter<PaintId> {
  const PaintIdJsonConverter();

  @override
  PaintId fromJson(int json) => PaintId(json);
}

class ManufacturerIdJsonConverter extends _StringIdConverter<ManufacturerId> {
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

class IntToBoolConverter implements JsonConverter<bool, int> {
  const IntToBoolConverter();

  @override
  bool fromJson(int json) => json == 1;

  @override
  int toJson(bool object) => object ? 1 : 0;
}