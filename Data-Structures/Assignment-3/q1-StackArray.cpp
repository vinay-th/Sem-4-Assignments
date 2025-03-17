// Write a C Program to create a Stack using an array with 10 elements and find
// the ODD numbers out of it and print it.
#include <iostream>
using namespace std;

// simple init of stack check Lear-Concepts/Data-Structures -> StackArray.cpp
int stack[10], stackSize = 10, top = -1;

// push fun to put a value on top of stack
void push(int val) {
  if (top > stackSize - 1)
    cout << "The stack is overflowed";
  else {
    top++;
    stack[top] = val;
  }
}

// display the whole stack
void display() {
  if (top <= -1)
    cout << "The stack is empty";
  else {
    cout << "The full stack is : ";
    for (int i = 0; i <= top; i++) {
      cout << stack[i] << " ";
    }
    cout << endl;
  }
}

// only display the odd nums of stack
void oddNums() {
  if (top <= -1)
    cout << "The stack is empty";
  else {
    cout << "The Odd nums in stack are : ";
    for (int i = 0; i <= top; i++) {
      if (stack[i] % 2 != 0)
        cout << stack[i] << " ";
    }
    cout << endl;
  }
}

int main() {
  int val;
  for (int i = 0; i < 10; i++) {
    cout << "Enter a value in stack: ";
    cin >> val;
    push(val);
  }

  display();
  oddNums();

  cout << "\n";
  return 0;
}