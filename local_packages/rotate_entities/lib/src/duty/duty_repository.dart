import 'package:rotate_entities/src/duty/duty.dart';

abstract class DutyRepository {
  // CREATE
  Future<void> putDuties(Set<Duty> duties);

  // READ
  Future<Set<Duty>> findAll();
  Future<Set<Duty>> findAllByType(String type);
  Future<Set<Duty>> findAllByYearAndMonth({
    required int year,
    required int month,
  });
  // UPDATE

  // DELETE
  Future<int> deleteAll();
  Future<int> deleteByDate(DateTime date);
}
