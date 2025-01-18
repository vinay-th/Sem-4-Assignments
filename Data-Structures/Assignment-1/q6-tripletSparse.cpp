// Write a CPP program to represent sparse matrix in Triplet Representation.
#include <iostream>
using namespace std;
int main() {
  int count;
  int mat[5][4] = {
      {0, 2, 0, 0}, {1, 0, 0, 3}, {0, 0, 0, 0}, {0, 3, 3, 0}, {2, 0, 0, 6}};

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 4; j++) {
      if (mat[i][j] == 0)
        count++;
    }
  }

  if (count > (5 * 4) / 2) {
    int nonZero = (5 * 4) - count;
    int nonZeroMat[3][nonZero];

    int k = 0;

    for (int i = 0; i < 5; i++) {
      for (int j = 0; j < 4; j++) {
        if (mat[i][j] != 0) {
          nonZeroMat[0][k] = i;
          nonZeroMat[1][k] = j;
          nonZeroMat[2][k] = mat[i][j];
          k++;
        }
      }
    }

    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < nonZero; j++) {
        cout << nonZeroMat[i][j] << " ";
      }
      cout << endl;
    }
  }

  cout << "\n";
  return 0;
}