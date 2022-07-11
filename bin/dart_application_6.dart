import 'dart:ffi';

void main() {
  Dog son = Dog(food: 'cats', location: 'home', noise: 'gaf gaf');
  son.makeNoise();
  Cat kitt = Cat(food: 'seed', location: 'home', noise: 'miau miau');
  kitt.sleep();
  kitt.makeNoise();
}

class Animal {
  String food, location, noise;
  Animal({
    required this.food,
    required this.location,
    required this.noise,
  });
  void makeNoise() {
    print(noise);
  }

  void eat() {
    print(food);
  }

  void sleep() {}
}

class Dog extends Animal {
  String? nameOwner;
  Dog(
      {required super.food,
      required super.location,
      required super.noise,
      this.nameOwner});

  @override
  void makeNoise() {
    print('dog says:$noise');
  }

  void eat() {
    print('dog eat:$food');
  }

  void sleep() {
    print('dog is sleeping');
  }
}

class Cat extends Animal {
  int lives = 9;
  Cat({required super.food, required super.location, required super.noise});

  @override
  void makeNoise() {
    print('cat says:$noise');
  }

  void eat() {
    print('cat eat:$food');
  }

  void sleep() {
    print('cat is sleeping');
  }
}

class Horse extends Animal {
  int? age;
  Horse(
      {required super.food,
      required super.location,
      required super.noise,
      this.age});

  @override
  void makeNoise() {
    print('horse says:$noise');
  }

  void eat() {
    print('horse eat:$food');
  }

  void sleep() {
    print('horse is sleeping');
  }
}
