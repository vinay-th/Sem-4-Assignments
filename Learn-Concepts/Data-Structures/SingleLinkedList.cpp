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

int main() {

  createLinkedList();
  insertAtHead();
  display();

  cout << "\n";
  return 0;
}