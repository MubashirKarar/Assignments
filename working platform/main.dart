void main() {
  List namelist = ['fahema', 'hanne', 'ammaira'];
  print(namelist);
  List dayslist = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];
  print(dayslist.elementAt(0));
  Map studentinfo = {
    'Name': 'Maida',
    'Class': 7,
    'Rollno': 23,
    'Grade': 'C',
    'Persentage': 43
  };
  print(studentinfo);
  List number = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(number.first);
  print(number.last);
  List<int> numbers = [10, 5, 100, 3, 47];

  // Check if the list is not empty
  if (numbers.isEmpty) {
    print('The list is empty.');
    return;
  }

  // Use the reduce method to find the maximum value
  int maxNumber = numbers.reduce((a, b) => a > b ? a : b);

  print('The maximum value is: $maxNumber');
  List<String> originallist = ['apple', 'mango', 'banana'];
  List<String> reversedList = originallist.reversed.toList();
  print('originallist;$originallist');
  print('reversedList:$reversedList');
  filterPositiveNumbers(List<int> numbers) {
    // Use the where() method to filter out negative numbers
    List<int> positiveNumbers = numbers.where((number) => number >= 0).toList();

    // Print the new list containing only positive numbers
    print('Positive numbers: $positiveNumbers');
  }

  // Example list of integers
  List<int> originalList = [10, -5, 7, -3, 12, -8];

  // Call the function with the original list
  filterPositiveNumbers(originalList);
  List<String> usersEligibility = [
    'John',
    'Alice',
    'eligible',
    'Mike',
    'Sarah',
    'Tom'
  ];

  // Remove all values that are not 'eligible'
  usersEligibility.removeWhere((user) => user != 'eligible');

  print('Filtered list: $usersEligibility');
}
