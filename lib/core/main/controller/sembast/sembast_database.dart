import 'package:path/path.dart' as path;
import 'package:rotate/utils/logger.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class SembastDatabase {
  late Database _instance;
  Database get instance => _instance;
  late final String dbPath;

  static final mainStore = StoreRef<String, String>.main();

  bool _isInitialized = false;

  Future<void> initialize(String dbDirectory) async {
    if (_isInitialized) return;

    logger.i('initializing sembast db');
    dbPath = path.join(dbDirectory, 'db.sembast');
    _instance = await databaseFactoryIo.openDatabase(dbPath);

    _isInitialized = true;
    logger.i('initializing sembast db complete');
  }
}
