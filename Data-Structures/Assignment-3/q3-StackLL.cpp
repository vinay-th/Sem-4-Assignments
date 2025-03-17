// 3 Write a C Program to create a stack using a Linkedlist.
#include <iostream>
using namespace std;

// checkout Learn-Concepts/Data-Structures -> StackLL.cpp
class Node {
public:
  int data;
  Node *next;
};

Node *top = NULL;

// simple push func that adds val to top of stack
Node *push(Node *top) {
  int val;

  cout << "Enter the value to put in stack: ";
  cin >> val;

  Node *newNode = new Node();
  newNode->data = val;

  // check is stack is empty
  if (top == NULL) {
    newNode->next = NULL;
    top = newNode;
  } else {
    // if not empty newNode is above top
    // ex: 20 30 40 we need to add 10 to the top
    // 10(newNode)->next = 20(currentTop)
    // next top is 10 :- 10 20 30 40
    newNode->next = top;
    top = newNode;
  }

  return top;
}

void display(Node *top) {
  Node *ptr = top;

  cout << "The current stack is: ";
  // while the last element in the stack
  while (ptr != NULL) {
    cout << ptr->data << " ";
    ptr = ptr->next; // traverse the stack element with ptr
  }
  cout << endl;
}

int main() {
  // i made it static you make it dynamic 😉
  top = push(top);
  top = push(top);
  top = push(top);
  top = push(top);

  display(top);

  cout << "\n";
  return 0;
}