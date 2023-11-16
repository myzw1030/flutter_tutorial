import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditDialog extends StatefulWidget {
  const EditDialog({
    super.key,
    required this.onSave,
  });

  final Future<void> Function(
    String name,
    String age,
    String birthday,
  ) onSave;

  @override
  State<EditDialog> createState() => _EditDialogState();
}

// keyを設定
const nameKey = 'name';
const ageKey = 'age';
const birthdayKey = 'birthday';

class _EditDialogState extends State<EditDialog> {
  // Formウィジェット内の各フォームを識別するためのキーを設定
  final _formKey = GlobalKey<FormState>();
  // SharedPreferencesのインスタンスを取得
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  // 編集するテキスト
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final birthdayController = TextEditingController();
  // 保存する処理
  Future<void> _saveData() async {
    final prefs = await _prefs;
    await prefs.setString(nameKey, nameController.text);
    await prefs.setString(ageKey, ageController.text);
    await prefs.setString(birthdayKey, birthdayController.text);
  }

  // バリデーション
  String? validateText(String? value) {
    if (value == null || value.isEmpty) {
      return '何か文字を入力してください';
    }
    return null;
  }

  String? validateNumber(String? value) {
    if (value == null || value.isEmpty) {
      return '何か文字を入力してください';
    }
    if (int.tryParse(value) == null) {
      return '数値を入力してください';
    }
    return null;
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    birthdayController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                '登録',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              const SizedBox(height: 12),
              _EditTextFormField(
                label: '名前',
                controller: nameController,
                validator: validateText,
              ),
              _EditTextFormField(
                label: '年齢',
                controller: ageController,
                validator: validateNumber,
              ),
              _EditTextFormField(
                label: '誕生日',
                controller: birthdayController,
                validator: validateText,
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () async {
                      // バリデーションチェック
                      if (_formKey.currentState!.validate()) {
                        await _saveData();
                        // 保存処理成功した後入力情報を渡す
                        await widget.onSave(
                          nameController.text,
                          ageController.text,
                          birthdayController.text,
                        );
                        // 非同期処理の完了後ダイアログを閉じる
                        if (mounted) {
                          Navigator.pop(context);
                        }
                      }
                    },
                    child: const Text(
                      '保存',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
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
    required this.label,
  });

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: label,
        labelStyle: const TextStyle(fontSize: 20),
      ),
      style: const TextStyle(
        fontSize: 22,
      ),
      validator: validator,
    );
  }
}
