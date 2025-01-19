// Write a CPP program using switch case as below:
// 1. Create a single linked list
// 2. Delete a particular node having value entered by value
// 3. Delete the first node
// 4. Delete the last node
// 5. Display single linked list

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
  Node *ptr = start;
  if (start == NULL) {
    Node *newNode = new Node;

    cout << "Enter the data at start: ";
    cin >> newNode->data;

    newNode->next = NULL;

    start = newNode;
    rear = newNode;

    ptr = rear;
  } else {
    char input;
    cout << "A LinkedList already exits do you want to continue(Y/n): ";
    cin >> input;

    if (input == 'N' || input == 'n') {
      return;
    }

    ptr = rear;
  }

  while (true) {
    int data;

    cout << "Enter further data(to stop enter -1): ";
    cin >> data;

    if (data == -1)
      break;

    Node *newNode = new Node;

    newNode->data = data;
    newNode->next = NULL;

    ptr->next = newNode;
    ptr = ptr->next;
  }
  rear = ptr;
}

void deleteByPos(int pos) {
  Node *ptr = start;
  Node *prePtr;

  for (int i = 1; i < pos; i++) {
    prePtr = ptr;
    ptr = ptr->next;
  }

  prePtr->next = ptr->next;

  delete ptr;
}

void deleteFirst() {
  Node *ptr;
  ptr = start;

  start = start->next;

  delete ptr;
}

void deleteLast() {
  Node *ptr = start;
  Node *prePtr;

  while (ptr->next != NULL) {
    prePtr = ptr;
    ptr = ptr->next;
  }

  prePtr->next = NULL;
  delete ptr;
}

void print() {
  Node *ptr = start;

  while (ptr != NULL) {
    cout << ptr->data << endl;
    ptr = ptr->next;
  }
}

int main() {
  int choice;
  while (true) {
    cout << "\n1. Create a single linked list" << endl;
    cout << "2. Delete a particular node having value entered by value" << endl;
    cout << "3. Delete the first node" << endl;
    cout << "4. Delete the last node" << endl;
    cout << "5. Display single linked list" << endl;
    cout << "6. exit" << endl;
    cout << "Enter the choice: ";
    cin >> choice;

    switch (choice) {
    case 1:
      createLL();
      break;
    case 2:
      int pos;
      cout << "Enter the position of the node to delete it: ";
      cin >> pos;
      deleteByPos(pos);
      break;
    case 3:
      deleteFirst();
      cout << "The first node deleted" << endl;
      break;
    case 4:
      deleteLast();
      cout << "The last node deleted" << endl;
      break;
    case 5:
      print();
      break;
    case 6:
      cout << "Exiting program\n";
      return 0;
    default:
      break;
    }
  }
}