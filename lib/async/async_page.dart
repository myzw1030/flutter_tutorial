import 'package:flutter/material.dart';
import 'package:flutter_tutorial/async/edit_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AsyncPage extends StatefulWidget {
  const AsyncPage({super.key});

  @override
  State<AsyncPage> createState() => _AsyncPageState();
}

class _AsyncPageState extends State<AsyncPage> {
  // 初期値
  String _name = '未設定';
  String _age = '未設定';
  String _birthday = '未設定';
  // SharedPreferencesのインスタンスを取得
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  // 保存されているデータ
  Future<void> _getSavedData() async {
    final prefs = await _prefs;
    setState(() {
      _name = prefs.getString(nameKey) ?? _name;
      _age = prefs.getString(ageKey) ?? _age;
      _birthday = prefs.getString(birthdayKey) ?? _birthday;
    });
  }

  // 初期表示時に保存されているデータを呼び出す
  @override
  void initState() {
    super.initState();
    _getSavedData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '名前：$_name',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              '年齢：$_age',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              '誕生日：$_birthday',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showDialog<Map<String, String>>(
            context: context,
            builder: (context) {
              // ボタンのみでダイアログを閉じるように
              return WillPopScope(
                child: const EditDialog(),
                onWillPop: () async => false,
              );
            },
          );
          // 編集フィールド(result)が値を持っていたら再描画
          if (result != null) {
            setState(() {
              _name = result['name'] ?? _name;
              _age = result['age'] ?? _age;
              _birthday = result['birthday'] ?? _birthday;
            });
          }
        },
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
            ),
          ],
        ),
      ),
    );
  }
}
