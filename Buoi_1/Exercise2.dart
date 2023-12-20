// Exercise 2: Ask the user for a number and determine whether the number is prime or not.
import 'dart:io';
void main(){
  print("Enter the number: ");
  int? number = int.parse(stdin.readLineSync()!);

  if (number > 0){
    if (isPrime(number)){
      print("$number is a prime number");
    }
    else{
      print("$number is not a prime number");
    }
  }
  else{
    print("Number must be greater than zero");
  }
}

bool isPrime(n) {
  if (n < 2){
    return false;
  }

  for (var i = 2; i <= n / i; ++i){
    if (n % i == 0){
      return false;
    }
  }
  return true;
}

