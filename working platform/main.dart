void main() {
  // Create the map with the given key-value pairs
  Map<String, dynamic> car = {
    'brand': 'Toyota',
    'color': 'Red',
    'isSedan': true,
  };

  // Check if the car is a sedan and red in color
  if (car['isSedan'] == true && car['color'] == 'Red') {
    print('Match');
  } else {
    print('No match');
  }
  Map<String, dynamic> user = {
    'name': 'Alice',
    'isAdmin': true,
    'isActive': true,
  };

  // Check if the user is both an admin and active
  if (user['isAdmin'] == true && user['isActive'] == true) {
    print('Active admin');
  } else {
    print('Not an active admin');
  }
  int number = 5;

  // Print the multiplication table
  for (int i = 1; i <= 10; i++) {
    print('$number x $i = ${number * i}');
  }
  // Define the list of numbers
  List<int> numbers = [3, 9, 1, 6, 4, 2, 8, 5, 7];

  // Initialize the largest element with the first element of the list
  int largest = numbers[0];

  // Iterate through the list to find the largest element
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }

  // Print the largest element
  print('Largest element: $largest');
}
