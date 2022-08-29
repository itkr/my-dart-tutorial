class Animal {
    String name = "";
}

class Dog {
    String name = "";
    Dog(String name) {
        this.name = name;
    }
}

class Cat {
    String name = "";
    Cat(this.name);
}

class Tiger {
    String name;
    Tiger({required this.name});
}

class Bird {
    String name;
    Bird(this.name);
    // 名前付きコンストラクタ
    Bird.unknown(): name = "UNKNOWN";
}

void main(List<String> arguments) {
    var cat = Cat('a');
    var bird = Bird.unknown();
    var bird2 = Bird('b');
    print(cat);
    print(bird.name);
    print(bird2.name);
}
