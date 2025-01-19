// Write a CPP program using switch case as below:
// 1. Create a single linked list
// 2. Display single linked list
// 3. Delete the 3rd Node from the Linkedlist
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
  Node *ptr = start;
  if (start == NULL) {
    Node *newNode = new Node;
    cout << "Enter the data at start: ";
    cin >> newNode->data;

    newNode->next = NULL;

    start = newNode;
    rear = newNode;
    ptr = newNode;
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
    int data;
    cout << "Enter data for LinkedList(to stop enter -1): ";
    cin >> data;

    if (data == -1)
      return;

    Node *newNode = new Node;

    newNode->data = data;
    newNode->next = NULL;

    ptr->next = newNode;
    ptr = ptr->next;
  }
}
void display() {
  Node *ptr = start;

  while (ptr != NULL) {
    cout << ptr->data << endl;
    ptr = ptr->next;
  }
}
void delete3rdLL() {
  Node *ptr = start;
  Node *prePtr;

  for (int i = 1; i < 3; i++) {
    prePtr = ptr;
    ptr = ptr->next;
  }

  prePtr->next = ptr->next;
  delete ptr;
}
int main() {
  int choice;
  while (true) {
    cout << "\n\n1. Create a single linked list" << endl;
    cout << "2. Display single linked list" << endl;
    cout << "3. Delete the 3rd Node from the Linkedlist " << endl;
    cout << "4. exit" << endl;
    cout << "Enter your choice: ";
    cin >> choice;
    switch (choice) {
    case 1:
      createLinkedList();
      break;
    case 2:
      display();
      break;
    case 3:
      delete3rdLL();
      cout << "Successfully removed 3rd element" << endl;
      break;
    case 4:
      cout << "\n";
      return 0;
    default:
      break;
    }
  }
}