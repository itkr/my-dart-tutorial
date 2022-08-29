class Dog {
    String name = "";
    Dog(String name) {
        this.name = name;
    }
}

class Cat {
    String name;
    Cat({required this.name});
}

abstract class Pet {
    // メンバ
    String name;
    int age;

    // プライベートメンバ
    var _member = '';

    // コンストラクタ (シンタックスシュガー)
    Pet(this.name, this.age);

    // 名前付きコンストラクタ (Initializer Lists)
    Pet.spam():
        this.name = 'a',
        this.age = 1;

    // 通常メソッド
    void walk() {
        print('walk');
    }

    // 静的関数
    static String a() {
        return '';
    }

    // 抽象メソッド
    String voice();
}

mixin JumpSkill {
    void jump() {
        print('jump');
    }
}

mixin SitDownSkill {
    void sitDown() {
        print('sit down');
    }
}

class Pochi extends Pet with JumpSkill, SitDownSkill {
    Pochi(String name, int age): super(name, age);
    @override
    String voice() {
        return 'bow';
    }
}

void main(List<String> arguments) {
    var pochi = Pochi('pochi', 1);
    print(pochi.voice());
    pochi.walk();
    pochi.jump();
    pochi.sitDown();
    print(Pet.a());
}
