// Wrjte a CPP program to create a Matrix and print Upper Triangular

// output:
// 1 2 3 4 5
//   2 3 4 5
//     3 4 5
//       4 5
//         5

#include <iostream>
using namespace std;
int main() {
  int mat[5][5] = {{1, 2, 3, 4, 5},
                   {0, 2, 3, 4, 5},
                   {0, 0, 3, 4, 5},
                   {0, 0, 0, 4, 5},
                   {0, 0, 0, 0, 5}};

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      if (j - i >= 0) {
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