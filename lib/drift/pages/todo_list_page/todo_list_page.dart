import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/drift/pages/todo_list_page/todo_list_edit_dialog.dart';
import 'package:flutter_tutorial/drift/pages/todo_list_page/todo_list_item.dart';
import 'package:flutter_tutorial/drift/pages/todo_list_page/todo_list_page_view_model.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoListPage extends ConsumerWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoLists = ref.watch(todoListProvider);
    final todoListsNotifier = ref.read(todoListProvider.notifier);
    return SafeArea(
      child: Scaffold(
        body: todoLists.isNotEmpty
            ? CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          final todo = todoLists[index];
                          return Slidable(
                            key: ValueKey(todo.id),
                            endActionPane: ActionPane(
                              motion: const DrawerMotion(),
                              children: [
                                SlidableAction(
                                  onPressed: (context) {
                                    todoListsNotifier.deleteTodo(todo);
                                  },
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  icon: Icons.delete,
                                  label: 'Delete',
                                ),
                              ],
                            ),
                            child: TodoListItem(todos: todo),
                          );
                        },
                        childCount: todoLists.length,
                      ),
                    ),
                  ),
                ],
              )
            : const Center(
                child: Text(
                  '登録しているToDoはありません',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog<Map<String, double>>(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return const TodoEditDialog();
              },
            );
          },
          child: const Icon(
            Icons.edit,
          ),
        ),
      ),
    );
  }
}
