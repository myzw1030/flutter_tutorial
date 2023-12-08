import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'todos.g.dart';

// `Todo`という名前でTodoリストの情報を保持する
@DataClassName('Todo')
class Todos extends Table {
  // ID
  IntColumn get id => integer().autoIncrement()();
  // タイトル
  TextColumn get title => text().withLength(min: 1, max: 20)();
  // 内容
  TextColumn get content => text().withLength(min: 1, max: 50)();
  // 期限日
  TextColumn get deadline => text()();
  // 作成日
  TextColumn get createDate => text()();
}

// `Todos`テーブルを含むデータベースを表現する
@DriftDatabase(tables: [Todos])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  // データベースのスキーマバージョンを返す
  @override
  int get schemaVersion => 1;
}

// アプリのドキュメントディレクトリにデータベースファイルを生成し、接続する
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'todos.sqlite'));

    return NativeDatabase(file);
  });
}
