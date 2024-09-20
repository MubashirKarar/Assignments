void main() {
  int temperature = 30;

  if (temperature > 30) {
    print("It's hot outside.");
  } else if (temperature < 20) {
    print("It's cold outside.");
  } else {
    print("The weather is mild.");
  }
  var count = 0;
  do {
    print('Count: $count');
    count++;
  } while (count < 5);
  var fruits = Map<String, int>();
  fruits['apple'] = 1;
  fruits['banana'] = 2;
  fruits['cherry'] = 3;

  print(fruits); // Output: {apple: 1, banana: 2, cherry: 3}
}
