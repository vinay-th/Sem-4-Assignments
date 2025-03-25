#include <iostream>
using namespace std;
int main() {
  int n;

  cout << "Enter the no. of elements in array: ";
  cin >> n;

  int arr[n];

  for (int i = 0; i < n; i++) {
    cout << "Enter the value for arr[" << i << "]: ";
    cin >> arr[i];
  }

  // outer loop for all elements
  for (int i = 0; i < n; i++) {
    // inner loop for selection sorting each element ahead
    for (int j = i + 1; j < n; j++) {
      if (arr[i] > arr[j]) {
        swap(arr[i], arr[j]);
      }
    }
  }

  for (int i = 0; i < n; i++) {
    cout << arr[i] << " ";
  }

  cout << "\n";
  return 0;
}