// Write a CPP program using switch case as below:
// 1. Create a single linked list
// 2. Insert a node in the middle
// 3. Insert a node in the beginning
// 4. Insert a node in the end
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
  Node *ptr;
  if (start == NULL) {
    Node *newNode = new Node;

    cout << "Enter data at start: ";
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

    cout << "Enter further values(to stop enter -1): ";
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

void insertInMiddle(int data, int pos) {
  Node *ptr = start;
  Node *prePtr = ptr;
  Node *newNode = new Node;

  for (int i = 1; i < pos; i++) {
    prePtr = ptr;
    ptr = ptr->next;
  }

  newNode->data = data;
  newNode->next = ptr->next;

  prePtr->next = newNode;

  delete ptr;
}

void insertAtStart(int data) {
  Node *newNode = new Node;

  newNode->data = data;
  newNode->next = start;

  start = newNode;
}

void insertAtEnd(int data) {
  Node *newNode = new Node;

  newNode->data = data;
  newNode->next = NULL;

  rear->next = newNode;
  rear = newNode;
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
    cout << "\n1. Create a single linked list" << endl;
    cout << "2. Insert a node in the middle" << endl;
    cout << "3. Insert a node in the beginning" << endl;
    cout << "4. Insert a node in the end" << endl;
    cout << "5. Display single linked list" << endl;
    cout << "6. exit" << endl;
    cout << "Enter your choice: ";
    cin >> choice;

    switch (choice) {
    case 1:
      createLL();
      break;
    case 2:
      int val, pos;
      cout << "Enter the value of new node: ";
      cin >> val;
      cout << "Enter the position of new node: ";
      cin >> pos;
      insertInMiddle(val, pos);
      cout << "Successfully added " << val << " to " << pos << endl;
      break;
    case 3:
      cout << "Enter the value of new node at the start: ";
      cin >> val;
      insertAtStart(val);
      cout << "Successfully added " << val << " at the start of list " << endl;
      break;
    case 4:
      cout << "Enter the value of new node at the end: ";
      cin >> val;
      insertAtEnd(val);
      cout << "Successfully added " << val << " at the end of list " << endl;
      break;
    case 5:
      display();
      break;
    case 6:
      cout << "Exiting the code";
      cout << "\n";
      return 0;
    default:
      cout << "Enter a valid choice";
      break;
    }
  }
}