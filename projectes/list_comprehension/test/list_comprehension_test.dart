import 'package:test/test.dart';

void main() {
  group('base', () {
    test('forEach - do each someThing', () {
      var sum = 0;
      [1, 2, 3, 4].forEach((n) {
        sum += n;
      });
      expect(sum, 10);
    });

    test('.. - cascade notation return sequence', () {
      expect([1, 3, 2, 4]..sort(), [1, 2, 3, 4]);
    });
  });

  group('Iterable', () {
    test('where - filters with condition', () {
      final numbers = [1, 2, 3, 4, 5];
      final even_list = numbers.where((n) => n.isEven).toList();

      expect(even_list, [2, 4]);
    });

    test('map - change item with expression', () {
      final numbers = [1, 2, 3, 4, 5];
      final calculated = numbers.map((n) => n * 2);
      expect(calculated, [2, 4, 6, 8, 10]);

      int smallCalculate(int n) {
        if (n.isEven) {
          return (n * 3 + 1);
        } else {
          return (n ~/ 2);
        }
      }

      final another = numbers.map((n) => smallCalculate(n));
      expect(another, [0, 7, 1, 13, 2]);
    });

    test('reduce - reduce item with cluase', () {
      // add item type - for type inference hint
      final total = [1, 2, 3, 4, 5].reduce((sum, int num) => sum + num);
      expect(total, 15);
    });
  });

  group('List', () {
    test('from - returns a copyied list', () {
      final numbers = List<int>.generate(5, (i) => i + 1);
      final copyied = List<int>.from(numbers).hashCode;
      expect(numbers.hashCode, isNot(copyied));
    });

    test('generate - creates a list with function', () {
      // var lottoNumber = Iterable<int>.generate(10).toList();
      var list = List<int>.generate(45, (i) => i + 1);
      expect(list.length, 45);
      expect(list.first, 1);
    });

    test('shuffle - returns a unordered list', () {
      final numbers = List<int>.generate(5, (i) => i + 1);
      final shuffled = List<int>.from(numbers);
      shuffled.shuffle();
      expect(shuffled, unorderedEquals(numbers));
    });

    test('sort - returns sorted list', () {
      final number = [1, 2, 44, 30, 59];
      number.sort();
      expect(number, [1, 2, 30, 44, 59]);
    });

    test('take - get some items from a list', () {
      final number = [1, 2, 3, 4, 5];
      expect(number.take(3), [1, 2, 3]);
    });
  });
}
