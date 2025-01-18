// Write a CPP program to create a single dimensional array, pass that array to
// a user defined function and print it.

// create a user defined func any
#include <iostream>
using namespace std;

// i prefer to pass size of the array,
// you can statically put 3

// put an empty [] after var of data type
// this aromatically detects the passed array
void display(int arr[], int size) {
  // simple loop to print
  for (int i = 0; i < size; i++) {
    cout << "Arr[" << i << "]: " << arr[i] << endl;
  }
}

int main() {
  int arr[3] = {1, 2, 3};
  int size = sizeof(arr) / sizeof(int);

  display(arr, size);

  cout << "\n";
  return 0;
}