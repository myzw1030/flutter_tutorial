import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:flutter_tutorial/drift/pages/todo_list_page/todo_list_page_view_model.dart';

class TodoEditDialog extends ConsumerStatefulWidget {
  const TodoEditDialog({super.key});

  @override
  TodoEditDialogState createState() => TodoEditDialogState();
}

class TodoEditDialogState extends ConsumerState<TodoEditDialog> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  final _deadlineController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // フォーカス解除
  void _unFocus(BuildContext context) {
    final currentScope = FocusScope.of(context);
    if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
      FocusManager.instance.primaryFocus!.unfocus();
    }
  }

  // DatePicker
  Future<void> _getDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(DateTime.now().year - 3),
      lastDate: DateTime(DateTime.now().year + 3),
    );

    if (newDate != null) {
      // 取得した日付をフォーマットしてから設定
      _deadlineController.text = DateFormat('yyyy-MM-dd').format(newDate);
    } else {
      return;
    }
  }

  // バリデーション
  String? _validateText(String? value) {
    if (value == null || value.isEmpty) {
      return '値を入力してください';
    }
    return null;
  }

  // 表示更新
  void _onSavePressed() {
    // バリデーションチェック
    if (_formKey.currentState!.validate()) {
      final todoListNotifier = ref.read(todoListProvider.notifier);
      final title = _titleController.text;
      final content = _contentController.text;
      final deadline = _deadlineController.text;

      // `Todoリスト`の追加
      todoListNotifier.addTodo(title, content, deadline);

      // 初期化
      _titleController.clear();
      _contentController.clear();
      _deadlineController.clear();

      // ダイアログを閉じる
      Navigator.pop(context);
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    _deadlineController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: GestureDetector(
        onTap: () => _unFocus(context),
        behavior: HitTestBehavior.opaque,
        child: Container(
          padding: const EdgeInsets.only(
            top: 30,
            right: 20,
            bottom: 20,
            left: 20,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _EditTextFormField(
                  icon: Icons.title,
                  hintText: 'タイトルを入力してください',
                  validator: _validateText,
                  controller: _titleController,
                ),
                const SizedBox(height: 16),
                _EditTextFormField(
                  icon: Icons.toc,
                  hintText: '内容を入力してください',
                  validator: _validateText,
                  controller: _contentController,
                ),
                const SizedBox(height: 16),
                _EditTextFormField(
                  icon: Icons.calendar_month,
                  hintText: '期限を入力してください',
                  validator: _validateText,
                  controller: _deadlineController,
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    _getDate(context);
                  },
                ),
                const SizedBox(height: 42),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _DialogActionButton(
                      text: 'キャンセル',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(width: 8),
                    _DialogActionButton(
                      text: '保存',
                      onPressed: _onSavePressed,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _EditTextFormField extends StatelessWidget {
  const _EditTextFormField({
    this.validator,
    this.controller,
    this.onTap,
    required this.icon,
    required this.hintText,
  });

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final VoidCallback? onTap;
  final IconData icon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 12),
        Expanded(
          child: TextFormField(
            controller: controller,
            validator: validator,
            onTap: onTap,
            autofocus: true,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(fontSize: 18),
              errorStyle: const TextStyle(fontSize: 16),
            ),
            style: const TextStyle(fontSize: 22),
          ),
        ),
      ],
    );
  }
}

class _DialogActionButton extends StatelessWidget {
  const _DialogActionButton({
    required this.text,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
