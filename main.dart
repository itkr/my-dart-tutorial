import 'dart:core';

void calc() {
  print('\n---- 四則演算');
  print(1 + 2 - 3 * 4 / 5 % 6);
}

void types() {
  // 型推論
  print('\n---- 型推論');
  var a = 1;
  print(a);
  a = 2;
  print('a = $a');

  // 型指定
  print('\n---- 基本型');
  int b = 10;
  double c = 12.3;
  String d = 'abc';
  bool e = true;
  print('$b, $c, $d, $e');

  // コレクション
  // List
  print('\n---- List');
  List f = [1, 2, 3];
  f.add(4);
  f.add(4);
  print(f);

  // Set
  print('\n---- Set');
  Set g = {'a', 'b', 'c'};
  g.add('d');
  g.add('d');
  print(g);

  // Map
  print('\n---- Map');
  Map h = {
    'first': 'one',
    'second': 'two',
    'third': 'three',
  };
  h.addAll({'fourth': 'four'});
  print(h);
  print(h.length);
  print(h['fourth']);
  print(h['ignore']);

  // ルーン文字 -> 絵文字
  print('\n---- Runes');
  Runes i = new Runes('\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(i));

  // シンボル
  print('\n---- Symbol');
  print(#spam);

  // dynamic型
  print('\n---- dynamic');
  dynamic j = 10;
  j = 'a';
  print(j);

  print('\n---- perse');
  print(int.parse('42').runtimeType);
  print(double.parse('42.0').runtimeType);
  print(1.1.toString().runtimeType);
}

void constants() {
  print('\n---- 定数');
  final List m = [1, 2];
  m.add(3);
  print(m);

  const List m2 = [1, 2];
  try {
    m2.add(3);
    print(m2);
  } on Error catch(e) {
    print(e);
    // rethrow;
  }
}

void functions() {
  print('\n---- 関数');
  int testInt(int x, int y) {
    return x + y;
  }
  print(testInt(1, 2));

  print('\n---- 名前付き引数');
  void namedArgs({String a = 'aa', String b = 'bb'}) {
    print('$a, $b');
  }
  namedArgs(a: 'x', b: 'x');

  print('\n---- デフォルト引数');
  void defaultArgs([String? name]) {
    name = name ?? 'World';
    print('Hello $name.');
  }
  defaultArgs();
  defaultArgs('Alice');
}

void exceptions() {
  print('\n---- Exceptions');
  try {
    throw Exception('例外');
  } on Exception catch(e, stacktrace) {  // 第2引数省略化
    print(e);
    print(stacktrace);
    // rethrow;  // pythonでexception内で無名raiseみたいなこと
  } finally {
    print('finally');
  }
}

void main(List<String> args) {
  print('hello');
  calc();
  types();
  constants();
  functions();
  exceptions();
}
