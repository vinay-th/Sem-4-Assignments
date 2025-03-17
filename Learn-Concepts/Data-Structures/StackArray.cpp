// Hey so this prog will basically just push and pop from the stack made of array
//  Push in stack means adding a value to the top of the stack Pop means to
// delete the value that is on the top of the stack
#include <iostream>
using namespace std;

// First initialize a long array of any size with name stack
// The top variable is the counter of the elements of stack array
int stack[100], top = -1;
// stackSize var will calculate the size dynamically but you are
// free to statically use stackSize = 100
int stackSize = sizeof(stack) / sizeof(int);

// Push func has an arg which takes in an int value
// We need to put this value in top of the stack
void push(int val) {
  if (top > stackSize - 1) // first check if the stack is not > 99
    cout << "The stack is overflowed";
  else {
    top++; // adding 1 to top means you are adding an element in stack
    stack[top] = val; // initialize that
  }
}

// You need no params for pop as we just need to delete the top element
void pop() {
  if (top <= -1) // check if top is not <= -1
    cout << "The stack is underflowed";
  else {
    stack[top] = 0; // You may or may not want to make the top zero this is optional
    top--; // but decreasing the top by 1 is compulsory
  }
}

void display() {
  if (top >= 0) {
    cout << "The stack elements are: ";
    for (int i; i <= top; i++) { // simple for loop to display array till top
      cout << stack[i] << " ";
    }
  }
}

int main() {
  push(10);
  push(20);
  push(30);
  push(40);

  pop();

  display();

  cout << endl;
  return 0;
}