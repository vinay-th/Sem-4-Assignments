// 7 Write a C Program to create a stack using an array and find the maximum
// value out of it.
#include <iostream>
using namespace std;

int stack[5], stackSize = 5;
int top = -1;

void push(int val) {
  if (top >= stackSize - 1)
    cout << "The stack overflowed";
  else {
    top++;
    stack[top] = val;
  }
}

void display() {
  if (top <= -1)
    cout << "The stack is empty";
  else {
    cout << "The full stack (top to bottom) is : ";
    for (int i = top; i >= 0; i--) {
      cout << stack[i] << " ";
    }
    cout << endl;
  }
}

int findMax() {
  int max = 0;

  for (int i = top; i >= 0; i--) {
    if (max < stack[i])
      max = stack[i];
  }

  return max;
}

int main() {
  push(10);
  push(20);
  push(30);
  push(40);
  push(50);

  display();

  cout << "The maximum number is: " << findMax();

  cout << endl;
  return 0;
}