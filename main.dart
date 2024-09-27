void main() {
  // Q1
  List<String> names = ["Alice", "Bob", "Charlie"];
  print("Names: $names");

  // Q2
  List<String> days = [];
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");
  days.add("Sunday");
  print("Days: $days");

  // Q3
  List<String> daysList = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday"
  ];
  while (daysList.isNotEmpty) {
    print("Removed: ${daysList.removeLast()}");
  }

  // Q4
  List<int> numbers = [3, 5, 1, 9, 2];
  int smallest = numbers.reduce((a, b) => a < b ? a : b);
  int greatest = numbers.reduce((a, b) => a > b ? a : b);
  print("Smallest: $smallest, Greatest: $greatest");

  // Q5
  Map<String, String> phoneBook = {
    'John': '1234',
    'Jane': '5678',
    'Paul': '91011'
  };
  var keysWithLength4 = phoneBook.keys.where((key) => key.length == 4);
  print("Keys with length 4: $keysWithLength4");

  // Q6
  Map<String, Map<String, String>> world = {
    'USA': {
      'capitalCity': 'Washington, D.C.',
      'currency': 'USD',
      'language': 'English'
    },
    'France': {
      'capitalCity': 'Paris',
      'currency': 'Euro',
      'language': 'French'
    },
  };
  String countryKey = 'USA';
  print(
      "Capital: ${world[countryKey]!['capitalCity']}, Currency: ${world[countryKey]!['currency']}");

  // Q7
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  if (expenses.containsKey("fri")) {
    expenses["fri"] = 5000.0;
  } else {
    expenses['fri'] = 5000.0;
  }
  print("Expenses: $expenses");

  // Q8
List<Map<String, bool>> usersEligibility = [
    {'name':  'eligible': true},
    {'name':  'eligible': false},
    {'name':  'eligible': true},
    {'name':  'eligible': true},
    {'name':  'eligible': false},
  ];
  usersEligibility.removeWhere((user) => !user['eligible']!);
  print("Eligible users: $usersEligibility");
  // Q9
  List<int> intList = [5, 2, 8, 1, 9];
  int maxValue = intList.reduce((a, b) => a > b ? a : b);
  print("Maximum value: $maxValue");

  // Q10
  List<String> stringList = ["apple", "banana", "apple", "orange"];
  List<String> uniqueList = stringList.toSet().toList();
  print("Unique list: $uniqueList");

  // Q11
  List<String> originalList = ["A", "B", "C", "D"];
  int n = 3;
  List<String> firstNElements = originalList.take(n).toList();
  print("First $n elements: $firstNElements");

  // Q12
  List<String> stringsToReverse = ["one", "two", "three"];
  List<String> reversedList = List.from(stringsToReverse.reversed);
  print("Reversed list: $reversedList");

  // Q13
  List<int> uniqueIntList = [1, 2, 2, 3, 4, 4, 5];
  List<int> uniqueListResult = uniqueIntList.toSet().toList();
  print("Unique integers: $uniqueListResult");

  // Q14
  int count = 10;
  while (count > 0) {
    print(count);
    count--;
  }

  // Q15
  List<int> numbersToFilter = [-10, 0, 5, 2, -3, 4];
  List<int> positiveNumbers =
      numbersToFilter.where((number) => number > 0).toList();
  print("Positive numbers: $positiveNumbers");

  // Q16
  List<int> oddEvenFilter = [1, 2, 3, 4, 5, 6];
  List<int> evenNumbers =
      oddEvenFilter.where((number) => number % 2 == 0).toList();
  print("Even numbers: $evenNumbers");

  // Q17
  List<int> squaresList = [1, 2, 3, 4];
  List<int> squaredValues = squaresList.map((num) => num * num).toList();
  print("Squared values: $squaredValues");

  // Q18
  int oddSum = 0;
  int number = 1;
  do {
    if (number % 2 != 0) {
      oddSum += number;
    }
    number++;
  } while (number <= 50);
  print("Sum of odd numbers from 1 to 50: $oddSum");

  // Q19
  Map<String, dynamic> product = {
    'name': 'Widget',
    'price': 10.0,
    'quantity': 5
  };
  if (product['quantity'] > 0) {
    print("In stock");
  } else {
    print("Out of stock");
  }

  // Q20
  Map<String, dynamic> car = {
    'brand': 'Toyota',
    'color': 'Red',
    'isSedan': true
  };
  if (car['isSedan'] && car['color'] == 'Red') {
    print("Match");
  } else {
    print("No match");
  }

  // Q21
  int numberToCountDigits = 12345;
  int digitCount = 0;
  while (numberToCountDigits > 0) {
    numberToCountDigits ~/= 10;
    digitCount++;
  }
  print("Number of digits: $digitCount");

  // Q22
  Map<String, int> shoppingCart = {'Apple': 3, 'Banana': 2};
  if (shoppingCart.containsKey('Apple')) {
    print("Product found");
  } else {
    print("Product not found");
  }
}
