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
  for (int i = 0; i < n - 1; i++) {
    // inner loop for bubble sorting each element ahead
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        swap(arr[j], arr[j + 1]);
      }
    }
  }

  for (int i = 0; i < n; i++) {
    cout << arr[i] << " ";
  }

  return 0;
}