// 2. Write a CPP program to perform following operations:
// ◦ insert a node at ending
// ◦ delete first node
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
  Node *ptr, *newNode;
  int val;

  if (start == NULL) {
    ptr = new Node;

    cout << "Enter a value: ";
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

void insertNodeAtEnd() {
  Node *newNode = new Node;

  cout << "Enter the data to add at last node: ";
  cin >> newNode->data;

  newNode->next = NULL;

  rear->next = newNode;
  rear = newNode;
}

void deleteFirstNode() {
  Node *ptr = start;

  start = ptr->next;

  free(ptr);
}

void print() {
  Node *ptr = start;

  while (ptr != NULL) {
    cout << ptr->data << endl;
    ptr = ptr->next;
  }
}

int main() {
  createLinkedList();
  insertNodeAtEnd();
  deleteFirstNode();
  print();

  cout << "\n";
  return 0;
}