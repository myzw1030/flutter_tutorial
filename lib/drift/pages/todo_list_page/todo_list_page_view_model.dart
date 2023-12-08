import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/drift/model/todos.dart';
import 'package:intl/intl.dart';

// AppDatabaseのインスタンスを生成
final appDatabaseProvider = Provider<AppDatabase>((ref) => AppDatabase());

final todoListProvider =
    StateNotifierProvider.autoDispose<TodoListNotifier, List<Todo>>((ref) {
  final appDatabase = ref.watch(appDatabaseProvider);
  return TodoListNotifier(appDatabase);
});

class TodoListNotifier extends StateNotifier<List<Todo>> {
  // `Todo`リストを空のリストとして初期化
  TodoListNotifier(this.db) : super([]) {
    // 初期値をデータベースから取得する
    loadTodo();
  }
  final AppDatabase db;

  // データベースから全てのTodoを一度だけ取得する
  Future<void> loadTodo() async {
    final todos = await db.select(db.todos).get();
    state = todos;
  }

  // `Todo`を追加する
  Future<void> addTodo(
    String title,
    String content,
    String deadline,
  ) async {
    final nowDate = DateTime.now();
    final formattedDate = DateFormat('yyyy-MM-dd').format(nowDate);
    await db.into(db.todos).insert(
          TodosCompanion(
            title: Value(title),
            content: Value(content),
            deadline: Value(deadline),
            createDate: Value(formattedDate),
          ),
        );
    // 現在のTodoリストを再取得して状態を更新
    await loadTodo();
  }

  // データベースからTodoを削除する
  Future<void> deleteTodo(Todo todo) async {
    await db.delete(db.todos).delete(todo);
    // 対象のTodoを削除
    state = state.where((item) => item.id != todo.id).toList();
  }
}
