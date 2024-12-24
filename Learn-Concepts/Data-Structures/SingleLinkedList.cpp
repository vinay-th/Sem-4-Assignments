#include <iostream>
using namespace std;
class Node {
public:
  int data;
  Node *next;
};

Node *start = NULL;
Node *rear = NULL;

// This func will create LL according to the user
void createLinkedList() {
  Node *ptr, *newNode;
  int size;
  cout << "Enter the length of Linked list: ";
  cin >> size;
  for (int i = 0; i < size; i++) {
    int val;
    cout << "Enter the value: ";
    cin >> val;
    newNode = new Node;
    newNode->data = val;
    newNode->next = NULL;
    if (start == NULL) {
      start = newNode;
      ptr = start;
    } else {
      ptr->next = newNode;
      ptr = newNode;
    }
  }
}

// This function displays all the nodes present in LL
void display() {
  if (start == NULL) {
    cout << "The list is empty. Cannot insert after a value." << endl;
    return;
  }

  Node *node = start;
  while (node != NULL) {
    cout << node->data << " ";
    node = node->next;
  }
}

// This function will insert a node at the start and set that node as start
void insertAtHead() {
  int val;
  Node *newNode = new Node;

  cout << "Enter the value to insert at the head: ";
  cin >> val;

  newNode->data = val;
  newNode->next = start;

  start = newNode;
}

// This func will insert a new node according to the position defined by user
void insertInBtwByPosition() {
  int pos, val;
  Node *newNode = new Node;
  Node *ptr = start, *prePtr = start;

  cout << "Enter the index of node to insert the node next to it: ";
  cin >> pos;

  for (int i = 0; i < pos; i++) {
    prePtr = ptr;
    ptr = ptr->next;
  }

  cout << "Enter the value to insert after " << pos << "th node: ";
  cin >> val;

  newNode->data = val;
  prePtr->next = newNode;
  newNode->next = ptr;

  cout << "Now the data at " << pos + 1 << "th node is: " << newNode->data
       << endl;
}

// This func inserts a node after an existing value given by user
void insertInAfterVal() {
  if (start == NULL) {
    cout << "The list is empty. Cannot insert after a value." << endl;
    return;
  }

  int val, data;

  Node *newNode = new Node;
  Node *ptr = start;
  Node *prePtr = start;

  cout << "Enter the value of the node to insert a node after: ";
  cin >> val;

  while (ptr->data != val) {
    prePtr = ptr;
    ptr = ptr->next;
  }

  cout << "Enter the value of the new node: ";
  cin >> data;

  newNode->data = data;
  newNode->next = ptr->next;

  ptr->next = newNode;
}

int main() {

  // createLinkedList();
  // insertAtHead();
  // insertInBtwByPosition();
  insertInAfterVal();
  display();

  cout << "\n";
  return 0;
}