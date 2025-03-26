#include <iostream>
using namespace std;

int partition(int arr[], int low, int high) {
  int pivot = arr[high]; // Choose the last element as pivot
  int i = low - 1;       // Index of smaller element

  for (int j = low; j < high; j++) {
    if (arr[j] < pivot) { // If current element is smaller than pivot
      i++;
      swap(arr[i], arr[j]); // Swap elements
    }
  }
  swap(arr[i + 1], arr[high]); // Place pivot in correct position
  return i + 1;
}

void quickSort(int arr[], int low, int high) {
  if (low < high) {
    int pi = partition(arr, low, high); // Partitioning index

    // Recursively sort elements before and after partition
    quickSort(arr, low, pi - 1);
    quickSort(arr, pi + 1, high);
  }
}

// Function to print the array
void printArray(int arr[], int n) {
  for (int i = 0; i < n; i++)
    cout << arr[i] << " ";
  cout << endl;
}

int main() {
  int n;

  cout << "Enter the number of elements: ";
  cin >> n;

  int arr[n];

  cout << "Enter elements: ";
  for (int i = 0; i < n; i++) {
    cin >> arr[i];
  }

  quickSort(arr, 0, n - 1);

  cout << "Sorted array: ";
  printArray(arr, n);

  return 0;
}
