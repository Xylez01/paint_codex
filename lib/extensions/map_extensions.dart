extension MapExtensions<TKey, TValue> on Map<TKey, TValue> {
  Map<TKey, TValue> filter(bool Function(TKey, TValue) predicate) {
    final Map<TKey, TValue> result = <TKey, TValue>{};

    for (final MapEntry<TKey, TValue> entry in entries) {
      if (predicate(entry.key, entry.value)) {
        result[entry.key] = entry.value;
      }
    }

    return result;
  }
}