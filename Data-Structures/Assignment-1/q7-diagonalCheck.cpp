// Write a CPP program to create a matrix and check whether that matrix is
// diagnol matrix or not.
#include <iostream>
using namespace std;

bool isDiagonal(int mat[][5]) {
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      // Non-diagonal elements must be zero
      if (i != j && mat[i][j] != 0) {
        return false;
      }
    }
  }
  return true;
}

int main() {
  int mat[5][5] = {{1, 0, 0, 0, 0},
                   {0, 2, 0, 0, 0},
                   {0, 0, 3, 0, 0},
                   {0, 0, 0, 4, 0},
                   {0, 0, 0, 0, 5}};

  if (isDiagonal(mat)) {
    cout << "Matrix is diagonal" << endl;
  } else {
    cout << "Matrix is not diagonal" << endl;
  }

  cout << "\n";
  return 0;
}