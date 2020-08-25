// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class UserPostTableData extends DataClass
    implements Insertable<UserPostTableData> {
  final String id;
  final String post;
  final DateTime created_at;
  final DateTime updated_at;
  UserPostTableData(
      {@required this.id,
      @required this.post,
      @required this.created_at,
      this.updated_at});
  factory UserPostTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return UserPostTableData(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      post: stringType.mapFromDatabaseResponse(data['${effectivePrefix}post']),
      created_at: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updated_at: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || post != null) {
      map['post'] = Variable<String>(post);
    }
    if (!nullToAbsent || created_at != null) {
      map['created_at'] = Variable<DateTime>(created_at);
    }
    if (!nullToAbsent || updated_at != null) {
      map['updated_at'] = Variable<DateTime>(updated_at);
    }
    return map;
  }

  UserPostTableCompanion toCompanion(bool nullToAbsent) {
    return UserPostTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      post: post == null && nullToAbsent ? const Value.absent() : Value(post),
      created_at: created_at == null && nullToAbsent
          ? const Value.absent()
          : Value(created_at),
      updated_at: updated_at == null && nullToAbsent
          ? const Value.absent()
          : Value(updated_at),
    );
  }

  factory UserPostTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserPostTableData(
      id: serializer.fromJson<String>(json['id']),
      post: serializer.fromJson<String>(json['post']),
      created_at: serializer.fromJson<DateTime>(json['created_at']),
      updated_at: serializer.fromJson<DateTime>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'post': serializer.toJson<String>(post),
      'created_at': serializer.toJson<DateTime>(created_at),
      'updated_at': serializer.toJson<DateTime>(updated_at),
    };
  }

  UserPostTableData copyWith(
          {String id, String post, DateTime created_at, DateTime updated_at}) =>
      UserPostTableData(
        id: id ?? this.id,
        post: post ?? this.post,
        created_at: created_at ?? this.created_at,
        updated_at: updated_at ?? this.updated_at,
      );
  @override
  String toString() {
    return (StringBuffer('UserPostTableData(')
          ..write('id: $id, ')
          ..write('post: $post, ')
          ..write('created_at: $created_at, ')
          ..write('updated_at: $updated_at')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(post.hashCode, $mrjc(created_at.hashCode, updated_at.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is UserPostTableData &&
          other.id == this.id &&
          other.post == this.post &&
          other.created_at == this.created_at &&
          other.updated_at == this.updated_at);
}

class UserPostTableCompanion extends UpdateCompanion<UserPostTableData> {
  final Value<String> id;
  final Value<String> post;
  final Value<DateTime> created_at;
  final Value<DateTime> updated_at;
  const UserPostTableCompanion({
    this.id = const Value.absent(),
    this.post = const Value.absent(),
    this.created_at = const Value.absent(),
    this.updated_at = const Value.absent(),
  });
  UserPostTableCompanion.insert({
    @required String id,
    @required String post,
    this.created_at = const Value.absent(),
    this.updated_at = const Value.absent(),
  })  : id = Value(id),
        post = Value(post);
  static Insertable<UserPostTableData> custom({
    Expression<String> id,
    Expression<String> post,
    Expression<DateTime> created_at,
    Expression<DateTime> updated_at,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (post != null) 'post': post,
      if (created_at != null) 'created_at': created_at,
      if (updated_at != null) 'updated_at': updated_at,
    });
  }

  UserPostTableCompanion copyWith(
      {Value<String> id,
      Value<String> post,
      Value<DateTime> created_at,
      Value<DateTime> updated_at}) {
    return UserPostTableCompanion(
      id: id ?? this.id,
      post: post ?? this.post,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (post.present) {
      map['post'] = Variable<String>(post.value);
    }
    if (created_at.present) {
      map['created_at'] = Variable<DateTime>(created_at.value);
    }
    if (updated_at.present) {
      map['updated_at'] = Variable<DateTime>(updated_at.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserPostTableCompanion(')
          ..write('id: $id, ')
          ..write('post: $post, ')
          ..write('created_at: $created_at, ')
          ..write('updated_at: $updated_at')
          ..write(')'))
        .toString();
  }
}

class $UserPostTableTable extends UserPostTable
    with TableInfo<$UserPostTableTable, UserPostTableData> {
  final GeneratedDatabase _db;
  final String _alias;
  $UserPostTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _postMeta = const VerificationMeta('post');
  GeneratedTextColumn _post;
  @override
  GeneratedTextColumn get post => _post ??= _constructPost();
  GeneratedTextColumn _constructPost() {
    return GeneratedTextColumn(
      'post',
      $tableName,
      false,
    );
  }

  final VerificationMeta _created_atMeta = const VerificationMeta('created_at');
  GeneratedDateTimeColumn _created_at;
  @override
  GeneratedDateTimeColumn get created_at =>
      _created_at ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn('created_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  final VerificationMeta _updated_atMeta = const VerificationMeta('updated_at');
  GeneratedDateTimeColumn _updated_at;
  @override
  GeneratedDateTimeColumn get updated_at =>
      _updated_at ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, post, created_at, updated_at];
  @override
  $UserPostTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_post_table';
  @override
  final String actualTableName = 'user_post_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserPostTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('post')) {
      context.handle(
          _postMeta, post.isAcceptableOrUnknown(data['post'], _postMeta));
    } else if (isInserting) {
      context.missing(_postMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
          _created_atMeta,
          created_at.isAcceptableOrUnknown(
              data['created_at'], _created_atMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(
          _updated_atMeta,
          updated_at.isAcceptableOrUnknown(
              data['updated_at'], _updated_atMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  UserPostTableData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserPostTableData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UserPostTableTable createAlias(String alias) {
    return $UserPostTableTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UserPostTableTable _userPostTable;
  $UserPostTableTable get userPostTable =>
      _userPostTable ??= $UserPostTableTable(this);
  UserPostTableDao _userPostTableDao;
  UserPostTableDao get userPostTableDao =>
      _userPostTableDao ??= UserPostTableDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [userPostTable];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$UserPostTableDaoMixin on DatabaseAccessor<AppDatabase> {
  $UserPostTableTable get userPostTable => attachedDatabase.userPostTable;
}
