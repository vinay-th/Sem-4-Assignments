// Wrjte a CPP program to create a Matrix and print lower Triangular

// output:
// 1
// 1 2
// 1 2 3
// 1 2 3 4
// 1 2 3 4 5
#include <iostream>
using namespace std;
int main() {
  int mat[5][5] = {{1, 0, 0, 0, 0},
                   {1, 2, 0, 0, 0},
                   {1, 2, 3, 0, 0},
                   {1, 2, 3, 4, 0},
                   {1, 2, 3, 4, 5}};

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      if (i - j >= 0) {
        cout << mat[i][j] << " ";
      } else {
        cout << "  ";
      }
    }
    cout << "\n";
  }

  cout << "\n";
  return 0;
}