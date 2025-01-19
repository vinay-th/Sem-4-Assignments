// Write a CPP program using switch case as below:
// 1. Create a circular Double linked list
// 2. Insert a node in the beginning
// 3. Insert a node in the end
// 4. Insert a node in the middle
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

void insertAtStart(int data) {
  Node *newNode = new Node;

  newNode->data = data;
  newNode->prev = rear;
  newNode->next = start;

  start->prev = newNode;
  rear->next = newNode;
  start = newNode;
}

void insertAtEnd(int data) {
  Node *newNode = new Node;

  newNode->data = data;
  newNode->prev = rear;
  newNode->next = start;

  start->prev = newNode;
  rear->next = newNode;
  rear = newNode;
}

void insertInMiddle(int data, int pos) {
  Node *ptr = start;
  Node *prePtr;

  for (int i = 1; i < pos; i++) {
    prePtr = ptr;
    ptr = ptr->next;
  }

  Node *newNode = new Node;

  newNode->data = data;

  newNode->prev = prePtr;
  newNode->next = ptr;

  prePtr->next = newNode;
  ptr->prev = newNode;
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
    cout << "2. Insert a node in the beginning" << endl;
    cout << "3. Insert a node in the end" << endl;
    cout << "4. Insert a node in the middle" << endl;
    cout << "5. Display Double circular linked list" << endl;
    cout << "6. Exit" << endl;
    cout << "Enter your choice: ";

    cin >> choice;

    switch (choice) {
    case 1:
      createCircularDoublyLL();
      break;
    case 2:
      insertAtStart(10);
      break;
    case 3:
      insertAtEnd(10);
      break;
    case 4:
      insertInMiddle(10, 3);
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