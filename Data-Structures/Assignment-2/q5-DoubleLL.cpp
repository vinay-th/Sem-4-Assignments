// Write a CPP program using switch case as below:
// 1. Create a double linked list
// 2. Insert a node in the ending
// 3. Insert a node in the beginning
// 4. Insert a node in the middle
// 5. Display double linked list

#include <iostream>
using namespace std;

class Node {
public:
  int data;
  Node *prev;
  Node *next;
};

Node *start = NULL;
Node *rear = NULL;

void createDoubleLL() {
  Node *ptr = start;
  if (start == NULL) {
    Node *newNode = new Node;
    cout << "Enter the data for start node: ";
    cin >> newNode->data;

    newNode->prev = NULL;
    newNode->next = NULL;

    start = newNode;
    rear = newNode;

    ptr = rear;
  } else {
    int input;
    cout << "You already have a LL do you want to cont(Y/n)??:  ";
    cin >> input;

    if (input == 'N' || input == 'n') {
      return;
    }

    ptr = rear;
  }
  while (true) {
    int data;
    cout << "Enter further values(to stop enter -1): ";
    cin >> data;

    if (data == -1)
      break;

    Node *newNode = new Node;

    newNode->data = data;
    newNode->prev = ptr;
    newNode->next = NULL;

    ptr->next = newNode;
    ptr = newNode;
  }
  rear = ptr;
}

void insertAtEnd(int data) {
  Node *newNode = new Node;

  newNode->data = data;
  newNode->next = NULL;
  newNode->prev = rear;

  rear->next = newNode;

  rear = newNode;
}

void insertAtStart(int data) {
  Node *newNode = new Node;
  newNode->data = data;
  newNode->prev = NULL;
  newNode->next = start;

  start->prev = newNode;

  start = newNode;
}

void insertInMiddle(int data, int pos) {
  Node *ptr = start;

  for (int i = 1; i < pos; i++) {
    ptr = ptr->next;
  }

  Node *newNode = new Node;

  newNode->data = data;
  newNode->prev = ptr->prev;
  newNode->next = ptr;

  ptr->prev->next = newNode;
  ptr->prev = newNode;
}

void display() {
  Node *ptr = start;
  while (ptr != NULL) {
    cout << ptr->data << endl;
    ptr = ptr->next;
  }
}

int main() {
  int choice;

  while (true) {
    cout << "\n\n1. Create a double linked list" << endl;
    cout << "2. Insert a node in the ending" << endl;
    cout << "3. Insert a node in the beginning" << endl;
    cout << "4. Insert a node in the middle" << endl;
    cout << "5. Display double linked list" << endl;
    cout << "Enter your choice: ";
    cin >> choice;

    switch (choice) {
    case 1:
      createDoubleLL();
      break;
    case 2:
      int val;
      cout << "Enter the data of the node to insert at end: ";
      cin >> val;
      insertAtEnd(val);
      cout << "Successfully created at end";
      break;
    case 3:
      cout << "Enter the data of the node to insert at start: ";
      cin >> val;
      insertAtStart(val);
      cout << "Successfully created at start";
      break;
    case 4:
      int pos;
      cout << "Enter the position to insert node: ";
      cin >> pos;
      cout << "Enter the data of the node to insert at " << pos << ": ";
      cin >> val;
      insertInMiddle(val, pos);
      cout << "Successfully inserted the node";
      break;
    case 5:
      display();
      break;
    case 6:
      cout << "\n";
      return 0;
    default:
      cout << "Enter a valid choice\n";
      break;
    }
  }
}