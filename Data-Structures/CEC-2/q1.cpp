// Write a CPP program to perform following operations:
// ◦ insert a node at beginning
// ◦ delete middle node
#include <iostream>
using namespace std;

class Node {
public:
  int data;
  Node *next;
};

Node *start = NULL;
Node *rear = NULL;

void createLinkedList() {
  Node *newNode;
  Node *ptr = start;
  int val;

  if (start == NULL) {
    ptr = new Node;

    cout << "Enter the data: ";
    cin >> ptr->data;
    ptr->next = NULL;

    start = ptr;
  }

  while (true) {
    newNode = new Node;

    cout << "Enter the data(to exit enter -1): ";
    cin >> val;
    if (val == -1) {
      rear = ptr;
      return;
    }

    newNode->data = val;
    newNode->next = NULL;
    ptr->next = newNode;

    ptr = ptr->next;
  }
}

void printLinkedList() {
  Node *ptr = start;
  while (ptr != NULL) {
    cout << ptr->data << endl;
    ptr = ptr->next;
  }
}

void insertNodeAtBeginning() {
  Node *newNode = new Node;
  int val;

  cout << "Enter a value to add at beginning: ";
  cin >> val;

  newNode->data = val;
  newNode->next = start;

  start = newNode;
}

void deleteInMiddle() {
  Node *ptr = start;
  Node *prePtr = ptr;
  int pos;

  cout << "Enter the postion to delete: ";
  cin >> pos;

  // as the user is not positioning by 0 index it's by 1-n index
  for (int i = 1; i < pos; i++) {
    prePtr = ptr;
    ptr = ptr->next;
  }

  prePtr->next = ptr->next;

  free(ptr);
}

int main() {
  int n;

  createLinkedList();
  printLinkedList();
  //   insertNodeAtBeginning();
  deleteInMiddle();
  printLinkedList();

  return 0;
}