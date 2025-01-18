// Write a CPP program to create two dimensional array, pass that array to a
// user defined function and print it

// create a user defined func for printing
#include <iostream>
using namespace std;

// i prefer to pass size of the array,
// you can statically put 3

// put two empty [][] after var of data type
// this aromatically detects the passed array

void display(int arr[][3], int row, int col) {
  // simple row*col loop to print
  for (int i = 0; i < row; i++) {
    for (int j = 0; j < col; j++) {
      cout << arr[i][j] << " ";
    }
    cout << endl;
  }
}

int main() {
  int arr[3][3] = {{1, 2, 3}, {1, 2, 3}, {1, 2, 3}};

  display(arr, 3, 3);

  cout << "\n";
  return 0;
}