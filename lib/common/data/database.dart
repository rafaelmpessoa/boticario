import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'database.g.dart';

class UserPostTable extends Table {
  TextColumn get id => text()();
  TextColumn get post => text()();
  DateTimeColumn get created_at => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@singleton
@UseMoor(
  tables: [UserPostTable],
  daos: [UserPostTableDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 1;

  @override
  // TODO: implement migration
  MigrationStrategy get migration => MigrationStrategy(onCreate: (Migrator m) {
        return m.createAll();
      });
}

@UseDao(tables: [UserPostTable])
class UserPostTableDao extends DatabaseAccessor<AppDatabase>
    with _$UserPostTableDaoMixin {
  final AppDatabase db;

  UserPostTableDao(this.db) : super(db);

  Future insertUserPost(Insertable<UserPostTableData> newUserPostTable) =>
      into(userPostTable).insert(newUserPostTable);

  Future updateUserPost({@required String post, @required String id}) =>
      (update(userPostTable)..where((tbl) => tbl.id.equals(id))).write(
          UserPostTableCompanion(
              post: Value(post), updated_at: Value(DateTime.now())));

  Future deleteUserPost(String id) =>
      (delete(userPostTable)..where((tbl) => tbl.id.equals(id))).go();

  Future deleteUserPosts() => delete(userPostTable).go();

  Future<List<UserPostTableData>> getUserPosts() => select(userPostTable).get();

  Future<UserPostTableData> getUserPost(String id) =>
      (select(userPostTable)..where((tbl) => tbl.id.equals(id))).getSingle();
}
