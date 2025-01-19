// Write a CPP program using switch case as below:
// 1. Create a single linked list (Sorted Linked List)
// 2. Display single linked list
// 3. Remove the duplicate value (if any)
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
  Node *ptr;
  if (start == NULL) {
    Node *newNode = new Node;
    cout << "Enter the data at start: ";
    cin >> newNode->data;
    newNode->next = NULL;

    start = newNode;
    rear = start;

    ptr = start;
  } else {
    char input;
    cout << "There is a Linked List already present do you want to "
            "continue?(Y/n) ";
    cin >> input;

    if (input == 'n' || input == 'N')
      return;

    ptr = rear;
  }

  while (true) {
    Node *newNode = new Node;
    int data;
    cout << "Enter the data for next node(to exit enter -1): ";
    cin >> data;

    if (data == -1)
      break;

    newNode->data = data;
    newNode->next = NULL;

    ptr->next = newNode;
    ptr = ptr->next;
  }
  rear = ptr;
}

void print() {
  Node *ptr = start;

  while (ptr != NULL) {
    cout << ptr->data << endl;
    ptr = ptr->next;
  }
}

void removeDuplicate() {
  Node *ptr, *prePtr, *postPtr;

  if (start == NULL) {
    cout << "Create a Linked List first." << endl;
    return;
  }

  ptr = start;

  while (ptr != NULL) {
    prePtr = ptr;
    postPtr = ptr->next;
    while (postPtr != NULL) {
      if (ptr->data == postPtr->data) {
        prePtr->next = postPtr->next;

        delete postPtr;
        postPtr = ptr->next;
      } else {
        prePtr = postPtr;
        postPtr = postPtr->next;
      }
    }
    ptr = ptr->next;
  }
}

int main() {
  int choice;

  while (true) {
    cout << "1. Create a single linked list (Sorted Linked List)" << endl;
    cout << "2. Display single linked list" << endl;
    cout << "3. Remove the duplicate value (if any)" << endl;
    cout << "4. exit" << endl;
    cout << "Enter your choice: ";
    cin >> choice;
    switch (choice) {
    case 1:
      createLinkedList();
      break;
    case 2:
      print();
      break;
    case 3:
      removeDuplicate();
      cout << "Successfully removed duplicate elements" << endl;
      break;
    case 4:
      cout << "\n";
      return 0;
    default:
      break;
    }
  }
}