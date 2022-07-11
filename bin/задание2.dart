void main() {
  // Nikola nik = Nikola('isa');
  // Math a = Math(a: 7, b: 9);
  // a.subtraction(a.a, a.b);
  // Car masserati = Car();
  // masserati.start();
  // masserati.stub();
  // masserati.setColor('red');
  // print(masserati.color);
  // TriangleChecker pop = TriangleChecker(a: 4, b: 1, c: 1);
  // pop.is_triangle();
  MyString std = MyString();
  std.reverse('isa');
  std.ucFirst('isa');
}

class Nikola {
  String name = 'Nikola';
  Nikola(this.name) {
    if (name == 'nikola') {
      name = 'nikola';
      print(name);
    } else {
      name = 'im not $name, i nikola';
      print(name);
    }
  }
}

class Math {
  int a, b;
  Math({
    required this.a,
    required this.b,
  });
  int sum(x, y) {
    print(x + y);
    return x + y;
  }

  int multiplication(x, y) {
    print(x * y);
    return x * y;
  }

  int division(x, y) {
    print(x ~/ y);
    return x ~/ y;
  }

  int subtraction(x, y) {
    print(x - y);
    return x - y;
  }
}

class Car {
  String? color, type;
  int? year;
  void start() {
    print('the cat is running');
  }

  void stub() {
    print('the car is stubbed');
  }

  void setYear(int year) {
    this.year = year;
  }

  void setTyoe(String type) {
    this.type = type;
  }

  void setColor(String color) {
    this.color = color;
  }
}

class TriangleChecker {
  int a, b, c;
  TriangleChecker({
    required this.a,
    required this.b,
    required this.c,
  });
  void is_triangle() {
    if (a > 0 && b > 0 && c > 0) {
      if ((a + b > c && a + c > b && c + b > a)) {
        print('Ура, можно построить треугольник!');
      } else {
        print('Жаль, но из этого треугольник не сделать.');
      }
    } else {
      print('С отрицательными числами ничего не выйдет!');
    }
  }
}

class MyString {
  reverse(String a) {
    String b;
    for (int i = 0; i < a.length; i++) {
      b = a[i];
      a = a.replaceFirst(a[i], a[a.length - i - 1]);
      a = a.replaceFirst(a[a.length - i - 1], b[0]);
    }
    print(a);
  }

  ucFirst(String a) {
    List std = a.split('');
    std[0] = std[0].toString().toUpperCase();
    print(std.join());
  }
}
