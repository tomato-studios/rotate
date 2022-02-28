import 'package:aviation_entities/airport.dart';
import 'package:domain_model/domain_model.dart';
import 'package:domain_model/src/infrastructure/sembast_utils.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/timestamp.dart';

class SembastDutyRepository extends DutyRepository {
  final DatabaseClient db;

  SembastDutyRepository(this.db);

  static final _store = stringMapStoreFactory.store('duty');

  // TODO: Test all these methods

  @override
  Future<void> putDuties(Set<Duty> duties) async {
    await _store.addAll(db, duties.map((duty) => duty.toJson()).toList());
  }

  @override
  Future<Set<Duty>> findAll() async {
    final List<Record> records = await _store.stream(db).toList();
    return records.map((record) => Duty.fromJson(record.value)).toSet();
  }

  @override
  Future<Set<Duty>> findAllByType(String type) {
    // Freezed union type are saved in json as key "runtimeType"
    final finder = Finder(filter: Filter.equals('runtimeType', type));
    return _findDuties(finder, db, _store);
  }

  @override
  Future<Set<Duty>> findAllByYearAndMonth({
    required int year,
    required int month,
  }) {
    final finder = Finder(
      filter: Filter.and(
        [
          Filter.lessThan(
            'end',
            DateTime(year, month + 1).subtract(
              const Duration(days: 1),
            ),
          ),
          Filter.greaterThan(
            'start',
            DateTime(year, month),
          ),
        ],
      ),
    );
    return _findDuties(finder, db, _store);
  }

  @override
  Future<int> deleteAll() async {
    return _store.delete(db);
  }

  @override
  Future<int> deleteByDate(DateTime date) {
    final startOfDay =
        Timestamp.fromDateTime(DateTime(date.year, date.month, date.day));
    final endOfDay =
        Timestamp.fromDateTime(DateTime(date.year, date.month, date.day, 24));
    final finder = Finder(
      filter: Filter.and(
        [
          Filter.greaterThan('start', startOfDay),
          Filter.lessThan('start', endOfDay),
        ],
      ),
    );
    return _store.delete(db, finder: finder);
  }
}

// ignore: unused_element
Future<Airport?> _findDuty(
  Finder finder,
  DatabaseClient db,
  Store _store,
) async {
  final record = await _store.findFirst(db, finder: finder);
  if (record != null) {
    return Airport.fromJson(record.value);
  }
  return null;
}

Future<Set<Duty>> _findDuties(
  Finder finder,
  DatabaseClient db,
  Store _store,
) async {
  final records = await _store.find(db, finder: finder);
  return records
      .whereType<Record>()
      .map((record) => Duty.fromJson(record.value))
      .toSet();
}
