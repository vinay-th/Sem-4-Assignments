// Write a CPP program using switch case as below:
// 1. Create a double linked list
// 2. Delete a node from the begining
// 3. Delete a node from the end
// 4. Delete a node in the middle
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

    cout << "Enter the data of start node: ";
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

    cout << "Enter further data(to stop enter -1): ";
    cin >> data;

    if (data == -1)
      break;

    Node *newNode = new Node;
    newNode->data = data;
    newNode->prev = ptr;
    newNode->next = NULL;

    ptr->next = newNode;
    ptr = ptr->next;
  }
  rear = ptr;
}

void deleteAtStart() {
  Node *ptr = start;

  start->next->prev = NULL;

  start = start->next;
  delete ptr;
}

void deleteAtEnd() {
  Node *ptr = rear;

  rear = rear->prev;
  rear->next = NULL;

  delete ptr;
}

void deleteInMiddle(int pos) {
  Node *ptr = start;

  for (int i = 1; i < pos; i++) {
    ptr = ptr->next;
  }

  ptr->prev->next = ptr->next;
  ptr->next->prev = ptr->prev;

  delete ptr;
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
    cout << "2. Delete a node in the beginning" << endl;
    cout << "3. Delete a node in the ending" << endl;
    cout << "4. Delete a node in the middle" << endl;
    cout << "5. Display double linked list" << endl;
    cout << "Enter your choice: ";
    cin >> choice;

    switch (choice) {
    case 1:
      createDoubleLL();
      break;
    case 2:
      deleteAtStart();
      cout << "Successfully deleted at start";
      break;
    case 3:
      deleteAtEnd();
      cout << "Successfully deleted at end";
      break;
    case 4:
      int pos;
      cout << "Enter the position to delete node: ";
      cin >> pos;
      deleteInMiddle(pos);
      cout << "Successfully deleted the node";
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