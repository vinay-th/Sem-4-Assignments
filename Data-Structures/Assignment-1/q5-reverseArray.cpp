// Write a CPP program that will display an array in reverse order.
#include <iostream>
using namespace std;
int main() {
  int arr[7] = {1, 2, 3, 4, 5, 6, 7};
  int size = sizeof(arr) / sizeof(int);

  // this is a simple reverse loop for arr
  // size - 1 because we use 0-n indexing
  for (int i = size - 1; i >= 0; i--) {
    cout << "Arr[" << i << "]: " << arr[i] << endl;
  }

  cout << endl;
  return 0;
}