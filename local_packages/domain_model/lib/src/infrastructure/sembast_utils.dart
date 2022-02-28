import 'package:sembast/sembast.dart';

typedef Record = RecordSnapshot<String, Map<String, Object?>>;
typedef Query = RecordRef<String, Map<String, Object?>>;
typedef Store = StoreRef<String, Map<String, Object?>>;

Finder finderByField(String field, String search) {
  return Finder(
    filter: Filter.matchesRegExp(
      field,
      RegExp('^${search.trim()}\$', caseSensitive: false),
    ),
  );
}

Finder finderByFieldLike(String field, String search) {
  return Finder(
    filter: Filter.matchesRegExp(
      field,
      RegExp(search.trim(), caseSensitive: false),
    ),
  );
}

Finder finderByFieldStartsWith(String field, String search) {
  return Finder(
    filter: Filter.matchesRegExp(
      field,
      RegExp('^${search.trim()}', caseSensitive: false),
    ),
  );
}
