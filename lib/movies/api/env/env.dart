import 'package:envied/envied.dart';

part 'env.g.dart';

// linterにより「クラスが静的メンバーのみを持つべきではない」という警告を受けたが、以下の理由により無視します。
// 理由：Env.keyという形でどこからでもアクセスでき、Envクラスのインスタンスを作成する必要はないため。

// ignore: avoid_classes_with_only_static_members
@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'TMDB_APIKEY', obfuscate: true)
  static String key = _Env.key;
}
