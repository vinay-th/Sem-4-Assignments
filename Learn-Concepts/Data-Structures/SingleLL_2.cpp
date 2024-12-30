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
  int size = 0, data;
  Node *newNode;
  Node *ptr;

  cout << "Enter the length of Linked list: ";
  cin >> size;

  for (int i = 1; i <= size; i++) {
    cout << "Enter the data for node[" << i << "]: ";
    cin >> data;

    newNode = new Node;

    newNode->data = data;
    newNode->next = NULL;

    if (start == NULL) {
      start = newNode;
      ptr = start;
    } else {
      ptr->next = newNode;
      ptr = ptr->next;
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
  cout << ptr->data;
}

void insertNodeAtEnd(int data) {
  Node *newNode = new Node;
  newNode->data = data;
  newNode->next = NULL;

  rear->next = newNode;
  rear = rear->next;
}

void insertNodeInBetween(int pos) {
  int data;
  Node *ptr = start;
  for (int i = 1; i < pos; i++) {
    ptr = ptr->next;
  }
  cout << "Enter the data to add at " << pos << " node: ";
  cin >> data;

  Node *newNode = new Node;
  newNode->data = data;
  newNode->next = ptr->next;

  ptr->next = newNode;
}

void deleteAt(int pos) {
  Node *ptr = start;
  Node *prePtr = ptr;
  for (int i = 1; i < pos; i++) {
    prePtr = ptr;
    ptr = ptr->next;
  }
  prePtr->next = ptr->next;

  delete (ptr);
}

int countLen() {
  Node *ptr = start;
  int count = 0;

  while (ptr->next != NULL) {
    ptr = ptr->next;
    count++;
  }
  return count + 1;
}

void insertAtStart(int data) {
  Node *newNode = new Node;

  newNode->data = data;
  newNode->next = start;

  start = newNode;
}

int main() {
  createLinkedList();
  //   insertNodeAtEnd(50);
  //   insertNodeAtEnd(60);
  //   insertNodeAtEnd(70);
  //   insertNodeInBetween(3);
  //   deleteAt(3);
  //   cout << "The length of linked list is : " << countLen() << endl;
  //   insertAtStart(30);
  printLinkedList();

  cout << "\n";
  return 0;
}