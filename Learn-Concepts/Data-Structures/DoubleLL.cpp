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
    } else {
      rear->next = newNode;
      newNode->prev = rear;
    }
    rear = newNode;
  }
}

void printLinkedList() {
  Node *ptr = start;
  while (ptr->next != NULL) {
    cout << ptr->data << endl;
    ptr = ptr->next;
  }
  cout << ptr->data << endl;
}

void insertAtStart(int data) {
  Node *newNode = new Node;

  newNode->data = data;
  newNode->next = start;
  newNode->prev = NULL;

  start = newNode;
}

void insertAtEnd(int data) {
  Node *newNode = new Node;

  newNode->data = data;
  newNode->next = NULL;
  newNode->prev = rear;
  rear->next = newNode;

  rear = newNode;
}

void insertInBtw(int data, int pos) {
  Node *ptr = start;
  Node *newNode = new Node;

  for (int i = 1; i < pos; i++) {
    ptr = ptr->next;
  }

  newNode->data = data;
  newNode->next = ptr->next;
  newNode->prev = ptr;

  ptr->next = newNode;

  // for the node after newNode
  ptr = newNode->next;
  ptr->prev = newNode;
}

void deleteAtStart() {
  Node *ptr = start;

  start = start->next;
  start->prev = NULL;

  free(ptr);
}

void deleteAtEnd() {
  Node *ptr = rear;

  rear = rear->prev;
  rear->next = NULL;

  free(ptr);
}

void deleteInBtw(int pos) {
  Node *ptr = start;
  Node *postPtr = start;

  for (int i = 1; i < pos; i++) {
    ptr = ptr->next;
  }

  postPtr = ptr->next;
  postPtr = postPtr->next;

  ptr->next = postPtr;
  postPtr->prev = ptr;
}

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
  //   insertAtStart(10);
  //   insertAtEnd(10);
  //   insertInBtw(10, 3);
  //   deleteAtStart();
  //   deleteAtEnd();
  // deleteInBtw(3);
  printLinkedList();
  //   reverseLL();

  cout << "\n";
  return 0;
}