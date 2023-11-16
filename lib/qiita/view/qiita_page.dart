import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/qiita/model/qiita_item.dart';
import 'package:flutter_tutorial/qiita/view_model/qiita_view_model.dart';

class QiitaPage extends ConsumerWidget {
  const QiitaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(qiitaViewModelProvider);

    // イベントハンドラの中で取得
    void fetchItems(String tag) {
      ref.read(qiitaViewModelProvider.notifier).fetchQiitaItems(tag);
    }

    return Scaffold(
      body: WillPopScope(
        onWillPop: state.isReadyData
            ? () {
                ref.read(qiitaViewModelProvider.notifier).onBackHome();
                return Future.value(false);
              }
            : null,
        child: Stack(
          children: [
            Center(
              child: state.isReadyData
                  ? _QiitaList(state.qiitaItems)
                  : _SearchButtons(
                      onTapFlutter: () => fetchItems('flutter'),
                      onTapAndroid: () => fetchItems('android'),
                      onTapiOS: () => fetchItems('iOS'),
                    ),
            ),
            Visibility(
              visible: state.isLoading,
              child: const ColoredBox(
                color: Color(0x88000000),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _QiitaList extends StatelessWidget {
  const _QiitaList(this._list);

  final List<QiitaItem> _list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _list.length,
      itemBuilder: (context, index) {
        final item = _list[index];

        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 4,
          ),
          child: Card(
            elevation: 4,
            color: Colors.white,
            surfaceTintColor: Colors.white,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.network(
                    item.user?.profileImageUrl ?? '',
                    height: 64,
                  ),
                  const SizedBox(width: 16),
                  Flexible(
                    child: Text(
                      item.title ?? '',
                      maxLines: 3,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _SearchButtons extends StatelessWidget {
  const _SearchButtons({
    this.onTapFlutter,
    this.onTapAndroid,
    this.onTapiOS,
  });

  final VoidCallback? onTapFlutter;
  final VoidCallback? onTapAndroid;
  final VoidCallback? onTapiOS;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onTapFlutter,
          child: const Text(
            'Flutter',
          ),
        ),
        ElevatedButton(
          onPressed: onTapAndroid,
          child: const Text(
            'android',
          ),
        ),
        ElevatedButton(
          onPressed: onTapiOS,
          child: const Text(
            'iOS',
          ),
        ),
      ],
    );
  }
}
