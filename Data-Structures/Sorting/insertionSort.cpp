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

  for (int i = 1; i < n; i++) {
    int key = arr[i];
    int j = i - 1;

    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }

    arr[j + 1] = key;
  }

  for (int i = 0; i < n; i++) {
    cout << arr[i] << " ";
  }

  cout << "\n";
  return 0;
}