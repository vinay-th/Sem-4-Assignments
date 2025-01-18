// Write a CPP program to create a matrix and check whether that matrix is
// Sparse matrix or not

// Sparse matrix is a matrix that has 0 as element in more than half of the
// matrix
#include <iostream>
using namespace std;
int main() {
  // a counter that will count the zeros
  int counter = 0;

  // simple static initialization of an matrix
  int mat[5][4] = {
      {0, 2, 0, 0}, {1, 0, 0, 3}, {0, 0, 0, 0}, {0, 3, 3, 0}, {2, 0, 0, 6}};

  // a row*col loop for matrix
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 4; j++) {
      if (mat[i][j] == 0)
        counter++;
    }
  }

  // if counter is bigger than half of total elements in mat it is Sparse
  if (counter > (5 * 4) / 2) {
    cout << "The matrix is a sparse matrix";
  } else {
    cout << "The matrix is not a sparse matrix";
  }

  cout << "\n";
  return 0;
}