#include <iostream>
using namespace std;

class Node {
public:
  Node *prev;
  int data;
  Node *next;
};

Node *start = NULL;
Node *rear = NULL;

void createLinkedList() {
  int len;
  Node *newNode;
  Node *ptr;
  Node *prePtr;

  cout << "Enter the length of the Linked List: ";
  cin >> len;

  for (int i = 0; i < len; i++) {
    newNode = new Node;
    cout << "Enter the data for [" << i + 1 << "] node: ";
    cin >> newNode->data;
    newNode->prev = NULL;
    newNode->next = NULL;

    if (start == NULL) {
      start = newNode;
      ptr = start;
      prePtr = ptr;
    } else {
      ptr->next = newNode;
      prePtr = ptr;
      ptr = newNode;
      ptr->prev = prePtr;
    }
  }
  rear = ptr;
}

void printLinkedList() {
  Node *ptr = start;
  while (ptr->next != NULL) {
    cout << ptr->data << endl;
    ptr = ptr->next;
  }
  cout << ptr->data << endl;
}

void insertAtStart() {}

void insertAtEnd() {}

void insertInBtw() {}

void deleteAtStart() {}

void deleteAtEnd() {}

void deleteInBtw() {}

void reverseLL() {
  Node *ptr = rear;
  while (ptr != start) {
    cout << ptr->data << endl;
    ptr = ptr->prev;
  }
  cout << ptr->data << endl;
}

int main() {
  createLinkedList();
  //   printLinkedList();
  reverseLL();

  cout << "\n";
  return 0;
}