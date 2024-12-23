#include <iostream>
using namespace std;

int main() {
  int count = 0;
  int arr[5][4] = {
      {0, 2, 0, 0}, {1, 0, 0, 3}, {0, 0, 0, 0}, {0, 3, 3, 0}, {2, 0, 0, 6}};

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 4; j++) {
      if (arr[i][j] == 0)
        count++;
    }
  }

  if (count >= (5 * 4) / 2) {
    int nonZeroCount = (5 * 4) - count;
    int mat[3][nonZeroCount];
    int k = 0;

    cout << "Your matrix is Sparse" << endl;

    for (int i = 0; i < 5; i++) {
      for (int j = 0; j < 4; j++) {
        if (arr[i][j] != 0) {
          mat[0][k] = i;         // Row index
          mat[1][k] = j;         // Column index
          mat[2][k] = arr[i][j]; // Value
          k++;
        }
      }
    }

    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < nonZeroCount; j++) {
        cout << mat[i][j] << " ";
      }
      cout << endl;
    }
  } else {
    cout << "Your matrix is not Sparse" << endl;
  }

  return 0;
}
