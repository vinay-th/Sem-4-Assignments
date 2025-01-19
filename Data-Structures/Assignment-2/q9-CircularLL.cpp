// Write a CPP program using switch case as below:
// 1. Create a circular single linked list
// 2. Delete a node in the beginning
// 3. Delete a node in the end
// 4. Delete a node from the middle
// 5. Display single circular linked list
#include <iostream>
using namespace std;
class Node {
public:
  int data;
  Node *next;
};

Node *start = NULL;
Node *rear = NULL;

void createLL() {
  if (start == NULL) {
    Node *newNode = new Node;
    cout << "Enter the data on first LL: ";
    cin >> newNode->data;

    newNode->next = newNode;
    start = newNode;
    rear = newNode;
  }
  while (true) {
    int data;
    cout << "Enter the further data(to stop enter -1): ";
    cin >> data;

    if (data == -1)
      break;

    Node *newNode = new Node;

    newNode->data = data;
    newNode->next = start;

    rear->next = newNode;
    rear = newNode;
  }
}

void deleteAtStart() {
  Node *ptr = start;

  rear->next = start->next;
  start = start->next;

  delete ptr;
}

void deleteAtEnd() {
  Node *ptr = start;
  Node *prePtr;

  while (ptr != rear) {
    prePtr = ptr;
    ptr = ptr->next;
  }

  prePtr->next = start;
  rear = prePtr;

  delete ptr;
}

void deleteInBetween(int pos) {
  Node *ptr = start;
  Node *prePtr;

  for (int i = 1; i < pos; i++) {
    prePtr = ptr;
    ptr = ptr->next;
  }

  prePtr->next = ptr->next;

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
    cout << "\n1. Create a circular single linked list" << endl;
    cout << "2. Delete a node in the beginning" << endl;
    cout << "3. Delete a node in the end" << endl;
    cout << "4. Delete a node in the middle" << endl;
    cout << "5. Display circular linked list" << endl;
    cout << "6. Exit" << endl;
    cout << "Enter your choice: ";
    cin >> choice;
    cout << endl;

    switch (choice) {
    case 1:
      createLL();
      break;
    case 2:
      deleteAtStart();
      break;
    case 3:
      deleteAtEnd();
      break;
    case 4:
      int pos;
      cout << "Enter the value of position: ";
      cin >> pos;
      deleteInBetween(pos);
      break;
    case 5:
      display();
      break;
    case 6:
      cout << "Exiting program...\n";
      return 0;
    default:
      break;
    }
  }
}