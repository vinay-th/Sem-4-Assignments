// In this prog we will simply create a stack using Single LL
// We will also make 4 func for this stack
#include <iostream>
using namespace std;

// Normal LL initialization
class Node {
public:
  int data;
  Node *next;
};

// For stack we will use a top Node
Node *top = NULL;

// Push func will push a value to the top of stack we will have top as arg
Node *push(Node *top) {
  Node *newNode = new Node(); // create a newNode
  int val; 

  cout << "Enter the data: ";
  cin >> val; // Take val from user ex: 10

  newNode->data = val; // give val to newNode

  if (top == NULL) { // check is stack is empty
    newNode->next = NULL; // if empty nothing comes to next 
    top = newNode; // 10
  } else {
    newNode->next = top; // if not empty newNode is set above the top (insert at the beginning of the LL)
    top = newNode; // new top is newNode just like start for LL
  }
  return top;
}

// pop func deletes the top value
Node *pop(Node *top) {
  Node *ptr;
  ptr = top;

  if (top == NULL)
    cout << "The stack is underflowed";
  else {
    top = top->next;
    cout << "Deleted value: " << ptr->data << endl;
    free(ptr);
  }

  return top;
}

int peep(Node *top) { return top->data; }

Node *display(Node *top) {
  Node *ptr;
  ptr = top;

  if (top == NULL)
    cout << "Empty stack";
  else {
    cout << "Current stack is: ";
    while (ptr != NULL) {
      cout << ptr->data << " ";
      ptr = ptr->next;
    }
  }

  return top;
}

int main() {
  top = push(top);
  top = push(top);
  top = push(top);
  top = pop(top);

  display(top);

  cout << "\n\n" << peep(top);

  cout << endl;
  return 0;
}