List<T> parsingData<T>(
  List<dynamic> response,
  T Function(Map<String, dynamic>) fromJson,
) {
  List<T> value = [];

  for (var item in response) {
    value.add(fromJson(item));
  }

  return value;
}
