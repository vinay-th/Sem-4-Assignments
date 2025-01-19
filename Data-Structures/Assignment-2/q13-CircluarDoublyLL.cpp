// Write a CPP program using switch case as below:
// 1. Create a circular Double linked list
// 2. Delete a node in the beginning
// 3. Delete a node in the end
// 4. Delete a node from the middle
// 5. Display Double circular linked list

#include <iostream>
using namespace std;

class Node {
public:
  int data;
  Node *next;
  Node *prev;
};

Node *start = NULL;
Node *rear = NULL;

void createCircularDoublyLL() {
  if (start == NULL) {
    Node *newNode = new Node;
    cout << "Enter the data for first node: ";
    cin >> newNode->data;

    newNode->next = newNode;
    newNode->prev = newNode;
    start = newNode;
    rear = newNode;
  }

  while (true) {
    int data;
    cout << "Enter further data(to stop enter -1): ";
    cin >> data;

    if (data == -1)
      break;

    Node *newNode = new Node;

    newNode->data = data;
    newNode->prev = rear;
    newNode->next = start;

    rear->next = newNode;
    rear = newNode;
    start->prev = rear;
  }
}

void deleteAtStart() {
  Node *ptr = start;

  rear->next = start->next;
  start->next->prev = rear;

  start = start->next;

  delete ptr;
}

void deleteAtEnd() {
  Node *ptr = rear;

  start->prev = rear->prev;
  rear->prev->next = start;

  rear = rear->prev;

  delete ptr;
}

void deleteInMiddle(int pos) {
  Node *ptr = start;
  Node *prePtr;

  for (int i = 1; i < pos; i++) {
    prePtr = ptr;
    ptr = ptr->next;
  }
  prePtr->next = ptr->next;
  ptr->next->prev = prePtr;

  delete ptr;
}

void display() {
  Node *ptr = start;

  do {
    cout << ptr->data << endl;
    ptr = ptr->next;
  } while (ptr != start);
}

int main() {
  int choice;

  while (true) {
    cout << "\n1. Create a circular Double linked list" << endl;
    cout << "2. Delete a node in the beginning" << endl;
    cout << "3. Delete a node in the end" << endl;
    cout << "4. Delete a node from the middle" << endl;
    cout << "5. Display Double circular linked list" << endl;
    cout << "6. Exit" << endl;
    cout << "Enter your choice: ";

    cin >> choice;

    switch (choice) {
    case 1:
      createCircularDoublyLL();
      break;
    case 2:
      deleteAtStart();
      break;
    case 3:
      deleteAtEnd();
      break;
    case 4:
      deleteInMiddle(3);
      break;
    case 5:
      display();
      break;
    case 6:
      cout << "\n";
      return 0;
    default:
      break;
    }
  }
}